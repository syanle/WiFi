// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RSASSAPSSparams;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKAlgorithmParameters, JCEDigestUtil

public static class  extends JDKAlgorithmParameters
{

    PSSParameterSpec currentSpec;

    protected byte[] engineGetEncoded()
        throws IOException
    {
        PSSParameterSpec pssparameterspec = currentSpec;
        AlgorithmIdentifier algorithmidentifier = new AlgorithmIdentifier(JCEDigestUtil.getOID(pssparameterspec.getDigestAlgorithm()), new DERNull());
        MGF1ParameterSpec mgf1parameterspec = (MGF1ParameterSpec)pssparameterspec.getMGFParameters();
        return (new RSASSAPSSparams(algorithmidentifier, new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, new AlgorithmIdentifier(JCEDigestUtil.getOID(mgf1parameterspec.getDigestAlgorithm()), new DERNull())), new DERInteger(pssparameterspec.getSaltLength()), new DERInteger(pssparameterspec.getTrailerField()))).getEncoded("DER");
    }

    protected byte[] engineGetEncoded(String s)
        throws IOException
    {
        if (s.equalsIgnoreCase("X.509") || s.equalsIgnoreCase("ASN.1"))
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
        if (!(algorithmparameterspec instanceof PSSParameterSpec))
        {
            throw new InvalidParameterSpecException("PSSParameterSpec required to initialise an PSS algorithm parameters object");
        } else
        {
            currentSpec = (PSSParameterSpec)algorithmparameterspec;
            return;
        }
    }

    protected void engineInit(byte abyte0[])
        throws IOException
    {
        try
        {
            abyte0 = new RSASSAPSSparams((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
            currentSpec = new PSSParameterSpec(abyte0.getHashAlgorithm().getObjectId().getId(), abyte0.getMaskGenAlgorithm().getObjectId().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.getInstance(abyte0.getMaskGenAlgorithm().getParameters()).getObjectId().getId()), abyte0.getSaltLength().getValue().intValue(), abyte0.getTrailerField().getValue().intValue());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException("Not a valid PSS Parameter encoding.");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException("Not a valid PSS Parameter encoding.");
        }
    }

    protected void engineInit(byte abyte0[], String s)
        throws IOException
    {
        if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
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
        return "PSS Parameters";
    }

    protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
        throws InvalidParameterSpecException
    {
        if (class1 == java/security/spec/PSSParameterSpec && currentSpec != null)
        {
            return currentSpec;
        } else
        {
            throw new InvalidParameterSpecException("unknown parameter spec passed to PSS parameters object.");
        }
    }

    public ()
    {
    }
}
