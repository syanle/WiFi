// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.tsp;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

public class Accuracy extends ASN1Encodable
{

    protected static final int MAX_MICROS = 999;
    protected static final int MAX_MILLIS = 999;
    protected static final int MIN_MICROS = 1;
    protected static final int MIN_MILLIS = 1;
    DERInteger micros;
    DERInteger millis;
    DERInteger seconds;

    protected Accuracy()
    {
    }

    public Accuracy(ASN1Sequence asn1sequence)
    {
        int i;
        seconds = null;
        millis = null;
        micros = null;
        i = 0;
_L5:
        if (i >= asn1sequence.size()) goto _L2; else goto _L1
_L1:
        if (!(asn1sequence.getObjectAt(i) instanceof DERInteger)) goto _L4; else goto _L3
_L3:
        seconds = (DERInteger)asn1sequence.getObjectAt(i);
_L6:
        i++;
          goto _L5
_L4:
        if (asn1sequence.getObjectAt(i) instanceof DERTaggedObject)
        {
            DERTaggedObject dertaggedobject = (DERTaggedObject)asn1sequence.getObjectAt(i);
            switch (dertaggedobject.getTagNo())
            {
            default:
                throw new IllegalArgumentException("Invalig tag number");

            case 0: // '\0'
                millis = DERInteger.getInstance(dertaggedobject, false);
                if (millis.getValue().intValue() < 1 || millis.getValue().intValue() > 999)
                {
                    throw new IllegalArgumentException("Invalid millis field : not in (1..999).");
                }
                break;

            case 1: // '\001'
                micros = DERInteger.getInstance(dertaggedobject, false);
                if (micros.getValue().intValue() < 1 || micros.getValue().intValue() > 999)
                {
                    throw new IllegalArgumentException("Invalid micros field : not in (1..999).");
                }
                break;
            }
        }
        if (true) goto _L6; else goto _L2
_L2:
    }

    public Accuracy(DERInteger derinteger, DERInteger derinteger1, DERInteger derinteger2)
    {
        seconds = derinteger;
        if (derinteger1 != null && (derinteger1.getValue().intValue() < 1 || derinteger1.getValue().intValue() > 999))
        {
            throw new IllegalArgumentException("Invalid millis field : not in (1..999)");
        }
        millis = derinteger1;
        if (derinteger2 != null && (derinteger2.getValue().intValue() < 1 || derinteger2.getValue().intValue() > 999))
        {
            throw new IllegalArgumentException("Invalid micros field : not in (1..999)");
        } else
        {
            micros = derinteger2;
            return;
        }
    }

    public static Accuracy getInstance(Object obj)
    {
        if (obj == null || (obj instanceof Accuracy))
        {
            return (Accuracy)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new Accuracy((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown object in 'Accuracy' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public DERInteger getMicros()
    {
        return micros;
    }

    public DERInteger getMillis()
    {
        return millis;
    }

    public DERInteger getSeconds()
    {
        return seconds;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (seconds != null)
        {
            asn1encodablevector.add(seconds);
        }
        if (millis != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, millis));
        }
        if (micros != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, micros));
        }
        return new DERSequence(asn1encodablevector);
    }
}
