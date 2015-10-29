// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.agreement.DHBasicAgreement;
import org.bouncycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.util.BigIntegers;

// Referenced classes of package org.bouncycastle.crypto.tls:
//            TlsKeyExchange, TlsRSASigner, TlsDSSSigner, TlsUtils, 
//            TlsClientContext, TlsAgreementCredentials, TlsSignerCredentials, TlsFatalAlert, 
//            Certificate, TlsSigner, CertificateRequest, TlsCredentials

class TlsDHKeyExchange
    implements TlsKeyExchange
{

    protected static final BigInteger ONE = BigInteger.valueOf(1L);
    protected static final BigInteger TWO = BigInteger.valueOf(2L);
    protected TlsAgreementCredentials agreementCredentials;
    protected TlsClientContext context;
    protected DHPrivateKeyParameters dhAgreeClientPrivateKey;
    protected DHPublicKeyParameters dhAgreeServerPublicKey;
    protected int keyExchange;
    protected AsymmetricKeyParameter serverPublicKey;
    protected TlsSigner tlsSigner;

    TlsDHKeyExchange(TlsClientContext tlsclientcontext, int i)
    {
        serverPublicKey = null;
        dhAgreeServerPublicKey = null;
        dhAgreeClientPrivateKey = null;
        i;
        JVM INSTR tableswitch 3 9: default 64
    //                   3 104
    //                   4 64
    //                   5 90
    //                   6 64
    //                   7 74
    //                   8 64
    //                   9 74;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L1 _L4
_L1:
        throw new IllegalArgumentException("unsupported key exchange algorithm");
_L4:
        tlsSigner = null;
_L6:
        context = tlsclientcontext;
        keyExchange = i;
        return;
_L3:
        tlsSigner = new TlsRSASigner();
        continue; /* Loop/switch isn't completed */
_L2:
        tlsSigner = new TlsDSSSigner();
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected boolean areCompatibleParameters(DHParameters dhparameters, DHParameters dhparameters1)
    {
        return dhparameters.getP().equals(dhparameters1.getP()) && dhparameters.getG().equals(dhparameters1.getG());
    }

    protected byte[] calculateDHBasicAgreement(DHPublicKeyParameters dhpublickeyparameters, DHPrivateKeyParameters dhprivatekeyparameters)
    {
        dhpublickeyparameters = new DHBasicAgreement();
        dhpublickeyparameters.init(dhAgreeClientPrivateKey);
        return BigIntegers.asUnsignedByteArray(dhpublickeyparameters.calculateAgreement(dhAgreeServerPublicKey));
    }

    public void generateClientKeyExchange(OutputStream outputstream)
        throws IOException
    {
        if (agreementCredentials != null)
        {
            TlsUtils.writeUint24(0, outputstream);
            return;
        } else
        {
            generateEphemeralClientKeyExchange(dhAgreeServerPublicKey.getParameters(), outputstream);
            return;
        }
    }

    protected AsymmetricCipherKeyPair generateDHKeyPair(DHParameters dhparameters)
    {
        DHBasicKeyPairGenerator dhbasickeypairgenerator = new DHBasicKeyPairGenerator();
        dhbasickeypairgenerator.init(new DHKeyGenerationParameters(context.getSecureRandom(), dhparameters));
        return dhbasickeypairgenerator.generateKeyPair();
    }

    protected void generateEphemeralClientKeyExchange(DHParameters dhparameters, OutputStream outputstream)
        throws IOException
    {
        dhparameters = generateDHKeyPair(dhparameters);
        dhAgreeClientPrivateKey = (DHPrivateKeyParameters)dhparameters.getPrivate();
        dhparameters = BigIntegers.asUnsignedByteArray(((DHPublicKeyParameters)dhparameters.getPublic()).getY());
        TlsUtils.writeUint24(dhparameters.length + 2, outputstream);
        TlsUtils.writeOpaque16(dhparameters, outputstream);
    }

    public byte[] generatePremasterSecret()
        throws IOException
    {
        if (agreementCredentials != null)
        {
            return agreementCredentials.generateAgreement(dhAgreeServerPublicKey);
        } else
        {
            return calculateDHBasicAgreement(dhAgreeServerPublicKey, dhAgreeClientPrivateKey);
        }
    }

    public void processClientCredentials(TlsCredentials tlscredentials)
        throws IOException
    {
        if (tlscredentials instanceof TlsAgreementCredentials)
        {
            agreementCredentials = (TlsAgreementCredentials)tlscredentials;
        } else
        if (!(tlscredentials instanceof TlsSignerCredentials))
        {
            throw new TlsFatalAlert((short)80);
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
        if (tlsSigner == null)
        {
            try
            {
                dhAgreeServerPublicKey = validateDHPublicKey((DHPublicKeyParameters)serverPublicKey);
            }
            // Misplaced declaration of an exception variable
            catch (Certificate certificate)
            {
                throw new TlsFatalAlert((short)46);
            }
            TlsUtils.validateKeyUsage(certificate, 8);
            return;
        }
        if (!tlsSigner.isValidPublicKey(serverPublicKey))
        {
            throw new TlsFatalAlert((short)46);
        } else
        {
            TlsUtils.validateKeyUsage(certificate, 128);
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
        agreementCredentials = null;
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
            case 3: // '\003'
            case 4: // '\004'
            case 64: // '@'
                i++;
                break;
            }
        } while (true);
    }

    protected DHPublicKeyParameters validateDHPublicKey(DHPublicKeyParameters dhpublickeyparameters)
        throws IOException
    {
        BigInteger biginteger = dhpublickeyparameters.getY();
        Object obj = dhpublickeyparameters.getParameters();
        BigInteger biginteger1 = ((DHParameters) (obj)).getP();
        obj = ((DHParameters) (obj)).getG();
        if (!biginteger1.isProbablePrime(2))
        {
            throw new TlsFatalAlert((short)47);
        }
        if (((BigInteger) (obj)).compareTo(TWO) < 0 || ((BigInteger) (obj)).compareTo(biginteger1.subtract(TWO)) > 0)
        {
            throw new TlsFatalAlert((short)47);
        }
        if (biginteger.compareTo(TWO) < 0 || biginteger.compareTo(biginteger1.subtract(ONE)) > 0)
        {
            throw new TlsFatalAlert((short)47);
        } else
        {
            return dhpublickeyparameters;
        }
    }

}
