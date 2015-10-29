// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.KeyFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.EncryptionScheme;
import org.bouncycastle.asn1.pkcs.KeyDerivationFunc;
import org.bouncycastle.asn1.pkcs.PBEParameter;
import org.bouncycastle.asn1.pkcs.PBES2Parameters;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemObjectParser;

// Referenced classes of package org.bouncycastle.openssl:
//            PEMReader, PEMException, PEMUtilities, PasswordFinder

private class asymProvider
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
            if (PEMReader.access$400(PEMReader.this) == null)
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
            javax.crypto.SecretKey secretkey = PEMUtilities.generateSecretKeyForPKCS5Scheme2(((String) (obj1)), PEMReader.access$400(PEMReader.this).getPassword(), abyte0, i);
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
            obj = new PBEKeySpec(PEMReader.access$400(PEMReader.this).getPassword());
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
            obj = new PBEKeySpec(PEMReader.access$400(PEMReader.this).getPassword());
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

    public (String s, String s1)
    {
        this$0 = PEMReader.this;
        super();
        symProvider = s;
        asymProvider = s1;
    }
}
