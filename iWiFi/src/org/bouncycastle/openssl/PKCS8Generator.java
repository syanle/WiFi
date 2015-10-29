// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.EncryptionScheme;
import org.bouncycastle.asn1.pkcs.KeyDerivationFunc;
import org.bouncycastle.asn1.pkcs.PBES2Parameters;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.util.io.pem.PemGenerationException;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectGenerator;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMUtilities

public class PKCS8Generator
    implements PemObjectGenerator
{

    public static final String AES_128_CBC;
    public static final String AES_192_CBC;
    public static final String AES_256_CBC;
    public static final String DES3_CBC;
    public static final String PBE_SHA1_2DES;
    public static final String PBE_SHA1_3DES;
    public static final String PBE_SHA1_RC2_128;
    public static final String PBE_SHA1_RC2_40;
    public static final String PBE_SHA1_RC4_128;
    public static final String PBE_SHA1_RC4_40;
    private String algorithm;
    private Cipher cipher;
    private int iterationCount;
    private PrivateKey key;
    private AlgorithmParameterGenerator paramGen;
    private char password[];
    private SecureRandom random;
    private SecretKeyFactory secKeyFact;

    public PKCS8Generator(PrivateKey privatekey)
    {
        key = privatekey;
    }

    public PKCS8Generator(PrivateKey privatekey, String s, String s1)
        throws NoSuchProviderException, NoSuchAlgorithmException
    {
        Provider provider = Security.getProvider(s1);
        if (provider == null)
        {
            throw new NoSuchProviderException((new StringBuilder()).append("cannot find provider: ").append(s1).toString());
        } else
        {
            init(privatekey, s, provider);
            return;
        }
    }

    public PKCS8Generator(PrivateKey privatekey, String s, Provider provider)
        throws NoSuchAlgorithmException
    {
        init(privatekey, s, provider);
    }

    private void init(PrivateKey privatekey, String s, Provider provider)
        throws NoSuchAlgorithmException
    {
        key = privatekey;
        algorithm = s;
        iterationCount = 2048;
        try
        {
            cipher = Cipher.getInstance(s, provider);
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new NoSuchAlgorithmException((new StringBuilder()).append(s).append(" found, but padding not available: ").append(privatekey.getMessage()).toString());
        }
        if (PEMUtilities.isPKCS5Scheme2(new DERObjectIdentifier(s)))
        {
            paramGen = AlgorithmParameterGenerator.getInstance(s, provider);
            return;
        } else
        {
            secKeyFact = SecretKeyFactory.getInstance(s, provider);
            return;
        }
    }

    public PemObject generate()
        throws PemGenerationException
    {
        Object obj = key.getEncoded();
        if (algorithm == null)
        {
            return new PemObject("PRIVATE KEY", ((byte []) (obj)));
        }
        Object obj1 = new DERObjectIdentifier(algorithm);
        if (PEMUtilities.isPKCS5Scheme2(((DERObjectIdentifier) (obj1))))
        {
            obj1 = new byte[20];
            if (random == null)
            {
                random = new SecureRandom();
            }
            random.nextBytes(((byte []) (obj1)));
            Object obj2 = PEMUtilities.generateSecretKeyForPKCS5Scheme2(algorithm, password, ((byte []) (obj1)), iterationCount);
            Object obj3 = paramGen.generateParameters();
            try
            {
                cipher.init(1, ((java.security.Key) (obj2)), ((AlgorithmParameters) (obj3)));
                obj2 = new EncryptionScheme(new DERObjectIdentifier(algorithm), ASN1Object.fromByteArray(((AlgorithmParameters) (obj3)).getEncoded()));
                obj1 = new KeyDerivationFunc(PKCSObjectIdentifiers.id_PBKDF2, new PBKDF2Params(((byte []) (obj1)), iterationCount));
                obj3 = new ASN1EncodableVector();
                ((ASN1EncodableVector) (obj3)).add(((org.bouncycastle.asn1.DEREncodable) (obj1)));
                ((ASN1EncodableVector) (obj3)).add(((org.bouncycastle.asn1.DEREncodable) (obj2)));
                obj = new PemObject("ENCRYPTED PRIVATE KEY", (new EncryptedPrivateKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.id_PBES2, new PBES2Parameters(new DERSequence(((ASN1EncodableVector) (obj3))))), cipher.doFinal(((byte []) (obj))))).getEncoded());
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new PemGenerationException(((IOException) (obj)).getMessage(), ((Throwable) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new PemGenerationException(((GeneralSecurityException) (obj)).getMessage(), ((Throwable) (obj)));
            }
            return ((PemObject) (obj));
        }
        if (PEMUtilities.isPKCS12(((DERObjectIdentifier) (obj1))))
        {
            byte abyte0[] = new byte[20];
            if (random == null)
            {
                random = new SecureRandom();
            }
            random.nextBytes(abyte0);
            try
            {
                Object obj4 = new PBEKeySpec(password);
                PBEParameterSpec pbeparameterspec = new PBEParameterSpec(abyte0, iterationCount);
                cipher.init(1, secKeyFact.generateSecret(((java.security.spec.KeySpec) (obj4))), pbeparameterspec);
                obj4 = new ASN1EncodableVector();
                ((ASN1EncodableVector) (obj4)).add(new DEROctetString(abyte0));
                ((ASN1EncodableVector) (obj4)).add(new DERInteger(iterationCount));
                obj = new PemObject("ENCRYPTED PRIVATE KEY", (new EncryptedPrivateKeyInfo(new AlgorithmIdentifier(((DERObjectIdentifier) (obj1)), new PKCS12PBEParams(new DERSequence(((ASN1EncodableVector) (obj4))))), cipher.doFinal(((byte []) (obj))))).getEncoded());
            }
            catch (IOException ioexception)
            {
                throw new PemGenerationException(ioexception.getMessage(), ioexception);
            }
            catch (GeneralSecurityException generalsecurityexception)
            {
                throw new PemGenerationException(generalsecurityexception.getMessage(), generalsecurityexception);
            }
            return ((PemObject) (obj));
        } else
        {
            throw new PemGenerationException((new StringBuilder()).append("unknown algorithm: ").append(algorithm).toString());
        }
    }

    public PKCS8Generator setIterationCount(int i)
    {
        iterationCount = i;
        return this;
    }

    public PKCS8Generator setPassword(char ac[])
    {
        password = ac;
        return this;
    }

    public PKCS8Generator setSecureRandom(SecureRandom securerandom)
    {
        random = securerandom;
        return this;
    }

    static 
    {
        AES_128_CBC = NISTObjectIdentifiers.id_aes128_CBC.getId();
        AES_192_CBC = NISTObjectIdentifiers.id_aes192_CBC.getId();
        AES_256_CBC = NISTObjectIdentifiers.id_aes256_CBC.getId();
        DES3_CBC = PKCSObjectIdentifiers.des_EDE3_CBC.getId();
        PBE_SHA1_RC4_128 = PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4.getId();
        PBE_SHA1_RC4_40 = PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC4.getId();
        PBE_SHA1_3DES = PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC.getId();
        PBE_SHA1_2DES = PKCSObjectIdentifiers.pbeWithSHAAnd2_KeyTripleDES_CBC.getId();
        PBE_SHA1_RC2_128 = PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC2_CBC.getId();
        PBE_SHA1_RC2_40 = PKCSObjectIdentifiers.pbewithSHAAnd40BitRC2_CBC.getId();
    }
}
