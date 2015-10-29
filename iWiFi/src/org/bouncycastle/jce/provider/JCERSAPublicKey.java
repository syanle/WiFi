// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.RSAPublicKeyStructure;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.params.RSAKeyParameters;

public class JCERSAPublicKey
    implements RSAPublicKey
{

    static final long serialVersionUID = 0x25226a0e5bfa6c84L;
    private BigInteger modulus;
    private BigInteger publicExponent;

    JCERSAPublicKey(RSAPublicKey rsapublickey)
    {
        modulus = rsapublickey.getModulus();
        publicExponent = rsapublickey.getPublicExponent();
    }

    JCERSAPublicKey(RSAPublicKeySpec rsapublickeyspec)
    {
        modulus = rsapublickeyspec.getModulus();
        publicExponent = rsapublickeyspec.getPublicExponent();
    }

    JCERSAPublicKey(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        try
        {
            subjectpublickeyinfo = new RSAPublicKeyStructure((ASN1Sequence)subjectpublickeyinfo.getPublicKey());
            modulus = subjectpublickeyinfo.getModulus();
            publicExponent = subjectpublickeyinfo.getPublicExponent();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SubjectPublicKeyInfo subjectpublickeyinfo)
        {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    JCERSAPublicKey(RSAKeyParameters rsakeyparameters)
    {
        modulus = rsakeyparameters.getModulus();
        publicExponent = rsakeyparameters.getExponent();
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof RSAPublicKey))
            {
                return false;
            }
            obj = (RSAPublicKey)obj;
            if (!getModulus().equals(((RSAPublicKey) (obj)).getModulus()) || !getPublicExponent().equals(((RSAPublicKey) (obj)).getPublicExponent()))
            {
                return false;
            }
        }
        return true;
    }

    public String getAlgorithm()
    {
        return "RSA";
    }

    public byte[] getEncoded()
    {
        return (new SubjectPublicKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.rsaEncryption, new DERNull()), (new RSAPublicKeyStructure(getModulus(), getPublicExponent())).getDERObject())).getDEREncoded();
    }

    public String getFormat()
    {
        return "X.509";
    }

    public BigInteger getModulus()
    {
        return modulus;
    }

    public BigInteger getPublicExponent()
    {
        return publicExponent;
    }

    public int hashCode()
    {
        return getModulus().hashCode() ^ getPublicExponent().hashCode();
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = System.getProperty("line.separator");
        stringbuffer.append("RSA Public Key").append(s);
        stringbuffer.append("            modulus: ").append(getModulus().toString(16)).append(s);
        stringbuffer.append("    public exponent: ").append(getPublicExponent().toString(16)).append(s);
        return stringbuffer.toString();
    }
}
