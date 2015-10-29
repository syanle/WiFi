// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.CamelliaEngine;
import org.bouncycastle.crypto.engines.CamelliaWrapEngine;
import org.bouncycastle.crypto.engines.RFC3211WrapEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.WrapCipherSpi;

public final class Camellia
{
    public static class AlgParamGen extends JDKAlgorithmParameterGenerator
    {

        protected AlgorithmParameters engineGenerateParameters()
        {
            byte abyte0[] = new byte[16];
            if (random == null)
            {
                random = new SecureRandom();
            }
            random.nextBytes(abyte0);
            AlgorithmParameters algorithmparameters;
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("Camellia", BouncyCastleProvider.PROVIDER_NAME);
                algorithmparameters.init(new IvParameterSpec(abyte0));
            }
            catch (Exception exception)
            {
                throw new RuntimeException(exception.getMessage());
            }
            return algorithmparameters;
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Camellia parameter generation.");
        }

        public AlgParamGen()
        {
        }
    }

    public static class AlgParams extends org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters
    {

        protected String engineToString()
        {
            return "Camellia IV";
        }

        public AlgParams()
        {
        }
    }

    public static class CBC extends JCEBlockCipher
    {

        public CBC()
        {
            super(new CBCBlockCipher(new CamelliaEngine()), 128);
        }
    }

    public static class ECB extends JCEBlockCipher
    {

        public ECB()
        {
            super(new CamelliaEngine());
        }
    }

    public static class KeyGen extends JCEKeyGenerator
    {

        public KeyGen()
        {
            this(256);
        }

        public KeyGen(int i)
        {
            super("Camellia", i, new CipherKeyGenerator());
        }
    }

    public static class KeyGen128 extends KeyGen
    {

        public KeyGen128()
        {
            super(128);
        }
    }

    public static class KeyGen192 extends KeyGen
    {

        public KeyGen192()
        {
            super(192);
        }
    }

    public static class KeyGen256 extends KeyGen
    {

        public KeyGen256()
        {
            super(256);
        }
    }

    public static class Mappings extends HashMap
    {

        public Mappings()
        {
            put("AlgorithmParameters.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$AlgParams");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(NTTObjectIdentifiers.id_camellia128_cbc).toString(), "CAMELLIA");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(NTTObjectIdentifiers.id_camellia192_cbc).toString(), "CAMELLIA");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(NTTObjectIdentifiers.id_camellia256_cbc).toString(), "CAMELLIA");
            put("AlgorithmParameterGenerator.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$AlgParamGen");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(NTTObjectIdentifiers.id_camellia128_cbc).toString(), "CAMELLIA");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(NTTObjectIdentifiers.id_camellia192_cbc).toString(), "CAMELLIA");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(NTTObjectIdentifiers.id_camellia256_cbc).toString(), "CAMELLIA");
            put("Cipher.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$ECB");
            put((new StringBuilder()).append("Cipher.").append(NTTObjectIdentifiers.id_camellia128_cbc).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$CBC");
            put((new StringBuilder()).append("Cipher.").append(NTTObjectIdentifiers.id_camellia192_cbc).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$CBC");
            put((new StringBuilder()).append("Cipher.").append(NTTObjectIdentifiers.id_camellia256_cbc).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$CBC");
            put("Cipher.CAMELLIARFC3211WRAP", "org.bouncycastle.jce.provider.symmetric.Camellia$RFC3211Wrap");
            put("Cipher.CAMELLIAWRAP", "org.bouncycastle.jce.provider.symmetric.Camellia$Wrap");
            put((new StringBuilder()).append("Alg.Alias.Cipher.").append(NTTObjectIdentifiers.id_camellia128_wrap).toString(), "CAMELLIAWRAP");
            put((new StringBuilder()).append("Alg.Alias.Cipher.").append(NTTObjectIdentifiers.id_camellia192_wrap).toString(), "CAMELLIAWRAP");
            put((new StringBuilder()).append("Alg.Alias.Cipher.").append(NTTObjectIdentifiers.id_camellia256_wrap).toString(), "CAMELLIAWRAP");
            put("KeyGenerator.CAMELLIA", "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen");
            put((new StringBuilder()).append("KeyGenerator.").append(NTTObjectIdentifiers.id_camellia128_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen128");
            put((new StringBuilder()).append("KeyGenerator.").append(NTTObjectIdentifiers.id_camellia192_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen192");
            put((new StringBuilder()).append("KeyGenerator.").append(NTTObjectIdentifiers.id_camellia256_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen256");
            put((new StringBuilder()).append("KeyGenerator.").append(NTTObjectIdentifiers.id_camellia128_cbc).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen128");
            put((new StringBuilder()).append("KeyGenerator.").append(NTTObjectIdentifiers.id_camellia192_cbc).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen192");
            put((new StringBuilder()).append("KeyGenerator.").append(NTTObjectIdentifiers.id_camellia256_cbc).toString(), "org.bouncycastle.jce.provider.symmetric.Camellia$KeyGen256");
        }
    }

    public static class RFC3211Wrap extends WrapCipherSpi
    {

        public RFC3211Wrap()
        {
            super(new RFC3211WrapEngine(new CamelliaEngine()), 16);
        }
    }

    public static class Wrap extends WrapCipherSpi
    {

        public Wrap()
        {
            super(new CamelliaWrapEngine());
        }
    }


    private Camellia()
    {
    }
}
