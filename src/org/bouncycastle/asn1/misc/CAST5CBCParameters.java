// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.misc;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;

public class CAST5CBCParameters extends ASN1Encodable
{

    ASN1OctetString iv;
    DERInteger keyLength;

    public CAST5CBCParameters(ASN1Sequence asn1sequence)
    {
        iv = (ASN1OctetString)asn1sequence.getObjectAt(0);
        keyLength = (DERInteger)asn1sequence.getObjectAt(1);
    }

    public CAST5CBCParameters(byte abyte0[], int i)
    {
        iv = new DEROctetString(abyte0);
        keyLength = new DERInteger(i);
    }

    public static CAST5CBCParameters getInstance(Object obj)
    {
        if (obj instanceof CAST5CBCParameters)
        {
            return (CAST5CBCParameters)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CAST5CBCParameters((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("unknown object in CAST5CBCParameter factory");
        }
    }

    public byte[] getIV()
    {
        return iv.getOctets();
    }

    public int getKeyLength()
    {
        return keyLength.getValue().intValue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(iv);
        asn1encodablevector.add(keyLength);
        return new DERSequence(asn1encodablevector);
    }
}
