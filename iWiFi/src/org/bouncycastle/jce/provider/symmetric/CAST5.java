// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.HashMap;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.misc.CAST5CBCParameters;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.CAST5Engine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;

public final class CAST5
{
    public static class AlgParamGen extends JDKAlgorithmParameterGenerator
    {

        protected AlgorithmParameters engineGenerateParameters()
        {
            byte abyte0[] = new byte[8];
            if (random == null)
            {
                random = new SecureRandom();
            }
            random.nextBytes(abyte0);
            AlgorithmParameters algorithmparameters;
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("CAST5", BouncyCastleProvider.PROVIDER_NAME);
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
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for CAST5 parameter generation.");
        }

        public AlgParamGen()
        {
        }
    }

    public static class AlgParams extends JDKAlgorithmParameters
    {

        private byte iv[];
        private int keyLength;

        protected byte[] engineGetEncoded()
        {
            byte abyte0[] = new byte[iv.length];
            System.arraycopy(iv, 0, abyte0, 0, iv.length);
            return abyte0;
        }

        protected byte[] engineGetEncoded(String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                return (new CAST5CBCParameters(engineGetEncoded(), keyLength)).getEncoded();
            }
            if (s.equals("RAW"))
            {
                return engineGetEncoded();
            } else
            {
                return null;
            }
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
            throws InvalidParameterSpecException
        {
            if (algorithmparameterspec instanceof IvParameterSpec)
            {
                iv = ((IvParameterSpec)algorithmparameterspec).getIV();
                return;
            } else
            {
                throw new InvalidParameterSpecException("IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object");
            }
        }

        protected void engineInit(byte abyte0[])
            throws IOException
        {
            iv = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, iv, 0, iv.length);
        }

        protected void engineInit(byte abyte0[], String s)
            throws IOException
        {
            if (isASN1FormatString(s))
            {
                abyte0 = CAST5CBCParameters.getInstance((new ASN1InputStream(abyte0)).readObject());
                keyLength = abyte0.getKeyLength();
                iv = abyte0.getIV();
                return;
            }
            if (s.equals("RAW"))
            {
                engineInit(abyte0);
                return;
            } else
            {
                throw new IOException("Unknown parameters format in IV parameters object");
            }
        }

        protected String engineToString()
        {
            return "CAST5 Parameters";
        }

        protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
            throws InvalidParameterSpecException
        {
            if (class1 == javax/crypto/spec/IvParameterSpec)
            {
                return new IvParameterSpec(iv);
            } else
            {
                throw new InvalidParameterSpecException("unknown parameter spec passed to CAST5 parameters object.");
            }
        }

        public AlgParams()
        {
            keyLength = 128;
        }
    }

    public static class CBC extends JCEBlockCipher
    {

        public CBC()
        {
            super(new CBCBlockCipher(new CAST5Engine()), 64);
        }
    }

    public static class ECB extends JCEBlockCipher
    {

        public ECB()
        {
            super(new CAST5Engine());
        }
    }

    public static class KeyGen extends JCEKeyGenerator
    {

        public KeyGen()
        {
            super("CAST5", 128, new CipherKeyGenerator());
        }
    }

    public static class Mappings extends HashMap
    {

        public Mappings()
        {
            put("AlgorithmParameters.CAST5", "org.bouncycastle.jce.provider.symmetric.CAST5$AlgParams");
            put("Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10", "CAST5");
            put("AlgorithmParameterGenerator.CAST5", "org.bouncycastle.jce.provider.symmetric.CAST5$AlgParamGen");
            put("Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10", "CAST5");
            put("Cipher.CAST5", "org.bouncycastle.jce.provider.symmetric.CAST5$ECB");
            put("Cipher.1.2.840.113533.7.66.10", "org.bouncycastle.jce.provider.symmetric.CAST5$CBC");
            put("KeyGenerator.CAST5", "org.bouncycastle.jce.provider.symmetric.CAST5$KeyGen");
            put("Alg.Alias.KeyGenerator.1.2.840.113533.7.66.10", "CAST5");
        }
    }


    private CAST5()
    {
    }
}
