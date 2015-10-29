// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import java.util.Hashtable;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.bouncycastle.crypto.generators.DHParametersGenerator;
import org.bouncycastle.crypto.generators.DSAKeyPairGenerator;
import org.bouncycastle.crypto.generators.DSAParametersGenerator;
import org.bouncycastle.crypto.generators.ElGamalKeyPairGenerator;
import org.bouncycastle.crypto.generators.ElGamalParametersGenerator;
import org.bouncycastle.crypto.generators.GOST3410KeyPairGenerator;
import org.bouncycastle.crypto.generators.RSAKeyPairGenerator;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.params.DSAKeyGenerationParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAPrivateKeyParameters;
import org.bouncycastle.crypto.params.DSAPublicKeyParameters;
import org.bouncycastle.crypto.params.ElGamalKeyGenerationParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.bouncycastle.crypto.params.ElGamalPublicKeyParameters;
import org.bouncycastle.crypto.params.GOST3410KeyGenerationParameters;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.bouncycastle.crypto.params.GOST3410PublicKeyParameters;
import org.bouncycastle.crypto.params.RSAKeyGenerationParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.jce.spec.ElGamalParameterSpec;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JCEDHPublicKey, JCEDHPrivateKey, JDKDSAPublicKey, JDKDSAPrivateKey, 
//            JCEElGamalPublicKey, JCEElGamalPrivateKey, JDKGOST3410PublicKey, JDKGOST3410PrivateKey, 
//            JCERSAPublicKey, JCERSAPrivateCrtKey

public abstract class JDKKeyPairGenerator extends KeyPairGenerator
{
    public static class DH extends JDKKeyPairGenerator
    {

        private static Hashtable params = new Hashtable();
        int certainty;
        DHBasicKeyPairGenerator engine;
        boolean initialised;
        DHKeyGenerationParameters param;
        SecureRandom random;
        int strength;

        public KeyPair generateKeyPair()
        {
            if (!initialised)
            {
                Object obj = new Integer(strength);
                Object obj1;
                if (params.containsKey(obj))
                {
                    param = (DHKeyGenerationParameters)params.get(obj);
                } else
                {
                    DHParametersGenerator dhparametersgenerator = new DHParametersGenerator();
                    dhparametersgenerator.init(strength, certainty, random);
                    param = new DHKeyGenerationParameters(random, dhparametersgenerator.generateParameters());
                    params.put(obj, param);
                }
                engine.init(param);
                initialised = true;
            }
            obj1 = engine.generateKeyPair();
            obj = (DHPublicKeyParameters)((AsymmetricCipherKeyPair) (obj1)).getPublic();
            obj1 = (DHPrivateKeyParameters)((AsymmetricCipherKeyPair) (obj1)).getPrivate();
            return new KeyPair(new JCEDHPublicKey(((DHPublicKeyParameters) (obj))), new JCEDHPrivateKey(((DHPrivateKeyParameters) (obj1))));
        }

        public void initialize(int i, SecureRandom securerandom)
        {
            strength = i;
            random = securerandom;
        }

        public void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (!(algorithmparameterspec instanceof DHParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec");
            } else
            {
                algorithmparameterspec = (DHParameterSpec)algorithmparameterspec;
                param = new DHKeyGenerationParameters(securerandom, new DHParameters(algorithmparameterspec.getP(), algorithmparameterspec.getG(), null, algorithmparameterspec.getL()));
                engine.init(param);
                initialised = true;
                return;
            }
        }


        public DH()
        {
            super("DH");
            engine = new DHBasicKeyPairGenerator();
            strength = 1024;
            certainty = 20;
            random = new SecureRandom();
            initialised = false;
        }
    }

    public static class DSA extends JDKKeyPairGenerator
    {

        int certainty;
        DSAKeyPairGenerator engine;
        boolean initialised;
        DSAKeyGenerationParameters param;
        SecureRandom random;
        int strength;

        public KeyPair generateKeyPair()
        {
            if (!initialised)
            {
                DSAParametersGenerator dsaparametersgenerator = new DSAParametersGenerator();
                dsaparametersgenerator.init(strength, certainty, random);
                param = new DSAKeyGenerationParameters(random, dsaparametersgenerator.generateParameters());
                engine.init(param);
                initialised = true;
            }
            Object obj = engine.generateKeyPair();
            DSAPublicKeyParameters dsapublickeyparameters = (DSAPublicKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPublic();
            obj = (DSAPrivateKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPrivate();
            return new KeyPair(new JDKDSAPublicKey(dsapublickeyparameters), new JDKDSAPrivateKey(((DSAPrivateKeyParameters) (obj))));
        }

        public void initialize(int i, SecureRandom securerandom)
        {
            if (i < 512 || i > 1024 || i % 64 != 0)
            {
                throw new InvalidParameterException("strength must be from 512 - 1024 and a multiple of 64");
            } else
            {
                strength = i;
                random = securerandom;
                return;
            }
        }

        public void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (!(algorithmparameterspec instanceof DSAParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("parameter object not a DSAParameterSpec");
            } else
            {
                algorithmparameterspec = (DSAParameterSpec)algorithmparameterspec;
                param = new DSAKeyGenerationParameters(securerandom, new DSAParameters(algorithmparameterspec.getP(), algorithmparameterspec.getQ(), algorithmparameterspec.getG()));
                engine.init(param);
                initialised = true;
                return;
            }
        }

        public DSA()
        {
            super("DSA");
            engine = new DSAKeyPairGenerator();
            strength = 1024;
            certainty = 20;
            random = new SecureRandom();
            initialised = false;
        }
    }

    public static class ElGamal extends JDKKeyPairGenerator
    {

        int certainty;
        ElGamalKeyPairGenerator engine;
        boolean initialised;
        ElGamalKeyGenerationParameters param;
        SecureRandom random;
        int strength;

        public KeyPair generateKeyPair()
        {
            if (!initialised)
            {
                ElGamalParametersGenerator elgamalparametersgenerator = new ElGamalParametersGenerator();
                elgamalparametersgenerator.init(strength, certainty, random);
                param = new ElGamalKeyGenerationParameters(random, elgamalparametersgenerator.generateParameters());
                engine.init(param);
                initialised = true;
            }
            Object obj = engine.generateKeyPair();
            ElGamalPublicKeyParameters elgamalpublickeyparameters = (ElGamalPublicKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPublic();
            obj = (ElGamalPrivateKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPrivate();
            return new KeyPair(new JCEElGamalPublicKey(elgamalpublickeyparameters), new JCEElGamalPrivateKey(((ElGamalPrivateKeyParameters) (obj))));
        }

        public void initialize(int i, SecureRandom securerandom)
        {
            strength = i;
            random = securerandom;
        }

        public void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (!(algorithmparameterspec instanceof ElGamalParameterSpec) && !(algorithmparameterspec instanceof DHParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec or an ElGamalParameterSpec");
            }
            if (algorithmparameterspec instanceof ElGamalParameterSpec)
            {
                algorithmparameterspec = (ElGamalParameterSpec)algorithmparameterspec;
                param = new ElGamalKeyGenerationParameters(securerandom, new ElGamalParameters(algorithmparameterspec.getP(), algorithmparameterspec.getG()));
            } else
            {
                algorithmparameterspec = (DHParameterSpec)algorithmparameterspec;
                param = new ElGamalKeyGenerationParameters(securerandom, new ElGamalParameters(algorithmparameterspec.getP(), algorithmparameterspec.getG(), algorithmparameterspec.getL()));
            }
            engine.init(param);
            initialised = true;
        }

        public ElGamal()
        {
            super("ElGamal");
            engine = new ElGamalKeyPairGenerator();
            strength = 1024;
            certainty = 20;
            random = new SecureRandom();
            initialised = false;
        }
    }

    public static class GOST3410 extends JDKKeyPairGenerator
    {

        GOST3410KeyPairGenerator engine;
        GOST3410ParameterSpec gost3410Params;
        boolean initialised;
        GOST3410KeyGenerationParameters param;
        SecureRandom random;
        int strength;

        private void init(GOST3410ParameterSpec gost3410parameterspec, SecureRandom securerandom)
        {
            GOST3410PublicKeyParameterSetSpec gost3410publickeyparametersetspec = gost3410parameterspec.getPublicKeyParameters();
            param = new GOST3410KeyGenerationParameters(securerandom, new GOST3410Parameters(gost3410publickeyparametersetspec.getP(), gost3410publickeyparametersetspec.getQ(), gost3410publickeyparametersetspec.getA()));
            engine.init(param);
            initialised = true;
            gost3410Params = gost3410parameterspec;
        }

        public KeyPair generateKeyPair()
        {
            if (!initialised)
            {
                init(new GOST3410ParameterSpec(CryptoProObjectIdentifiers.gostR3410_94_CryptoPro_A.getId()), new SecureRandom());
            }
            Object obj = engine.generateKeyPair();
            GOST3410PublicKeyParameters gost3410publickeyparameters = (GOST3410PublicKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPublic();
            obj = (GOST3410PrivateKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPrivate();
            return new KeyPair(new JDKGOST3410PublicKey(gost3410publickeyparameters, gost3410Params), new JDKGOST3410PrivateKey(((GOST3410PrivateKeyParameters) (obj)), gost3410Params));
        }

        public void initialize(int i, SecureRandom securerandom)
        {
            strength = i;
            random = securerandom;
        }

        public void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (!(algorithmparameterspec instanceof GOST3410ParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("parameter object not a GOST3410ParameterSpec");
            } else
            {
                init((GOST3410ParameterSpec)algorithmparameterspec, securerandom);
                return;
            }
        }

        public GOST3410()
        {
            super("GOST3410");
            engine = new GOST3410KeyPairGenerator();
            strength = 1024;
            random = null;
            initialised = false;
        }
    }

    public static class RSA extends JDKKeyPairGenerator
    {

        static final BigInteger defaultPublicExponent = BigInteger.valueOf(0x10001L);
        static final int defaultTests = 12;
        RSAKeyPairGenerator engine;
        RSAKeyGenerationParameters param;

        public KeyPair generateKeyPair()
        {
            Object obj = engine.generateKeyPair();
            RSAKeyParameters rsakeyparameters = (RSAKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPublic();
            obj = (RSAPrivateCrtKeyParameters)((AsymmetricCipherKeyPair) (obj)).getPrivate();
            return new KeyPair(new JCERSAPublicKey(rsakeyparameters), new JCERSAPrivateCrtKey(((RSAPrivateCrtKeyParameters) (obj))));
        }

        public void initialize(int i, SecureRandom securerandom)
        {
            param = new RSAKeyGenerationParameters(defaultPublicExponent, securerandom, i, 12);
            engine.init(param);
        }

        public void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (!(algorithmparameterspec instanceof RSAKeyGenParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("parameter object not a RSAKeyGenParameterSpec");
            } else
            {
                algorithmparameterspec = (RSAKeyGenParameterSpec)algorithmparameterspec;
                param = new RSAKeyGenerationParameters(algorithmparameterspec.getPublicExponent(), securerandom, algorithmparameterspec.getKeysize(), 12);
                engine.init(param);
                return;
            }
        }


        public RSA()
        {
            super("RSA");
            engine = new RSAKeyPairGenerator();
            param = new RSAKeyGenerationParameters(defaultPublicExponent, new SecureRandom(), 2048, 12);
            engine.init(param);
        }
    }


    public JDKKeyPairGenerator(String s)
    {
        super(s);
    }

    public abstract KeyPair generateKeyPair();

    public abstract void initialize(int i, SecureRandom securerandom);
}
