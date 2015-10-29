// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RSAESOAEPparams;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JDKAlgorithmParameters, JCEDigestUtil

public static class  extends JDKAlgorithmParameters
{

    OAEPParameterSpec currentSpec;

    protected byte[] engineGetEncoded()
    {
        Object obj = new AlgorithmIdentifier(JCEDigestUtil.getOID(currentSpec.getDigestAlgorithm()), new DERNull());
        Object obj1 = (MGF1ParameterSpec)currentSpec.getMGFParameters();
        obj1 = new AlgorithmIdentifier(PKCSObjectIdentifiers.id_mgf1, new AlgorithmIdentifier(JCEDigestUtil.getOID(((MGF1ParameterSpec) (obj1)).getDigestAlgorithm()), new DERNull()));
        javax.crypto.spec.  = (javax.crypto.spec.Algorithm)currentSpec.getPSource();
        obj = new RSAESOAEPparams(((AlgorithmIdentifier) (obj)), ((AlgorithmIdentifier) (obj1)), new AlgorithmIdentifier(PKCSObjectIdentifiers.id_pSpecified, new DEROctetString(.id_pSpecified())));
        byte abyte0[];
        try
        {
            abyte0 = ((RSAESOAEPparams) (obj)).getEncoded("DER");
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Error encoding OAEPParameters");
        }
        return abyte0;
    }

    protected byte[] engineGetEncoded(String s)
    {
        if (isASN1FormatString(s) || s.equalsIgnoreCase("X.509"))
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
        if (!(algorithmparameterspec instanceof OAEPParameterSpec))
        {
            throw new InvalidParameterSpecException("OAEPParameterSpec required to initialise an OAEP algorithm parameters object");
        } else
        {
            currentSpec = (OAEPParameterSpec)algorithmparameterspec;
            return;
        }
    }

    protected void engineInit(byte abyte0[])
        throws IOException
    {
        try
        {
            abyte0 = new RSAESOAEPparams((ASN1Sequence)ASN1Object.fromByteArray(abyte0));
            currentSpec = new OAEPParameterSpec(abyte0.getHashAlgorithm().getObjectId().getId(), abyte0.getMaskGenAlgorithm().getObjectId().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.getInstance(abyte0.getMaskGenAlgorithm().getParameters()).getObjectId().getId()), new javax.crypto.spec.d(ASN1OctetString.getInstance(abyte0.getPSourceAlgorithm().getParameters()).getOctets()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException("Not a valid OAEP Parameter encoding.");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException("Not a valid OAEP Parameter encoding.");
        }
    }

    protected void engineInit(byte abyte0[], String s)
        throws IOException
    {
        if (s.equalsIgnoreCase("X.509") || s.equalsIgnoreCase("ASN.1"))
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
        return "OAEP Parameters";
    }

    protected AlgorithmParameterSpec localEngineGetParameterSpec(Class class1)
        throws InvalidParameterSpecException
    {
        if (class1 == javax/crypto/spec/OAEPParameterSpec && currentSpec != null)
        {
            return currentSpec;
        } else
        {
            throw new InvalidParameterSpecException("unknown parameter spec passed to OAEP parameters object.");
        }
    }

    public ()
    {
    }
}
