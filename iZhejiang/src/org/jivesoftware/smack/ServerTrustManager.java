// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.X509TrustManager;

// Referenced classes of package org.jivesoftware.smack:
//            ConnectionConfiguration

class ServerTrustManager
    implements X509TrustManager
{

    private static Pattern cnPattern = Pattern.compile("(?i)(cn=)([^,]*)");
    private ConnectionConfiguration configuration;
    private String server;
    private KeyStore trustStore;

    public ServerTrustManager(String s, ConnectionConfiguration connectionconfiguration)
    {
        FileInputStream fileinputstream;
        Object obj;
        configuration = connectionconfiguration;
        server = s;
        fileinputstream = null;
        obj = null;
        s = fileinputstream;
        trustStore = KeyStore.getInstance(connectionconfiguration.getTruststoreType());
        s = fileinputstream;
        fileinputstream = new FileInputStream(connectionconfiguration.getTruststorePath());
        trustStore.load(fileinputstream, connectionconfiguration.getTruststorePassword().toCharArray());
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        fileinputstream.close();
_L2:
        return;
        s;
        fileinputstream = ((FileInputStream) (obj));
        obj = s;
_L5:
        s = fileinputstream;
        ((Exception) (obj)).printStackTrace();
        s = fileinputstream;
        connectionconfiguration.setVerifyRootCAEnabled(false);
        if (fileinputstream == null) goto _L2; else goto _L1
_L1:
        try
        {
            fileinputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        connectionconfiguration;
_L4:
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        throw connectionconfiguration;
        s;
        return;
        connectionconfiguration;
        s = fileinputstream;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
          goto _L5
    }

    public static List getPeerIdentity(X509Certificate x509certificate)
    {
        List list = getSubjectAlternativeNames(x509certificate);
        Object obj = list;
        if (list.isEmpty())
        {
            x509certificate = x509certificate.getSubjectDN().getName();
            obj = cnPattern.matcher(x509certificate);
            if (((Matcher) (obj)).find())
            {
                x509certificate = ((Matcher) (obj)).group(2);
            }
            obj = new ArrayList();
            ((List) (obj)).add(x509certificate);
        }
        return ((List) (obj));
    }

    private static List getSubjectAlternativeNames(X509Certificate x509certificate)
    {
        ArrayList arraylist = new ArrayList();
        Object obj = arraylist;
        try
        {
            if (x509certificate.getSubjectAlternativeNames() == null)
            {
                obj = Collections.emptyList();
            }
        }
        // Misplaced declaration of an exception variable
        catch (X509Certificate x509certificate)
        {
            x509certificate.printStackTrace();
            return arraylist;
        }
        return ((List) (obj));
    }

    public void checkClientTrusted(X509Certificate ax509certificate[], String s)
        throws CertificateException
    {
    }

    public void checkServerTrusted(X509Certificate ax509certificate[], String s)
        throws CertificateException
    {
        List list;
        int l;
        l = ax509certificate.length;
        list = getPeerIdentity(ax509certificate[0]);
        if (!configuration.isVerifyChainEnabled()) goto _L2; else goto _L1
_L1:
        int i;
        s = null;
        i = l - 1;
_L13:
        if (i >= 0) goto _L3; else goto _L2
_L2:
        if (!configuration.isVerifyRootCAEnabled()) goto _L5; else goto _L4
_L4:
        int k = 0;
        int j;
        Object obj;
        Principal principal;
        if (trustStore.getCertificateAlias(ax509certificate[l - 1]) != null)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        j = i;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        j = i;
        if (l != 1)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        j = i;
        k = i;
        if (!configuration.isSelfSignedCertificateEnabled())
        {
            break MISSING_BLOCK_LABEL_134;
        }
        k = i;
        System.out.println((new StringBuilder("Accepting self-signed certificate of remote server: ")).append(list).toString());
        j = 1;
_L6:
        if (j == 0)
        {
            throw new CertificateException((new StringBuilder("root certificate not trusted of ")).append(list).toString());
        }
        break; /* Loop/switch isn't completed */
_L3:
label0:
        {
            obj = ax509certificate[i];
            principal = ((X509Certificate) (obj)).getIssuerDN();
            obj = ((X509Certificate) (obj)).getSubjectDN();
            if (s != null)
            {
                if (!principal.equals(s))
                {
                    break label0;
                }
                try
                {
                    s = ax509certificate[i + 1].getPublicKey();
                    ax509certificate[i].verify(s);
                }
                // Misplaced declaration of an exception variable
                catch (X509Certificate ax509certificate[])
                {
                    throw new CertificateException((new StringBuilder("signature verification failed of ")).append(list).toString());
                }
            }
            s = ((String) (obj));
            i--;
            continue; /* Loop/switch isn't completed */
        }
        throw new CertificateException((new StringBuilder("subject/issuer verification failed of ")).append(list).toString());
        s;
        s.printStackTrace();
        j = k;
        if (true) goto _L6; else goto _L5
_L5:
        if (configuration.isNotMatchingDomainCheckEnabled())
        {
            if (list.size() == 1 && ((String)list.get(0)).startsWith("*."))
            {
                s = ((String)list.get(0)).replace("*.", "");
                if (!server.endsWith(s))
                {
                    throw new CertificateException((new StringBuilder("target verification failed of ")).append(list).toString());
                }
            } else
            if (!list.contains(server))
            {
                throw new CertificateException((new StringBuilder("target verification failed of ")).append(list).toString());
            }
        }
        if (!configuration.isExpiredCertificatesCheckEnabled()) goto _L8; else goto _L7
_L7:
        s = new Date();
        i = 0;
_L11:
        if (i < l) goto _L9; else goto _L8
_L8:
        return;
_L9:
        ax509certificate[i].checkValidity(s);
        i++;
        if (true) goto _L11; else goto _L10
_L10:
        ax509certificate;
        throw new CertificateException((new StringBuilder("invalid date of ")).append(server).toString());
        if (true) goto _L13; else goto _L12
_L12:
    }

    public X509Certificate[] getAcceptedIssuers()
    {
        return new X509Certificate[0];
    }

}
