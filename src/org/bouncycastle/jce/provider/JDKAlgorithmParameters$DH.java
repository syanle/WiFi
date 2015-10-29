// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.pkcs.DHParameter;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKAlgorithmParameters

public static class  extends JDKAlgorithmParameters
{

    DHParameterSpec currentSpec;

    protected byte[] engineGetEncoded()
    {
        DHParameter dhparameter = new DHParameter(currentSpec.getP(), currentSpec.getG(), currentSpec.getL());
        byte abyte0[];
        try
        {
            abyte0 = dhparameter.getEncoded("DER");
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Error encoding DHParameters");
        }
        return abyte0;
    }

    protected byte[] engineGetEncoded(String s)
    {
        if (isASN1FormatString(s))
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
        if (!(algorithmparameterspec instanceof DHParameterSpec))
        {
            throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
        } else
        {
            currentSpec = (DHParameterSpec)algorithmparameterspec;
            return;
        }
    }

    protected void engineInit(byte abyte0[])
        throws IOException
    {
        try
        {
            abyte0 = new DHParameter((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
            if (abyte0.getL() != null)
            {
                currentSpec = new DHParameterSpec(abyte0.getP(), abyte0.getG(), abyte0.getL().intValue());
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException("Not a valid DH Parameter encoding.");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException("Not a valid DH Parameter encoding.");
        }
        currentSpec = new DHParameterSpec(abyte0.getP(), abyte0.getG());
        return;
    }

    protected void engineInit(byte abyte0[], String s)
        throws IOException
    {
        if (isASN1FormatString(s))
        {
            engineInit(abyte0);
            return;
        } else
        {
            throw new IOException((new StringBuilder()).append("Unknown parameter format ").append(s).toString());
        }
    }

    protected String engineToString()
    {
        return "Diffie-Hellman Parameters";
    }

    protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
        throws InvalidParameterSpecException
    {
        if (class1 == javax/crypto/spec/DHParameterSpec)
        {
            return currentSpec;
        } else
        {
            throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
        }
    }

    public ()
    {
    }
}
