// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.generators.ElGamalParametersGenerator;
import org.bouncycastle.crypto.params.ElGamalParameters;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKAlgorithmParameterGenerator, BouncyCastleProvider

public static class l extends JDKAlgorithmParameterGenerator
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

    public ()
    {
        l = 0;
    }
}
