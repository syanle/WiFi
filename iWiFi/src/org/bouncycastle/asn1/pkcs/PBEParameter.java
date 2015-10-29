// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;

public class PBEParameter extends ASN1Encodable
{

    DERInteger iterations;
    ASN1OctetString salt;

    public PBEParameter(ASN1Sequence asn1sequence)
    {
        salt = (ASN1OctetString)asn1sequence.getObjectAt(0);
        iterations = (DERInteger)asn1sequence.getObjectAt(1);
    }

    public PBEParameter(byte abyte0[], int i)
    {
        if (abyte0.length != 8)
        {
            throw new IllegalArgumentException("salt length must be 8");
        } else
        {
            salt = new DEROctetString(abyte0);
            iterations = new DERInteger(i);
            return;
        }
    }

    public static PBEParameter getInstance(Object obj)
    {
        if (obj instanceof PBEParameter)
        {
            return (PBEParameter)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PBEParameter((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public BigInteger getIterationCount()
    {
        return iterations.getValue();
    }

    public byte[] getSalt()
    {
        return salt.getOctets();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(salt);
        asn1encodablevector.add(iterations);
        return new DERSequence(asn1encodablevector);
    }
}
