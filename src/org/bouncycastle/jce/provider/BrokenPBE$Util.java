// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.generators.PKCS12ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S1ParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

// Referenced classes of package org.bouncycastle.jce.provider:
//            BrokenPBE, OldPKCS12ParametersGenerator, JCEPBEKey

public static class r
{

    private static PBEParametersGenerator makePBEGenerator(int i, int j)
    {
        if (i == 0)
        {
            switch (j)
            {
            default:
                throw new IllegalStateException("PKCS5 scheme 1 only supports only MD5 and SHA1.");

            case 0: // '\0'
                return new PKCS5S1ParametersGenerator(new MD5Digest());

            case 1: // '\001'
                return new PKCS5S1ParametersGenerator(new SHA1Digest());
            }
        }
        if (i == 1)
        {
            return new PKCS5S2ParametersGenerator();
        }
        if (i == 3)
        {
            switch (j)
            {
            default:
                throw new IllegalStateException("unknown digest scheme for PBE encryption.");

            case 0: // '\0'
                return new OldPKCS12ParametersGenerator(new MD5Digest());

            case 1: // '\001'
                return new OldPKCS12ParametersGenerator(new SHA1Digest());

            case 2: // '\002'
                return new OldPKCS12ParametersGenerator(new RIPEMD160Digest());
            }
        }
        switch (j)
        {
        default:
            throw new IllegalStateException("unknown digest scheme for PBE encryption.");

        case 0: // '\0'
            return new PKCS12ParametersGenerator(new MD5Digest());

        case 1: // '\001'
            return new PKCS12ParametersGenerator(new SHA1Digest());

        case 2: // '\002'
            return new PKCS12ParametersGenerator(new RIPEMD160Digest());
        }
    }

    static CipherParameters makePBEMacParameters(JCEPBEKey jcepbekey, AlgorithmParameterSpec algorithmparameterspec, int i, int j, int k)
    {
        if (algorithmparameterspec == null || !(algorithmparameterspec instanceof PBEParameterSpec))
        {
            throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
        }
        algorithmparameterspec = (PBEParameterSpec)algorithmparameterspec;
        PBEParametersGenerator pbeparametersgenerator = makePBEGenerator(i, j);
        jcepbekey = jcepbekey.getEncoded();
        pbeparametersgenerator.init(jcepbekey, algorithmparameterspec.getSalt(), algorithmparameterspec.getIterationCount());
        algorithmparameterspec = pbeparametersgenerator.generateDerivedMacParameters(k);
        for (i = 0; i != jcepbekey.length; i++)
        {
            jcepbekey[i] = 0;
        }

        return algorithmparameterspec;
    }

    static CipherParameters makePBEParameters(JCEPBEKey jcepbekey, AlgorithmParameterSpec algorithmparameterspec, int i, int j, String s, int k, int l)
    {
        if (algorithmparameterspec == null || !(algorithmparameterspec instanceof PBEParameterSpec))
        {
            throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
        }
        PBEParameterSpec pbeparameterspec = (PBEParameterSpec)algorithmparameterspec;
        PBEParametersGenerator pbeparametersgenerator = makePBEGenerator(i, j);
        algorithmparameterspec = jcepbekey.getEncoded();
        pbeparametersgenerator.init(algorithmparameterspec, pbeparameterspec.getSalt(), pbeparameterspec.getIterationCount());
        if (l != 0)
        {
            jcepbekey = pbeparametersgenerator.generateDerivedParameters(k, l);
        } else
        {
            jcepbekey = pbeparametersgenerator.generateDerivedParameters(k);
        }
        if (s.startsWith("DES"))
        {
            if (jcepbekey instanceof ParametersWithIV)
            {
                setOddParity(((KeyParameter)((ParametersWithIV)jcepbekey).getParameters()).getKey());
            } else
            {
                setOddParity(((KeyParameter)jcepbekey).getKey());
            }
        }
        for (i = 0; i != algorithmparameterspec.length; i++)
        {
            algorithmparameterspec[i] = 0;
        }

        return jcepbekey;
    }

    private static void setOddParity(byte abyte0[])
    {
        for (int i = 0; i < abyte0.length; i++)
        {
            byte byte0 = abyte0[i];
            abyte0[i] = (byte)(byte0 >> 7 ^ (byte0 >> 1 ^ byte0 >> 2 ^ byte0 >> 3 ^ byte0 >> 4 ^ byte0 >> 5 ^ byte0 >> 6) ^ 1 | byte0 & 0xfe);
        }

    }

    public r()
    {
    }
}
