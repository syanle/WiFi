// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.novell.sasl.client;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Map;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.NameCallback;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;
import org.apache.harmony.javax.security.sasl.RealmCallback;
import org.apache.harmony.javax.security.sasl.RealmChoiceCallback;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslException;

// Referenced classes of package com.novell.sasl.client:
//            DigestChallenge, ResponseAuth

public class DigestMD5SaslClient
    implements SaslClient
{

    private static final String DIGEST_METHOD = "AUTHENTICATE";
    private static final int NONCE_BYTE_COUNT = 32;
    private static final int NONCE_HEX_COUNT = 64;
    private static final int STATE_DIGEST_RESPONSE_SENT = 1;
    private static final int STATE_DISPOSED = 4;
    private static final int STATE_INITIAL = 0;
    private static final int STATE_INVALID_SERVER_RESPONSE = 3;
    private static final int STATE_VALID_SERVER_RESPONSE = 2;
    private char m_HA1[];
    private String m_authorizationId;
    private CallbackHandler m_cbh;
    private String m_clientNonce;
    private DigestChallenge m_dc;
    private String m_digestURI;
    private String m_name;
    private Map m_props;
    private String m_protocol;
    private String m_qopValue;
    private String m_realm;
    private String m_serverName;
    private int m_state;

    private DigestMD5SaslClient(String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
    {
        m_authorizationId = "";
        m_protocol = "";
        m_serverName = "";
        m_qopValue = "";
        m_HA1 = null;
        m_clientNonce = "";
        m_realm = "";
        m_name = "";
        m_authorizationId = s;
        m_protocol = s1;
        m_serverName = s2;
        m_props = map;
        m_cbh = callbackhandler;
        m_state = 0;
    }

    private String createDigestResponse(byte abyte0[])
        throws SaslException
    {
        StringBuffer stringbuffer = new StringBuffer(512);
        m_dc = new DigestChallenge(abyte0);
        m_digestURI = (new StringBuilder(String.valueOf(m_protocol))).append("/").append(m_serverName).toString();
        if ((m_dc.getQop() & 1) == 1)
        {
            m_qopValue = "auth";
            abyte0 = new Callback[3];
            Object obj = m_dc.getRealms();
            int i = ((ArrayList) (obj)).size();
            if (i == 0)
            {
                abyte0[0] = new RealmCallback("Realm");
            } else
            if (i == 1)
            {
                abyte0[0] = new RealmCallback("Realm", (String)((ArrayList) (obj)).get(0));
            } else
            {
                abyte0[0] = new RealmChoiceCallback("Realm", (String[])((ArrayList) (obj)).toArray(new String[i]), 0, false);
            }
            abyte0[1] = new PasswordCallback("Password", false);
            if (m_authorizationId == null || m_authorizationId.length() == 0)
            {
                abyte0[2] = new NameCallback("Name");
            } else
            {
                abyte0[2] = new NameCallback("Name", m_authorizationId);
            }
            try
            {
                m_cbh.handle(abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new SaslException("Handler does not support necessary callbacks", abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new SaslException("IO exception in CallbackHandler.", abyte0);
            }
            if (i > 1)
            {
                obj = ((RealmChoiceCallback)abyte0[0]).getSelectedIndexes();
                if (obj.length > 0)
                {
                    m_realm = ((RealmChoiceCallback)abyte0[0]).getChoices()[obj[0]];
                } else
                {
                    m_realm = ((RealmChoiceCallback)abyte0[0]).getChoices()[0];
                }
            } else
            {
                m_realm = ((RealmCallback)abyte0[0]).getText();
            }
            m_clientNonce = getClientNonce();
            m_name = ((NameCallback)abyte0[2]).getName();
            if (m_name == null)
            {
                m_name = ((NameCallback)abyte0[2]).getDefaultName();
            }
            if (m_name == null)
            {
                throw new SaslException("No user name was specified.");
            }
        } else
        {
            throw new SaslException("Client only supports qop of 'auth'");
        }
        m_HA1 = DigestCalcHA1(m_dc.getAlgorithm(), m_name, m_realm, new String(((PasswordCallback)abyte0[1]).getPassword()), m_dc.getNonce(), m_clientNonce);
        abyte0 = DigestCalcResponse(m_HA1, m_dc.getNonce(), "00000001", m_clientNonce, m_qopValue, "AUTHENTICATE", m_digestURI, true);
        stringbuffer.append("username=\"");
        stringbuffer.append(m_authorizationId);
        if (m_realm.length() != 0)
        {
            stringbuffer.append("\",realm=\"");
            stringbuffer.append(m_realm);
        }
        stringbuffer.append("\",cnonce=\"");
        stringbuffer.append(m_clientNonce);
        stringbuffer.append("\",nc=");
        stringbuffer.append("00000001");
        stringbuffer.append(",qop=");
        stringbuffer.append(m_qopValue);
        stringbuffer.append(",digest-uri=\"");
        stringbuffer.append(m_digestURI);
        stringbuffer.append("\",response=");
        stringbuffer.append(abyte0);
        stringbuffer.append(",charset=utf-8,nonce=\"");
        stringbuffer.append(m_dc.getNonce());
        stringbuffer.append("\"");
        return stringbuffer.toString();
    }

    public static SaslClient getClient(String s, String s1, String s2, Map map, CallbackHandler callbackhandler)
    {
        String s3 = (String)map.get("javax.security.sasl.qop");
        String s4 = (String)map.get("javax.security.sasl.strength");
        for (String s5 = (String)map.get("javax.security.sasl.server.authentication"); s3 != null && !"auth".equals(s3) || s5 != null && !"false".equals(s5) || callbackhandler == null;)
        {
            return null;
        }

        return new DigestMD5SaslClient(s, s1, s2, map, callbackhandler);
    }

    private static char getHexChar(byte byte0)
    {
        switch (byte0)
        {
        default:
            return 'Z';

        case 0: // '\0'
            return '0';

        case 1: // '\001'
            return '1';

        case 2: // '\002'
            return '2';

        case 3: // '\003'
            return '3';

        case 4: // '\004'
            return '4';

        case 5: // '\005'
            return '5';

        case 6: // '\006'
            return '6';

        case 7: // '\007'
            return '7';

        case 8: // '\b'
            return '8';

        case 9: // '\t'
            return '9';

        case 10: // '\n'
            return 'a';

        case 11: // '\013'
            return 'b';

        case 12: // '\f'
            return 'c';

        case 13: // '\r'
            return 'd';

        case 14: // '\016'
            return 'e';

        case 15: // '\017'
            return 'f';
        }
    }

    char[] DigestCalcHA1(String s, String s1, String s2, String s3, String s4, String s5)
        throws SaslException
    {
        MessageDigest messagedigest;
        try
        {
            messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s1.getBytes("UTF-8"));
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update(s2.getBytes("UTF-8"));
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update(s3.getBytes("UTF-8"));
            s2 = messagedigest.digest();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new SaslException("No provider found for MD5 hash", s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new SaslException("UTF-8 encoding not supported by platform.", s);
        }
        s1 = s2;
        if ("md5-sess".equals(s))
        {
            messagedigest.update(s2);
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update(s4.getBytes("UTF-8"));
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update(s5.getBytes("UTF-8"));
            s1 = messagedigest.digest();
        }
        return convertToHex(s1);
    }

    char[] DigestCalcResponse(char ac[], String s, String s1, String s2, String s3, String s4, String s5, 
            boolean flag)
        throws SaslException
    {
        MessageDigest messagedigest;
        try
        {
            messagedigest = MessageDigest.getInstance("MD5");
        }
        // Misplaced declaration of an exception variable
        catch (char ac[])
        {
            throw new SaslException("No provider found for MD5 hash", ac);
        }
        // Misplaced declaration of an exception variable
        catch (char ac[])
        {
            throw new SaslException("UTF-8 encoding not supported by platform.", ac);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        messagedigest.update(s4.getBytes("UTF-8"));
        messagedigest.update(":".getBytes("UTF-8"));
        messagedigest.update(s5.getBytes("UTF-8"));
        if ("auth-int".equals(s3))
        {
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update("00000000000000000000000000000000".getBytes("UTF-8"));
        }
        s4 = convertToHex(messagedigest.digest());
        messagedigest.update((new String(ac)).getBytes("UTF-8"));
        messagedigest.update(":".getBytes("UTF-8"));
        messagedigest.update(s.getBytes("UTF-8"));
        messagedigest.update(":".getBytes("UTF-8"));
        if (s3.length() > 0)
        {
            messagedigest.update(s1.getBytes("UTF-8"));
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update(s2.getBytes("UTF-8"));
            messagedigest.update(":".getBytes("UTF-8"));
            messagedigest.update(s3.getBytes("UTF-8"));
            messagedigest.update(":".getBytes("UTF-8"));
        }
        messagedigest.update((new String(s4)).getBytes("UTF-8"));
        ac = messagedigest.digest();
        return convertToHex(ac);
    }

    boolean checkServerResponseAuth(byte abyte0[])
        throws SaslException
    {
        abyte0 = new ResponseAuth(abyte0);
        return (new String(DigestCalcResponse(m_HA1, m_dc.getNonce(), "00000001", m_clientNonce, m_qopValue, "AUTHENTICATE", m_digestURI, false))).equals(abyte0.getResponseValue());
    }

    char[] convertToHex(byte abyte0[])
    {
        char ac[] = new char[32];
        int i = 0;
        do
        {
            if (i >= 16)
            {
                return ac;
            }
            ac[i * 2] = getHexChar((byte)((abyte0[i] & 0xf0) >> 4));
            ac[i * 2 + 1] = getHexChar((byte)(abyte0[i] & 0xf));
            i++;
        } while (true);
    }

    public void dispose()
        throws SaslException
    {
        if (m_state != 4)
        {
            m_state = 4;
        }
    }

    public byte[] evaluateChallenge(byte abyte0[])
        throws SaslException
    {
        switch (m_state)
        {
        default:
            throw new SaslException("Unknown client state.");

        case 0: // '\0'
            if (abyte0.length == 0)
            {
                throw new SaslException("response = byte[0]");
            }
            try
            {
                abyte0 = createDigestResponse(abyte0).getBytes("UTF-8");
                m_state = 1;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new SaslException("UTF-8 encoding not suppported by platform", abyte0);
            }
            return abyte0;

        case 1: // '\001'
            if (checkServerResponseAuth(abyte0))
            {
                m_state = 2;
                return null;
            } else
            {
                m_state = 3;
                throw new SaslException("Could not validate response-auth value from server");
            }

        case 2: // '\002'
        case 3: // '\003'
            throw new SaslException("Authentication sequence is complete");

        case 4: // '\004'
            throw new SaslException("Client has been disposed");
        }
    }

    String getClientNonce()
        throws SaslException
    {
        byte abyte0[] = new byte[32];
        char ac[] = new char[64];
        int i;
        try
        {
            SecureRandom.getInstance("SHA1PRNG").nextBytes(abyte0);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new SaslException("No random number generator available", nosuchalgorithmexception);
        }
        i = 0;
        if (i < 32)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        return new String(ac);
        ac[i * 2] = getHexChar((byte)(abyte0[i] & 0xf));
        ac[i * 2 + 1] = getHexChar((byte)((abyte0[i] & 0xf0) >> 4));
        i++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_22;
        }
    }

    public String getMechanismName()
    {
        return "DIGEST-MD5";
    }

    public Object getNegotiatedProperty(String s)
    {
        if (m_state != 2)
        {
            throw new IllegalStateException("getNegotiatedProperty: authentication exchange not complete.");
        }
        if ("javax.security.sasl.qop".equals(s))
        {
            return "auth";
        } else
        {
            return null;
        }
    }

    public boolean hasInitialResponse()
    {
        return false;
    }

    public boolean isComplete()
    {
        return m_state == 2 || m_state == 3 || m_state == 4;
    }

    public byte[] unwrap(byte abyte0[], int i, int j)
        throws SaslException
    {
        throw new IllegalStateException("unwrap: QOP has neither integrity nor privacy>");
    }

    public byte[] wrap(byte abyte0[], int i, int j)
        throws SaslException
    {
        throw new IllegalStateException("wrap: QOP has neither integrity nor privacy>");
    }
}
