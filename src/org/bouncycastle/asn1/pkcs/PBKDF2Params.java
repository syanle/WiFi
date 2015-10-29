// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;

public class PBKDF2Params extends ASN1Encodable
{

    DERInteger iterationCount;
    DERInteger keyLength;
    ASN1OctetString octStr;

    public PBKDF2Params(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        octStr = (ASN1OctetString)asn1sequence.nextElement();
        iterationCount = (DERInteger)asn1sequence.nextElement();
        if (asn1sequence.hasMoreElements())
        {
            keyLength = (DERInteger)asn1sequence.nextElement();
            return;
        } else
        {
            keyLength = null;
            return;
        }
    }

    public PBKDF2Params(byte abyte0[], int i)
    {
        octStr = new DEROctetString(abyte0);
        iterationCount = new DERInteger(i);
    }

    public static PBKDF2Params getInstance(Object obj)
    {
        if (obj instanceof PBKDF2Params)
        {
            return (PBKDF2Params)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PBKDF2Params((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public BigInteger getIterationCount()
    {
        return iterationCount.getValue();
    }

    public BigInteger getKeyLength()
    {
        if (keyLength != null)
        {
            return keyLength.getValue();
        } else
        {
            return null;
        }
    }

    public byte[] getSalt()
    {
        return octStr.getOctets();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(octStr);
        asn1encodablevector.add(iterationCount);
        if (keyLength != null)
        {
            asn1encodablevector.add(keyLength);
        }
        return new DERSequence(asn1encodablevector);
    }
}
