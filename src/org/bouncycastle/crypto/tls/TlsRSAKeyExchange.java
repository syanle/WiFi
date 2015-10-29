// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.encodings.PKCS1Encoding;
import org.bouncycastle.crypto.engines.RSABlindedEngine;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;

// Referenced classes of package org.bouncycastle.crypto.tls:
//            TlsKeyExchange, TlsClientContext, TlsUtils, TlsFatalAlert, 
//            TlsSignerCredentials, Certificate, CertificateRequest, TlsCredentials

class TlsRSAKeyExchange
    implements TlsKeyExchange
{

    protected TlsClientContext context;
    protected byte premasterSecret[];
    protected RSAKeyParameters rsaServerPublicKey;
    protected AsymmetricKeyParameter serverPublicKey;

    TlsRSAKeyExchange(TlsClientContext tlsclientcontext)
    {
        serverPublicKey = null;
        rsaServerPublicKey = null;
        context = tlsclientcontext;
    }

    public void generateClientKeyExchange(OutputStream outputstream)
        throws IOException
    {
        premasterSecret = new byte[48];
        context.getSecureRandom().nextBytes(premasterSecret);
        TlsUtils.writeVersion(premasterSecret, 0);
        PKCS1Encoding pkcs1encoding = new PKCS1Encoding(new RSABlindedEngine());
        pkcs1encoding.init(true, new ParametersWithRandom(rsaServerPublicKey, context.getSecureRandom()));
        try
        {
            byte abyte0[] = pkcs1encoding.processBlock(premasterSecret, 0, premasterSecret.length);
            TlsUtils.writeUint24(abyte0.length + 2, outputstream);
            TlsUtils.writeOpaque16(abyte0, outputstream);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (OutputStream outputstream)
        {
            throw new TlsFatalAlert((short)80);
        }
    }

    public byte[] generatePremasterSecret()
        throws IOException
    {
        byte abyte0[] = premasterSecret;
        premasterSecret = null;
        return abyte0;
    }

    public void processClientCredentials(TlsCredentials tlscredentials)
        throws IOException
    {
        if (!(tlscredentials instanceof TlsSignerCredentials))
        {
            throw new TlsFatalAlert((short)80);
        } else
        {
            return;
        }
    }

    public void processServerCertificate(Certificate certificate)
        throws IOException
    {
        certificate = certificate.certs[0];
        org.bouncycastle.asn1.x509.SubjectPublicKeyInfo subjectpublickeyinfo = certificate.getSubjectPublicKeyInfo();
        try
        {
            serverPublicKey = PublicKeyFactory.createKey(subjectpublickeyinfo);
        }
        // Misplaced declaration of an exception variable
        catch (Certificate certificate)
        {
            throw new TlsFatalAlert((short)43);
        }
        if (serverPublicKey.isPrivate())
        {
            throw new TlsFatalAlert((short)80);
        } else
        {
            rsaServerPublicKey = validateRSAPublicKey((RSAKeyParameters)serverPublicKey);
            TlsUtils.validateKeyUsage(certificate, 32);
            return;
        }
    }

    public void processServerKeyExchange(InputStream inputstream)
        throws IOException
    {
        throw new TlsFatalAlert((short)10);
    }

    public void skipClientCredentials()
        throws IOException
    {
    }

    public void skipServerCertificate()
        throws IOException
    {
        throw new TlsFatalAlert((short)10);
    }

    public void skipServerKeyExchange()
        throws IOException
    {
    }

    public void validateCertificateRequest(CertificateRequest certificaterequest)
        throws IOException
    {
        certificaterequest = certificaterequest.getCertificateTypes();
        int i = 0;
        do
        {
            if (i >= certificaterequest.length)
            {
                break;
            }
            switch (certificaterequest[i])
            {
            default:
                throw new TlsFatalAlert((short)47);

            case 1: // '\001'
            case 2: // '\002'
            case 64: // '@'
                i++;
                break;
            }
        } while (true);
    }

    protected RSAKeyParameters validateRSAPublicKey(RSAKeyParameters rsakeyparameters)
        throws IOException
    {
        if (!rsakeyparameters.getExponent().isProbablePrime(2))
        {
            throw new TlsFatalAlert((short)47);
        } else
        {
            return rsakeyparameters;
        }
    }
}
