// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyPair;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.RSAPrivateKeyStructure;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.jce.PKCS10CertificationRequest;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.io.pem.PemGenerationException;
import org.bouncycastle.util.io.pem.PemHeader;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectGenerator;
import org.bouncycastle.x509.X509AttributeCertificate;
import org.bouncycastle.x509.X509V2AttributeCertificate;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMUtilities

public class MiscPEMGenerator
    implements PemObjectGenerator
{

    private String algorithm;
    private Object obj;
    private char password[];
    private Provider provider;
    private SecureRandom random;

    public MiscPEMGenerator(Object obj1)
    {
        obj = obj1;
    }

    public MiscPEMGenerator(Object obj1, String s, char ac[], SecureRandom securerandom, String s1)
        throws NoSuchProviderException
    {
        obj = obj1;
        algorithm = s;
        password = ac;
        random = securerandom;
        if (s1 != null)
        {
            provider = Security.getProvider(s1);
            if (provider == null)
            {
                throw new NoSuchProviderException((new StringBuilder()).append("cannot find provider: ").append(s1).toString());
            }
        }
    }

    public MiscPEMGenerator(Object obj1, String s, char ac[], SecureRandom securerandom, Provider provider1)
    {
        obj = obj1;
        algorithm = s;
        password = ac;
        random = securerandom;
        provider = provider1;
    }

    private PemObject createPemObject(Object obj1)
        throws IOException
    {
        if (obj1 instanceof PemObject)
        {
            return (PemObject)obj1;
        }
        if (obj1 instanceof PemObjectGenerator)
        {
            return ((PemObjectGenerator)obj1).generate();
        }
        String s;
        if (obj1 instanceof X509Certificate)
        {
            s = "CERTIFICATE";
            try
            {
                obj1 = ((X509Certificate)obj1).getEncoded();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1)
            {
                throw new PemGenerationException((new StringBuilder()).append("Cannot encode object: ").append(((CertificateEncodingException) (obj1)).toString()).toString());
            }
        } else
        if (obj1 instanceof X509CRL)
        {
            s = "X509 CRL";
            try
            {
                obj1 = ((X509CRL)obj1).getEncoded();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1)
            {
                throw new PemGenerationException((new StringBuilder()).append("Cannot encode object: ").append(((CRLException) (obj1)).toString()).toString());
            }
        } else
        {
            if (obj1 instanceof KeyPair)
            {
                return createPemObject(((KeyPair)obj1).getPrivate());
            }
            if (obj1 instanceof PrivateKey)
            {
                Object obj2 = new PrivateKeyInfo((ASN1Sequence)ASN1Object.fromByteArray(((Key)obj1).getEncoded()));
                if (obj1 instanceof RSAPrivateKey)
                {
                    s = "RSA PRIVATE KEY";
                    obj1 = ((PrivateKeyInfo) (obj2)).getPrivateKey().getEncoded();
                } else
                if (obj1 instanceof DSAPrivateKey)
                {
                    s = "DSA PRIVATE KEY";
                    obj2 = DSAParameter.getInstance(((PrivateKeyInfo) (obj2)).getAlgorithmId().getParameters());
                    ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
                    asn1encodablevector.add(new DERInteger(0));
                    asn1encodablevector.add(new DERInteger(((DSAParameter) (obj2)).getP()));
                    asn1encodablevector.add(new DERInteger(((DSAParameter) (obj2)).getQ()));
                    asn1encodablevector.add(new DERInteger(((DSAParameter) (obj2)).getG()));
                    obj1 = ((DSAPrivateKey)obj1).getX();
                    asn1encodablevector.add(new DERInteger(((DSAParameter) (obj2)).getG().modPow(((BigInteger) (obj1)), ((DSAParameter) (obj2)).getP())));
                    asn1encodablevector.add(new DERInteger(((BigInteger) (obj1))));
                    obj1 = (new DERSequence(asn1encodablevector)).getEncoded();
                } else
                if (((PrivateKey)obj1).getAlgorithm().equals("ECDSA"))
                {
                    s = "EC PRIVATE KEY";
                    obj1 = ((PrivateKeyInfo) (obj2)).getPrivateKey().getEncoded();
                } else
                {
                    throw new IOException("Cannot identify private key");
                }
            } else
            if (obj1 instanceof PublicKey)
            {
                s = "PUBLIC KEY";
                obj1 = ((PublicKey)obj1).getEncoded();
            } else
            if (obj1 instanceof X509AttributeCertificate)
            {
                s = "ATTRIBUTE CERTIFICATE";
                obj1 = ((X509V2AttributeCertificate)obj1).getEncoded();
            } else
            if (obj1 instanceof PKCS10CertificationRequest)
            {
                s = "CERTIFICATE REQUEST";
                obj1 = ((PKCS10CertificationRequest)obj1).getEncoded();
            } else
            if (obj1 instanceof ContentInfo)
            {
                s = "PKCS7";
                obj1 = ((ContentInfo)obj1).getEncoded();
            } else
            {
                throw new PemGenerationException("unknown object passed - can't encode.");
            }
        }
        return new PemObject(s, ((byte []) (obj1)));
    }

    private PemObject createPemObject(Object obj1, String s, char ac[], SecureRandom securerandom)
        throws IOException
    {
        byte abyte0[] = null;
        if (obj1 instanceof KeyPair)
        {
            return createPemObject(((KeyPair)obj1).getPrivate(), s, ac, securerandom);
        }
        Object obj2;
        byte byte0;
        if (obj1 instanceof RSAPrivateCrtKey)
        {
            abyte0 = (RSAPrivateCrtKey)obj1;
            abyte0 = (new RSAPrivateKeyStructure(abyte0.getModulus(), abyte0.getPublicExponent(), abyte0.getPrivateExponent(), abyte0.getPrimeP(), abyte0.getPrimeQ(), abyte0.getPrimeExponentP(), abyte0.getPrimeExponentQ(), abyte0.getCrtCoefficient())).getEncoded();
            obj2 = "RSA PRIVATE KEY";
        } else
        if (obj1 instanceof DSAPrivateKey)
        {
            Object obj3 = (DSAPrivateKey)obj1;
            abyte0 = ((DSAPrivateKey) (obj3)).getParams();
            obj2 = new ASN1EncodableVector();
            ((ASN1EncodableVector) (obj2)).add(new DERInteger(0));
            ((ASN1EncodableVector) (obj2)).add(new DERInteger(abyte0.getP()));
            ((ASN1EncodableVector) (obj2)).add(new DERInteger(abyte0.getQ()));
            ((ASN1EncodableVector) (obj2)).add(new DERInteger(abyte0.getG()));
            obj3 = ((DSAPrivateKey) (obj3)).getX();
            ((ASN1EncodableVector) (obj2)).add(new DERInteger(abyte0.getG().modPow(((BigInteger) (obj3)), abyte0.getP())));
            ((ASN1EncodableVector) (obj2)).add(new DERInteger(((BigInteger) (obj3))));
            abyte0 = (new DERSequence(((ASN1EncodableVector) (obj2)))).getEncoded();
            obj2 = "DSA PRIVATE KEY";
        } else
        if ((obj1 instanceof PrivateKey) && "ECDSA".equals(((PrivateKey)obj1).getAlgorithm()))
        {
            abyte0 = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(((PrivateKey)obj1).getEncoded())).getPrivateKey().getEncoded();
            obj2 = "EC PRIVATE KEY";
        } else
        {
            obj2 = null;
        }
        if (obj2 == null || abyte0 == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Object type not supported: ").append(obj1.getClass().getName()).toString());
        }
        s = Strings.toUpperCase(s);
        obj1 = s;
        if (s.equals("DESEDE"))
        {
            obj1 = "DES-EDE3-CBC";
        }
        if (((String) (obj1)).startsWith("AES-"))
        {
            byte0 = 16;
        } else
        {
            byte0 = 8;
        }
        s = new byte[byte0];
        securerandom.nextBytes(s);
        ac = PEMUtilities.crypt(true, provider, abyte0, ac, ((String) (obj1)), s);
        securerandom = new ArrayList(2);
        securerandom.add(new PemHeader("Proc-Type", "4,ENCRYPTED"));
        securerandom.add(new PemHeader("DEK-Info", (new StringBuilder()).append(((String) (obj1))).append(",").append(getHexEncoded(s)).toString()));
        return new PemObject(((String) (obj2)), securerandom, ac);
    }

    private String getHexEncoded(byte abyte0[])
        throws IOException
    {
        abyte0 = Hex.encode(abyte0);
        char ac[] = new char[abyte0.length];
        for (int i = 0; i != abyte0.length; i++)
        {
            ac[i] = (char)abyte0[i];
        }

        return new String(ac);
    }

    public PemObject generate()
        throws PemGenerationException
    {
        PemObject pemobject;
        try
        {
            if (algorithm != null)
            {
                return createPemObject(obj, algorithm, password, random);
            }
            pemobject = createPemObject(obj);
        }
        catch (IOException ioexception)
        {
            throw new PemGenerationException((new StringBuilder()).append("encoding exception: ").append(ioexception.getMessage()).toString(), ioexception);
        }
        return pemobject;
    }
}
