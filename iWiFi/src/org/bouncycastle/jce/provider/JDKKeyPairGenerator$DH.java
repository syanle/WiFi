// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.bouncycastle.crypto.generators.DHParametersGenerator;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKKeyPairGenerator, JCEDHPublicKey, JCEDHPrivateKey

public static class initialised extends JDKKeyPairGenerator
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


    public ers()
    {
        super("DH");
        engine = new DHBasicKeyPairGenerator();
        strength = 1024;
        certainty = 20;
        random = new SecureRandom();
        initialised = false;
    }
}
