// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.asn1.DEROctetString;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKAlgorithmParameters, JDKECDSAAlgParameters

public static class  extends JDKAlgorithmParameters
{

    protected byte[] engineGetEncoded()
        throws IOException
    {
        return engineGetEncoded("ASN.1");
    }

    protected byte[] engineGetEncoded(String s)
        throws IOException
    {
        if (s == null)
        {
            return engineGetEncoded("ASN.1");
        }
        if (s.equals("ASN.1"))
        {
            return (new DEROctetString(engineGetEncoded("RAW"))).getEncoded();
        } else
        {
            return null;
        }
    }

    protected void engineInit(AlgorithmParameterSpec algorithmparameterspec)
        throws InvalidParameterSpecException
    {
        throw new InvalidParameterSpecException("unknown parameter spec passed to ECDSA parameters object.");
    }

    protected void engineInit(byte abyte0[])
        throws IOException
    {
    }

    protected void engineInit(byte abyte0[], String s)
        throws IOException
    {
        throw new IOException("Unknown parameters format in IV parameters object");
    }

    protected String engineToString()
    {
        return "ECDSA Parameters";
    }

    protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
        throws InvalidParameterSpecException
    {
        throw new InvalidParameterSpecException("unknown parameter spec passed to ECDSA parameters object.");
    }

    public ()
    {
    }
}
