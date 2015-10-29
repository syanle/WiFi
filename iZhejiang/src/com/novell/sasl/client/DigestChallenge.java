// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.novell.sasl.client;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.harmony.javax.security.sasl.SaslException;

// Referenced classes of package com.novell.sasl.client:
//            DirectiveList, ParsedDirective, TokenParser

class DigestChallenge
{

    private static final int CIPHER_3DES = 1;
    private static final int CIPHER_DES = 2;
    private static final int CIPHER_RC4 = 8;
    private static final int CIPHER_RC4_40 = 4;
    private static final int CIPHER_RC4_56 = 16;
    private static final int CIPHER_RECOGNIZED_MASK = 31;
    private static final int CIPHER_UNRECOGNIZED = 32;
    public static final int QOP_AUTH = 1;
    public static final int QOP_AUTH_CONF = 4;
    public static final int QOP_AUTH_INT = 2;
    public static final int QOP_UNRECOGNIZED = 8;
    private String m_algorithm;
    private String m_characterSet;
    private int m_cipherOptions;
    private int m_maxBuf;
    private String m_nonce;
    private int m_qop;
    private ArrayList m_realms;
    private boolean m_staleFlag;

    DigestChallenge(byte abyte0[])
        throws SaslException
    {
        m_realms = new ArrayList(5);
        m_nonce = null;
        m_qop = 0;
        m_staleFlag = false;
        m_maxBuf = -1;
        m_characterSet = null;
        m_algorithm = null;
        m_cipherOptions = 0;
        abyte0 = new DirectiveList(abyte0);
        try
        {
            abyte0.parseDirectives();
            checkSemantics(abyte0);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return;
        }
    }

    void checkSemantics(DirectiveList directivelist)
        throws SaslException
    {
        directivelist = directivelist.getIterator();
_L8:
        if (directivelist.hasNext()) goto _L2; else goto _L1
_L1:
        if (-1 == m_maxBuf)
        {
            m_maxBuf = 0x10000;
        }
        if (m_qop != 0) goto _L4; else goto _L3
_L3:
        m_qop = 1;
_L6:
        return;
_L2:
        ParsedDirective parseddirective = (ParsedDirective)directivelist.next();
        String s = parseddirective.getName();
        if (s.equals("realm"))
        {
            handleRealm(parseddirective);
        } else
        if (s.equals("nonce"))
        {
            handleNonce(parseddirective);
        } else
        if (s.equals("qop"))
        {
            handleQop(parseddirective);
        } else
        if (s.equals("maxbuf"))
        {
            handleMaxbuf(parseddirective);
        } else
        if (s.equals("charset"))
        {
            handleCharset(parseddirective);
        } else
        if (s.equals("algorithm"))
        {
            handleAlgorithm(parseddirective);
        } else
        if (s.equals("cipher"))
        {
            handleCipher(parseddirective);
        } else
        if (s.equals("stale"))
        {
            handleStale(parseddirective);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if ((m_qop & 1) != 1)
        {
            throw new SaslException("Only qop-auth is supported by client");
        }
        if ((m_qop & 4) == 4 && (m_cipherOptions & 0x1f) == 0)
        {
            throw new SaslException("Invalid cipher options");
        }
        if (m_nonce == null)
        {
            throw new SaslException("Missing nonce directive");
        }
        if (m_staleFlag)
        {
            throw new SaslException("Unexpected stale flag");
        }
        if (m_algorithm != null) goto _L6; else goto _L5
_L5:
        throw new SaslException("Missing algorithm directive");
        if (true) goto _L8; else goto _L7
_L7:
    }

    public String getAlgorithm()
    {
        return m_algorithm;
    }

    public String getCharacterSet()
    {
        return m_characterSet;
    }

    public int getCipherOptions()
    {
        return m_cipherOptions;
    }

    public int getMaxBuf()
    {
        return m_maxBuf;
    }

    public String getNonce()
    {
        return m_nonce;
    }

    public int getQop()
    {
        return m_qop;
    }

    public ArrayList getRealms()
    {
        return m_realms;
    }

    public boolean getStaleFlag()
    {
        return m_staleFlag;
    }

    void handleAlgorithm(ParsedDirective parseddirective)
        throws SaslException
    {
        if (m_algorithm != null)
        {
            throw new SaslException("Too many algorithm directives.");
        }
        m_algorithm = parseddirective.getValue();
        if (!"md5-sess".equals(m_algorithm))
        {
            throw new SaslException((new StringBuilder("Invalid algorithm directive value: ")).append(m_algorithm).toString());
        } else
        {
            return;
        }
    }

    void handleCharset(ParsedDirective parseddirective)
        throws SaslException
    {
        if (m_characterSet != null)
        {
            throw new SaslException("Too many charset directives.");
        }
        m_characterSet = parseddirective.getValue();
        if (!m_characterSet.equals("utf-8"))
        {
            throw new SaslException("Invalid character encoding directive");
        } else
        {
            return;
        }
    }

    void handleCipher(ParsedDirective parseddirective)
        throws SaslException
    {
        TokenParser tokenparser;
        if (m_cipherOptions != 0)
        {
            throw new SaslException("Too many cipher directives.");
        }
        tokenparser = new TokenParser(parseddirective.getValue());
        tokenparser.parseToken();
        parseddirective = tokenparser.parseToken();
_L2:
        if (parseddirective == null)
        {
            if (m_cipherOptions == 0)
            {
                m_cipherOptions = 32;
            }
            return;
        }
        if (!"3des".equals(parseddirective))
        {
            break; /* Loop/switch isn't completed */
        }
        m_cipherOptions = m_cipherOptions | 1;
_L3:
        parseddirective = tokenparser.parseToken();
        if (true) goto _L2; else goto _L1
_L1:
        if ("des".equals(parseddirective))
        {
            m_cipherOptions = m_cipherOptions | 2;
        } else
        if ("rc4-40".equals(parseddirective))
        {
            m_cipherOptions = m_cipherOptions | 4;
        } else
        if ("rc4".equals(parseddirective))
        {
            m_cipherOptions = m_cipherOptions | 8;
        } else
        if ("rc4-56".equals(parseddirective))
        {
            m_cipherOptions = m_cipherOptions | 0x10;
        } else
        {
            m_cipherOptions = m_cipherOptions | 0x20;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    void handleMaxbuf(ParsedDirective parseddirective)
        throws SaslException
    {
        if (-1 != m_maxBuf)
        {
            throw new SaslException("Too many maxBuf directives.");
        }
        m_maxBuf = Integer.parseInt(parseddirective.getValue());
        if (m_maxBuf == 0)
        {
            throw new SaslException("Max buf value must be greater than zero.");
        } else
        {
            return;
        }
    }

    void handleNonce(ParsedDirective parseddirective)
        throws SaslException
    {
        if (m_nonce != null)
        {
            throw new SaslException("Too many nonce values.");
        } else
        {
            m_nonce = parseddirective.getValue();
            return;
        }
    }

    void handleQop(ParsedDirective parseddirective)
        throws SaslException
    {
        TokenParser tokenparser;
        if (m_qop != 0)
        {
            throw new SaslException("Too many qop directives.");
        }
        tokenparser = new TokenParser(parseddirective.getValue());
        parseddirective = tokenparser.parseToken();
_L2:
        if (parseddirective == null)
        {
            return;
        }
        if (!parseddirective.equals("auth"))
        {
            break; /* Loop/switch isn't completed */
        }
        m_qop = m_qop | 1;
_L3:
        parseddirective = tokenparser.parseToken();
        if (true) goto _L2; else goto _L1
_L1:
        if (parseddirective.equals("auth-int"))
        {
            m_qop = m_qop | 2;
        } else
        if (parseddirective.equals("auth-conf"))
        {
            m_qop = m_qop | 4;
        } else
        {
            m_qop = m_qop | 8;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    void handleRealm(ParsedDirective parseddirective)
    {
        m_realms.add(parseddirective.getValue());
    }

    void handleStale(ParsedDirective parseddirective)
        throws SaslException
    {
        if (m_staleFlag)
        {
            throw new SaslException("Too many stale directives.");
        }
        if ("true".equals(parseddirective.getValue()))
        {
            m_staleFlag = true;
            return;
        } else
        {
            throw new SaslException((new StringBuilder("Invalid stale directive value: ")).append(parseddirective.getValue()).toString());
        }
    }
}
