// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Reader;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateFactory;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.EncryptionScheme;
import org.bouncycastle.asn1.pkcs.KeyDerivationFunc;
import org.bouncycastle.asn1.pkcs.PBEParameter;
import org.bouncycastle.asn1.pkcs.PBES2Parameters;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.sec.ECPrivateKeyStructure;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.RSAPublicKeyStructure;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jce.ECNamedCurveTable;
import org.bouncycastle.jce.PKCS10CertificationRequest;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.io.pem.PemHeader;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;
import org.bouncycastle.util.io.pem.PemReader;
import org.bouncycastle.x509.X509V2AttributeCertificate;

// Referenced classes of package org.bouncycastle.openssl:
//            PasswordFinder, PEMException, PasswordException, PEMUtilities

public class PEMReader extends PemReader
{
    private class DSAKeyPairParser extends KeyPairParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            Object obj;
            Object obj1;
            DERInteger derinteger;
            DERInteger derinteger1;
            try
            {
                pemobject = readKeyPair(pemobject);
                if (pemobject.size() != 6)
                {
                    throw new PEMException("malformed sequence in DSA private key");
                }
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw pemobject;
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem creating DSA private key: ").append(pemobject.toString()).toString(), pemobject);
            }
            obj = (DERInteger)pemobject.getObjectAt(1);
            obj1 = (DERInteger)pemobject.getObjectAt(2);
            derinteger = (DERInteger)pemobject.getObjectAt(3);
            derinteger1 = (DERInteger)pemobject.getObjectAt(4);
            pemobject = new DSAPrivateKeySpec(((DERInteger)pemobject.getObjectAt(5)).getValue(), ((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue(), derinteger.getValue());
            obj = new DSAPublicKeySpec(derinteger1.getValue(), ((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue(), derinteger.getValue());
            obj1 = KeyFactory.getInstance("DSA", provider);
            pemobject = new KeyPair(((KeyFactory) (obj1)).generatePublic(((java.security.spec.KeySpec) (obj))), ((KeyFactory) (obj1)).generatePrivate(pemobject));
            return pemobject;
        }

        public DSAKeyPairParser(String s)
        {
            this$0 = PEMReader.this;
            super(s);
        }
    }

    private class ECDSAKeyPairParser extends KeyPairParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            try
            {
                Object obj = new ECPrivateKeyStructure(readKeyPair(pemobject));
                Object obj1 = new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, ((ECPrivateKeyStructure) (obj)).getParameters());
                pemobject = new PrivateKeyInfo(((AlgorithmIdentifier) (obj1)), ((ECPrivateKeyStructure) (obj)).getDERObject());
                obj = new SubjectPublicKeyInfo(((AlgorithmIdentifier) (obj1)), ((ECPrivateKeyStructure) (obj)).getPublicKey().getBytes());
                pemobject = new PKCS8EncodedKeySpec(pemobject.getEncoded());
                obj = new X509EncodedKeySpec(((SubjectPublicKeyInfo) (obj)).getEncoded());
                obj1 = KeyFactory.getInstance("ECDSA", provider);
                pemobject = new KeyPair(((KeyFactory) (obj1)).generatePublic(((java.security.spec.KeySpec) (obj))), ((KeyFactory) (obj1)).generatePrivate(pemobject));
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw pemobject;
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem creating EC private key: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        public ECDSAKeyPairParser(String s)
        {
            this$0 = PEMReader.this;
            super(s);
        }
    }

    private class ECNamedCurveSpecParser
        implements PemObjectParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            try
            {
                pemobject = ECNamedCurveTable.getParameterSpec(((DERObjectIdentifier)ASN1Object.fromByteArray(pemobject.getContent())).getId());
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw pemobject;
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("exception extracting EC named curve: ").append(pemobject.toString()).toString());
            }
            if (pemobject != null)
            {
                break MISSING_BLOCK_LABEL_65;
            }
            throw new IOException("object ID not found in EC curve table");
            return pemobject;
        }

        private ECNamedCurveSpecParser()
        {
            this$0 = PEMReader.this;
            super();
        }

    }

    private class EncryptedPrivateKeyParser
        implements PemObjectParser
    {

        private String asymProvider;
        private String symProvider;
        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            Object obj;
            try
            {
                pemobject = EncryptedPrivateKeyInfo.getInstance(ASN1Object.fromByteArray(pemobject.getContent()));
                obj = pemobject.getEncryptionAlgorithm();
                if (pFinder == null)
                {
                    throw new PEMException("no PasswordFinder specified");
                }
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw pemobject;
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem parsing ENCRYPTED PRIVATE KEY: ").append(pemobject.toString()).toString(), pemobject);
            }
            if (PEMUtilities.isPKCS5Scheme2(((AlgorithmIdentifier) (obj)).getAlgorithm()))
            {
                obj = PBES2Parameters.getInstance(((AlgorithmIdentifier) (obj)).getParameters());
                Object obj1 = ((PBES2Parameters) (obj)).getKeyDerivationFunc();
                obj = ((PBES2Parameters) (obj)).getEncryptionScheme();
                obj1 = (PBKDF2Params)((KeyDerivationFunc) (obj1)).getParameters();
                int i = ((PBKDF2Params) (obj1)).getIterationCount().intValue();
                byte abyte0[] = ((PBKDF2Params) (obj1)).getSalt();
                obj1 = ((EncryptionScheme) (obj)).getAlgorithm().getId();
                javax.crypto.SecretKey secretkey = PEMUtilities.generateSecretKeyForPKCS5Scheme2(((String) (obj1)), pFinder.getPassword(), abyte0, i);
                Cipher cipher = Cipher.getInstance(((String) (obj1)), symProvider);
                obj1 = AlgorithmParameters.getInstance(((String) (obj1)), symProvider);
                ((AlgorithmParameters) (obj1)).init(((EncryptionScheme) (obj)).getParameters().getDERObject().getEncoded());
                cipher.init(2, secretkey, ((AlgorithmParameters) (obj1)));
                pemobject = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(cipher.doFinal(pemobject.getEncryptedData())));
                obj = new PKCS8EncodedKeySpec(pemobject.getEncoded());
                return KeyFactory.getInstance(pemobject.getAlgorithmId().getAlgorithm().getId(), asymProvider).generatePrivate(((java.security.spec.KeySpec) (obj)));
            }
            if (PEMUtilities.isPKCS12(((AlgorithmIdentifier) (obj)).getAlgorithm()))
            {
                Object obj2 = PKCS12PBEParams.getInstance(((AlgorithmIdentifier) (obj)).getParameters());
                Object obj4 = ((AlgorithmIdentifier) (obj)).getAlgorithm().getId();
                obj = new PBEKeySpec(pFinder.getPassword());
                SecretKeyFactory secretkeyfactory = SecretKeyFactory.getInstance(((String) (obj4)), symProvider);
                obj2 = new PBEParameterSpec(((PKCS12PBEParams) (obj2)).getIV(), ((PKCS12PBEParams) (obj2)).getIterations().intValue());
                obj4 = Cipher.getInstance(((String) (obj4)), symProvider);
                ((Cipher) (obj4)).init(2, secretkeyfactory.generateSecret(((java.security.spec.KeySpec) (obj))), ((java.security.spec.AlgorithmParameterSpec) (obj2)));
                pemobject = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(((Cipher) (obj4)).doFinal(pemobject.getEncryptedData())));
                obj = new PKCS8EncodedKeySpec(pemobject.getEncoded());
                return KeyFactory.getInstance(pemobject.getAlgorithmId().getAlgorithm().getId(), asymProvider).generatePrivate(((java.security.spec.KeySpec) (obj)));
            }
            if (PEMUtilities.isPKCS5Scheme1(((AlgorithmIdentifier) (obj)).getAlgorithm()))
            {
                Object obj3 = PBEParameter.getInstance(((AlgorithmIdentifier) (obj)).getParameters());
                Object obj5 = ((AlgorithmIdentifier) (obj)).getAlgorithm().getId();
                obj = new PBEKeySpec(pFinder.getPassword());
                SecretKeyFactory secretkeyfactory1 = SecretKeyFactory.getInstance(((String) (obj5)), symProvider);
                obj3 = new PBEParameterSpec(((PBEParameter) (obj3)).getSalt(), ((PBEParameter) (obj3)).getIterationCount().intValue());
                obj5 = Cipher.getInstance(((String) (obj5)), symProvider);
                ((Cipher) (obj5)).init(2, secretkeyfactory1.generateSecret(((java.security.spec.KeySpec) (obj))), ((java.security.spec.AlgorithmParameterSpec) (obj3)));
                pemobject = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(((Cipher) (obj5)).doFinal(pemobject.getEncryptedData())));
                obj = new PKCS8EncodedKeySpec(pemobject.getEncoded());
                return KeyFactory.getInstance(pemobject.getAlgorithmId().getAlgorithm().getId(), asymProvider).generatePrivate(((java.security.spec.KeySpec) (obj)));
            } else
            {
                throw new PEMException((new StringBuilder()).append("Unknown algorithm: ").append(((AlgorithmIdentifier) (obj)).getAlgorithm()).toString());
            }
        }

        public EncryptedPrivateKeyParser(String s, String s1)
        {
            this$0 = PEMReader.this;
            super();
            symProvider = s;
            asymProvider = s1;
        }
    }

    private abstract class KeyPairParser
        implements PemObjectParser
    {

        protected String provider;
        final PEMReader this$0;

        protected ASN1Sequence readKeyPair(PemObject pemobject)
            throws IOException
        {
            String s = null;
            Iterator iterator = pemobject.getHeaders().iterator();
            boolean flag = false;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                PemHeader pemheader = (PemHeader)iterator.next();
                if (pemheader.getName().equals("Proc-Type") && pemheader.getValue().equals("4,ENCRYPTED"))
                {
                    flag = true;
                } else
                if (pemheader.getName().equals("DEK-Info"))
                {
                    s = pemheader.getValue();
                }
            } while (true);
            byte abyte0[] = pemobject.getContent();
            pemobject = abyte0;
            if (flag)
            {
                if (pFinder == null)
                {
                    throw new PasswordException("No password finder specified, but a password is required");
                }
                pemobject = pFinder.getPassword();
                if (pemobject == null)
                {
                    throw new PasswordException("Password is null, but a password is required");
                }
                StringTokenizer stringtokenizer = new StringTokenizer(s, ",");
                s = stringtokenizer.nextToken();
                byte abyte1[] = Hex.decode(stringtokenizer.nextToken());
                pemobject = PEMUtilities.crypt(false, provider, abyte0, pemobject, s, abyte1);
            }
            try
            {
                pemobject = (ASN1Sequence)ASN1Object.fromByteArray(pemobject);
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                if (flag)
                {
                    throw new PEMException("exception decoding - please check password and data.", pemobject);
                } else
                {
                    throw new PEMException(pemobject.getMessage(), pemobject);
                }
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                if (flag)
                {
                    throw new PEMException("exception decoding - please check password and data.", pemobject);
                } else
                {
                    throw new PEMException(pemobject.getMessage(), pemobject);
                }
            }
            return pemobject;
        }

        public KeyPairParser(String s)
        {
            this$0 = PEMReader.this;
            super();
            provider = s;
        }
    }

    private class PKCS10CertificationRequestParser
        implements PemObjectParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            try
            {
                pemobject = new PKCS10CertificationRequest(pemobject.getContent());
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem parsing certrequest: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        private PKCS10CertificationRequestParser()
        {
            this$0 = PEMReader.this;
            super();
        }

    }

    private class PKCS7Parser
        implements PemObjectParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            try
            {
                pemobject = ContentInfo.getInstance((new ASN1InputStream(pemobject.getContent())).readObject());
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem parsing PKCS7 object: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        private PKCS7Parser()
        {
            this$0 = PEMReader.this;
            super();
        }

    }

    private class PrivateKeyParser
        implements PemObjectParser
    {

        private String provider;
        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            try
            {
                PrivateKeyInfo privatekeyinfo = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(pemobject.getContent()));
                pemobject = new PKCS8EncodedKeySpec(pemobject.getContent());
                pemobject = KeyFactory.getInstance(privatekeyinfo.getAlgorithmId().getAlgorithm().getId(), provider).generatePrivate(pemobject);
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem parsing PRIVATE KEY: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        public PrivateKeyParser(String s)
        {
            this$0 = PEMReader.this;
            super();
            provider = s;
        }
    }

    private class PublicKeyParser
        implements PemObjectParser
    {

        private String provider;
        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            String as[];
            int i;
            i = 0;
            pemobject = new X509EncodedKeySpec(pemobject.getContent());
            as = new String[2];
            as[0] = "DSA";
            as[1] = "RSA";
_L2:
            if (i >= as.length)
            {
                break; /* Loop/switch isn't completed */
            }
            java.security.PublicKey publickey = KeyFactory.getInstance(as[i], provider).generatePublic(pemobject);
            return publickey;
            pemobject;
            throw new RuntimeException((new StringBuilder()).append("can't find provider ").append(provider).toString());
            Object obj;
            obj;
_L3:
            i++;
            if (true) goto _L2; else goto _L1
_L1:
            return null;
            obj;
              goto _L3
        }

        public PublicKeyParser(String s)
        {
            this$0 = PEMReader.this;
            super();
            provider = s;
        }
    }

    private class RSAKeyPairParser extends KeyPairParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            Object obj;
            Object obj1;
            DERInteger derinteger;
            DERInteger derinteger1;
            DERInteger derinteger2;
            DERInteger derinteger3;
            DERInteger derinteger4;
            DERInteger derinteger5;
            try
            {
                pemobject = readKeyPair(pemobject);
                if (pemobject.size() != 9)
                {
                    throw new PEMException("malformed sequence in RSA private key");
                }
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw pemobject;
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem creating RSA private key: ").append(pemobject.toString()).toString(), pemobject);
            }
            obj = (DERInteger)pemobject.getObjectAt(1);
            obj1 = (DERInteger)pemobject.getObjectAt(2);
            derinteger = (DERInteger)pemobject.getObjectAt(3);
            derinteger1 = (DERInteger)pemobject.getObjectAt(4);
            derinteger2 = (DERInteger)pemobject.getObjectAt(5);
            derinteger3 = (DERInteger)pemobject.getObjectAt(6);
            derinteger4 = (DERInteger)pemobject.getObjectAt(7);
            derinteger5 = (DERInteger)pemobject.getObjectAt(8);
            pemobject = new RSAPublicKeySpec(((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue());
            obj = new RSAPrivateCrtKeySpec(((DERInteger) (obj)).getValue(), ((DERInteger) (obj1)).getValue(), derinteger.getValue(), derinteger1.getValue(), derinteger2.getValue(), derinteger3.getValue(), derinteger4.getValue(), derinteger5.getValue());
            obj1 = KeyFactory.getInstance("RSA", provider);
            pemobject = new KeyPair(((KeyFactory) (obj1)).generatePublic(pemobject), ((KeyFactory) (obj1)).generatePrivate(((java.security.spec.KeySpec) (obj))));
            return pemobject;
        }

        public RSAKeyPairParser(String s)
        {
            this$0 = PEMReader.this;
            super(s);
        }
    }

    private class RSAPublicKeyParser
        implements PemObjectParser
    {

        private String provider;
        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            try
            {
                pemobject = new RSAPublicKeyStructure((ASN1Sequence)(new ASN1InputStream(pemobject.getContent())).readObject());
                pemobject = new RSAPublicKeySpec(pemobject.getModulus(), pemobject.getPublicExponent());
                pemobject = KeyFactory.getInstance("RSA", provider).generatePublic(pemobject);
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw pemobject;
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new IOException((new StringBuilder()).append("can't find provider ").append(provider).toString());
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem extracting key: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        public RSAPublicKeyParser(String s)
        {
            this$0 = PEMReader.this;
            super();
            provider = s;
        }
    }

    private class X509AttributeCertificateParser
        implements PemObjectParser
    {

        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            return new X509V2AttributeCertificate(pemobject.getContent());
        }

        private X509AttributeCertificateParser()
        {
            this$0 = PEMReader.this;
            super();
        }

    }

    private class X509CRLParser
        implements PemObjectParser
    {

        private String provider;
        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            pemobject = new ByteArrayInputStream(pemobject.getContent());
            try
            {
                pemobject = CertificateFactory.getInstance("X.509", provider).generateCRL(pemobject);
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem parsing cert: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        public X509CRLParser(String s)
        {
            this$0 = PEMReader.this;
            super();
            provider = s;
        }
    }

    private class X509CertificateParser
        implements PemObjectParser
    {

        private String provider;
        final PEMReader this$0;

        public Object parseObject(PemObject pemobject)
            throws IOException
        {
            pemobject = new ByteArrayInputStream(pemobject.getContent());
            try
            {
                pemobject = CertificateFactory.getInstance("X.509", provider).generateCertificate(pemobject);
            }
            // Misplaced declaration of an exception variable
            catch (PemObject pemobject)
            {
                throw new PEMException((new StringBuilder()).append("problem parsing cert: ").append(pemobject.toString()).toString(), pemobject);
            }
            return pemobject;
        }

        public X509CertificateParser(String s)
        {
            this$0 = PEMReader.this;
            super();
            provider = s;
        }
    }


    private PasswordFinder pFinder;
    private final Map parsers;

    public PEMReader(Reader reader)
    {
        this(reader, null, "BC");
    }

    public PEMReader(Reader reader, PasswordFinder passwordfinder)
    {
        this(reader, passwordfinder, "BC");
    }

    public PEMReader(Reader reader, PasswordFinder passwordfinder, String s)
    {
        this(reader, passwordfinder, s, s);
    }

    public PEMReader(Reader reader, PasswordFinder passwordfinder, String s, String s1)
    {
        super(reader);
        parsers = new HashMap();
        pFinder = passwordfinder;
        parsers.put("CERTIFICATE REQUEST", new PKCS10CertificationRequestParser());
        parsers.put("NEW CERTIFICATE REQUEST", new PKCS10CertificationRequestParser());
        parsers.put("CERTIFICATE", new X509CertificateParser(s1));
        parsers.put("X509 CERTIFICATE", new X509CertificateParser(s1));
        parsers.put("X509 CRL", new X509CRLParser(s1));
        parsers.put("PKCS7", new PKCS7Parser());
        parsers.put("ATTRIBUTE CERTIFICATE", new X509AttributeCertificateParser());
        parsers.put("EC PARAMETERS", new ECNamedCurveSpecParser());
        parsers.put("PUBLIC KEY", new PublicKeyParser(s1));
        parsers.put("RSA PUBLIC KEY", new RSAPublicKeyParser(s1));
        parsers.put("RSA PRIVATE KEY", new RSAKeyPairParser(s1));
        parsers.put("DSA PRIVATE KEY", new DSAKeyPairParser(s1));
        parsers.put("EC PRIVATE KEY", new ECDSAKeyPairParser(s1));
        parsers.put("ENCRYPTED PRIVATE KEY", new EncryptedPrivateKeyParser(s, s1));
        parsers.put("PRIVATE KEY", new PrivateKeyParser(s1));
    }

    public Object readObject()
        throws IOException
    {
        PemObject pemobject = readPemObject();
        if (pemobject != null)
        {
            String s = pemobject.getType();
            if (parsers.containsKey(s))
            {
                return ((PemObjectParser)parsers.get(s)).parseObject(pemobject);
            } else
            {
                throw new IOException((new StringBuilder()).append("unrecognised object: ").append(s).toString());
            }
        } else
        {
            return null;
        }
    }

}
