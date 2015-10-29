// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;

// Referenced classes of package org.bouncycastle.jce.provider.symmetric:
//            AES

public static class put extends HashMap
{

    private static final String wrongAES128 = "2.16.840.1.101.3.4.2";
    private static final String wrongAES192 = "2.16.840.1.101.3.4.22";
    private static final String wrongAES256 = "2.16.840.1.101.3.4.42";

    public ()
    {
        put("AlgorithmParameters.AES", "org.bouncycastle.jce.provider.symmetric.AES$AlgParams");
        put("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", "AES");
        put("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", "AES");
        put("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", "AES");
        put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(NISTObjectIdentifiers.id_aes128_CBC).toString(), "AES");
        put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(NISTObjectIdentifiers.id_aes192_CBC).toString(), "AES");
        put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(NISTObjectIdentifiers.id_aes256_CBC).toString(), "AES");
        put("AlgorithmParameterGenerator.AES", "org.bouncycastle.jce.provider.symmetric.AES$AlgParamGen");
        put("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", "AES");
        put("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", "AES");
        put("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", "AES");
        put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(NISTObjectIdentifiers.id_aes128_CBC).toString(), "AES");
        put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(NISTObjectIdentifiers.id_aes192_CBC).toString(), "AES");
        put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(NISTObjectIdentifiers.id_aes256_CBC).toString(), "AES");
        put("Cipher.AES", "org.bouncycastle.jce.provider.symmetric.AES$ECB");
        put("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", "AES");
        put("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", "AES");
        put("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", "AES");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes128_ECB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$ECB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes192_ECB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$ECB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes256_ECB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$ECB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes128_CBC).toString(), "org.bouncycastle.jce.provider.symmetric.AES$CBC");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes192_CBC).toString(), "org.bouncycastle.jce.provider.symmetric.AES$CBC");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes256_CBC).toString(), "org.bouncycastle.jce.provider.symmetric.AES$CBC");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes128_OFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$OFB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes192_OFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$OFB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes256_OFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$OFB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes128_CFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$CFB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes192_CFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$CFB");
        put((new StringBuilder()).append("Cipher.").append(NISTObjectIdentifiers.id_aes256_CFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$CFB");
        put("Cipher.AESWRAP", "org.bouncycastle.jce.provider.symmetric.AES$Wrap");
        put((new StringBuilder()).append("Alg.Alias.Cipher.").append(NISTObjectIdentifiers.id_aes128_wrap).toString(), "AESWRAP");
        put((new StringBuilder()).append("Alg.Alias.Cipher.").append(NISTObjectIdentifiers.id_aes192_wrap).toString(), "AESWRAP");
        put((new StringBuilder()).append("Alg.Alias.Cipher.").append(NISTObjectIdentifiers.id_aes256_wrap).toString(), "AESWRAP");
        put("Cipher.AESRFC3211WRAP", "org.bouncycastle.jce.provider.symmetric.AES$RFC3211Wrap");
        put("KeyGenerator.AES", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen");
        put("KeyGenerator.2.16.840.1.101.3.4.2", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
        put("KeyGenerator.2.16.840.1.101.3.4.22", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
        put("KeyGenerator.2.16.840.1.101.3.4.42", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes128_ECB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes128_CBC).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes128_OFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes128_CFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes192_ECB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes192_CBC).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes192_OFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes192_CFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes256_ECB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes256_CBC).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes256_OFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes256_CFB).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
        put("KeyGenerator.AESWRAP", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes128_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes192_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
        put((new StringBuilder()).append("KeyGenerator.").append(NISTObjectIdentifiers.id_aes256_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
        put("Mac.AESCMAC", "org.bouncycastle.jce.provider.symmetric.AES$AESCMAC");
    }
}
