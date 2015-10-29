// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.crypto.generators.DHParametersGenerator;
import org.bouncycastle.crypto.generators.DSAParametersGenerator;
import org.bouncycastle.crypto.generators.ElGamalParametersGenerator;
import org.bouncycastle.crypto.generators.GOST3410ParametersGenerator;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.jce.spec.GOST3410ParameterSpec;
import org.bouncycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

// Referenced classes of package org.bouncycastle.jce.provider:
//            BouncyCastleProvider

public abstract class JDKAlgorithmParameterGenerator extends AlgorithmParameterGeneratorSpi
{
    public static class DES extends JDKAlgorithmParameterGenerator
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
                algorithmparameters = AlgorithmParameters.getInstance("DES", BouncyCastleProvider.PROVIDER_NAME);
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
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DES parameter generation.");
        }

        public DES()
        {
        }
    }

    public static class DH extends JDKAlgorithmParameterGenerator
    {

        private int l;

        protected AlgorithmParameters engineGenerateParameters()
        {
            Object obj = new DHParametersGenerator();
            AlgorithmParameters algorithmparameters;
            if (random != null)
            {
                ((DHParametersGenerator) (obj)).init(strength, 20, random);
            } else
            {
                ((DHParametersGenerator) (obj)).init(strength, 20, new SecureRandom());
            }
            obj = ((DHParametersGenerator) (obj)).generateParameters();
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("DH", BouncyCastleProvider.PROVIDER_NAME);
                algorithmparameters.init(new DHParameterSpec(((DHParameters) (obj)).getP(), ((DHParameters) (obj)).getG(), l));
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
            if (!(algorithmparameterspec instanceof DHGenParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
            } else
            {
                algorithmparameterspec = (DHGenParameterSpec)algorithmparameterspec;
                strength = algorithmparameterspec.getPrimeSize();
                l = algorithmparameterspec.getExponentSize();
                random = securerandom;
                return;
            }
        }

        public DH()
        {
            l = 0;
        }
    }

    public static class DSA extends JDKAlgorithmParameterGenerator
    {

        protected AlgorithmParameters engineGenerateParameters()
        {
            Object obj = new DSAParametersGenerator();
            AlgorithmParameters algorithmparameters;
            if (random != null)
            {
                ((DSAParametersGenerator) (obj)).init(strength, 20, random);
            } else
            {
                ((DSAParametersGenerator) (obj)).init(strength, 20, new SecureRandom());
            }
            obj = ((DSAParametersGenerator) (obj)).generateParameters();
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("DSA", BouncyCastleProvider.PROVIDER_NAME);
                algorithmparameters.init(new DSAParameterSpec(((DSAParameters) (obj)).getP(), ((DSAParameters) (obj)).getQ(), ((DSAParameters) (obj)).getG()));
            }
            catch (Exception exception)
            {
                throw new RuntimeException(exception.getMessage());
            }
            return algorithmparameters;
        }

        protected void engineInit(int i, SecureRandom securerandom)
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

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
        }

        public DSA()
        {
        }
    }

    public static class ElGamal extends JDKAlgorithmParameterGenerator
    {

        private int l;

        protected AlgorithmParameters engineGenerateParameters()
        {
            Object obj = new ElGamalParametersGenerator();
            AlgorithmParameters algorithmparameters;
            if (random != null)
            {
                ((ElGamalParametersGenerator) (obj)).init(strength, 20, random);
            } else
            {
                ((ElGamalParametersGenerator) (obj)).init(strength, 20, new SecureRandom());
            }
            obj = ((ElGamalParametersGenerator) (obj)).generateParameters();
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("ElGamal", BouncyCastleProvider.PROVIDER_NAME);
                algorithmparameters.init(new DHParameterSpec(((ElGamalParameters) (obj)).getP(), ((ElGamalParameters) (obj)).getG(), l));
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
            if (!(algorithmparameterspec instanceof DHGenParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
            } else
            {
                algorithmparameterspec = (DHGenParameterSpec)algorithmparameterspec;
                strength = algorithmparameterspec.getPrimeSize();
                l = algorithmparameterspec.getExponentSize();
                random = securerandom;
                return;
            }
        }

        public ElGamal()
        {
            l = 0;
        }
    }

    public static class GOST3410 extends JDKAlgorithmParameterGenerator
    {

        protected AlgorithmParameters engineGenerateParameters()
        {
            Object obj = new GOST3410ParametersGenerator();
            AlgorithmParameters algorithmparameters;
            if (random != null)
            {
                ((GOST3410ParametersGenerator) (obj)).init(strength, 2, random);
            } else
            {
                ((GOST3410ParametersGenerator) (obj)).init(strength, 2, new SecureRandom());
            }
            obj = ((GOST3410ParametersGenerator) (obj)).generateParameters();
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("GOST3410", BouncyCastleProvider.PROVIDER_NAME);
                algorithmparameters.init(new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec(((GOST3410Parameters) (obj)).getP(), ((GOST3410Parameters) (obj)).getQ(), ((GOST3410Parameters) (obj)).getA())));
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
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for GOST3410 parameter generation.");
        }

        public GOST3410()
        {
        }
    }

    public static class RC2 extends JDKAlgorithmParameterGenerator
    {

        RC2ParameterSpec spec;

        protected AlgorithmParameters engineGenerateParameters()
        {
            if (spec == null)
            {
                byte abyte0[] = new byte[8];
                if (random == null)
                {
                    random = new SecureRandom();
                }
                random.nextBytes(abyte0);
                AlgorithmParameters algorithmparameters1;
                try
                {
                    algorithmparameters1 = AlgorithmParameters.getInstance("RC2", BouncyCastleProvider.PROVIDER_NAME);
                    algorithmparameters1.init(new IvParameterSpec(abyte0));
                }
                catch (Exception exception)
                {
                    throw new RuntimeException(exception.getMessage());
                }
                return algorithmparameters1;
            }
            AlgorithmParameters algorithmparameters;
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("RC2", BouncyCastleProvider.PROVIDER_NAME);
                algorithmparameters.init(spec);
            }
            catch (Exception exception1)
            {
                throw new RuntimeException(exception1.getMessage());
            }
            return algorithmparameters;
        }

        protected void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
            throws InvalidAlgorithmParameterException
        {
            if (algorithmparameterspec instanceof RC2ParameterSpec)
            {
                spec = (RC2ParameterSpec)algorithmparameterspec;
                return;
            } else
            {
                throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC2 parameter generation.");
            }
        }

        public RC2()
        {
            spec = null;
        }
    }


    protected SecureRandom random;
    protected int strength;

    public JDKAlgorithmParameterGenerator()
    {
        strength = 1024;
    }

    protected void engineInit(int i, SecureRandom securerandom)
    {
        strength = i;
        random = securerandom;
    }
}
