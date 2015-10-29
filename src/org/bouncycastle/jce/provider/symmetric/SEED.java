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
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.SEEDEngine;
import org.bouncycastle.crypto.engines.SEEDWrapEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.WrapCipherSpi;

public final class SEED
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
                algorithmparameters = AlgorithmParameters.getInstance("SEED", BouncyCastleProvider.PROVIDER_NAME);
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
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for SEED parameter generation.");
        }

        public AlgParamGen()
        {
        }
    }

    public static class AlgParams extends org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters
    {

        protected String engineToString()
        {
            return "SEED IV";
        }

        public AlgParams()
        {
        }
    }

    public static class CBC extends JCEBlockCipher
    {

        public CBC()
        {
            super(new CBCBlockCipher(new SEEDEngine()), 128);
        }
    }

    public static class ECB extends JCEBlockCipher
    {

        public ECB()
        {
            super(new SEEDEngine());
        }
    }

    public static class KeyGen extends JCEKeyGenerator
    {

        public KeyGen()
        {
            super("SEED", 128, new CipherKeyGenerator());
        }
    }

    public static class Mappings extends HashMap
    {

        public Mappings()
        {
            put("AlgorithmParameters.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$AlgParams");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameters.").append(KISAObjectIdentifiers.id_seedCBC).toString(), "SEED");
            put("AlgorithmParameterGenerator.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$AlgParamGen");
            put((new StringBuilder()).append("Alg.Alias.AlgorithmParameterGenerator.").append(KISAObjectIdentifiers.id_seedCBC).toString(), "SEED");
            put("Cipher.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$ECB");
            put((new StringBuilder()).append("Cipher.").append(KISAObjectIdentifiers.id_seedCBC).toString(), "org.bouncycastle.jce.provider.symmetric.SEED$CBC");
            put("Cipher.SEEDWRAP", "org.bouncycastle.jce.provider.symmetric.SEED$Wrap");
            put((new StringBuilder()).append("Alg.Alias.Cipher.").append(KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap).toString(), "SEEDWRAP");
            put("KeyGenerator.SEED", "org.bouncycastle.jce.provider.symmetric.SEED$KeyGen");
            put((new StringBuilder()).append("KeyGenerator.").append(KISAObjectIdentifiers.id_seedCBC).toString(), "org.bouncycastle.jce.provider.symmetric.SEED$KeyGen");
            put((new StringBuilder()).append("KeyGenerator.").append(KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap).toString(), "org.bouncycastle.jce.provider.symmetric.SEED$KeyGen");
        }
    }

    public static class Wrap extends WrapCipherSpi
    {

        public Wrap()
        {
            super(new SEEDWrapEngine());
        }
    }


    private SEED()
    {
    }
}
