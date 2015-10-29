// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.ElGamalKeyPairGenerator;
import org.bouncycastle.crypto.generators.ElGamalParametersGenerator;
import org.bouncycastle.crypto.params.ElGamalKeyGenerationParameters;
import org.bouncycastle.crypto.params.ElGamalParameters;
import org.bouncycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.bouncycastle.crypto.params.ElGamalPublicKeyParameters;
import org.bouncycastle.jce.spec.ElGamalParameterSpec;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKKeyPairGenerator, JCEElGamalPublicKey, JCEElGamalPrivateKey

public static class initialised extends JDKKeyPairGenerator
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

    public ers()
    {
        super("ElGamal");
        engine = new ElGamalKeyPairGenerator();
        strength = 1024;
        certainty = 20;
        random = new SecureRandom();
        initialised = false;
    }
}
