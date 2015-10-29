// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERUTF8String;

public class PKIFreeText extends ASN1Encodable
{

    ASN1Sequence strings;

    public PKIFreeText(ASN1Sequence asn1sequence)
    {
        for (Enumeration enumeration = asn1sequence.getObjects(); enumeration.hasMoreElements();)
        {
            if (!(enumeration.nextElement() instanceof DERUTF8String))
            {
                throw new IllegalArgumentException("attempt to insert non UTF8 STRING into PKIFreeText");
            }
        }

        strings = asn1sequence;
    }

    public PKIFreeText(DERUTF8String derutf8string)
    {
        strings = new DERSequence(derutf8string);
    }

    public PKIFreeText(String as[])
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i < as.length; i++)
        {
            asn1encodablevector.add(new DERUTF8String(as[i]));
        }

        strings = new DERSequence(asn1encodablevector);
    }

    public PKIFreeText(DERUTF8String aderutf8string[])
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i < aderutf8string.length; i++)
        {
            asn1encodablevector.add(aderutf8string[i]);
        }

        strings = new DERSequence(asn1encodablevector);
    }

    public static PKIFreeText getInstance(Object obj)
    {
        if (obj instanceof PKIFreeText)
        {
            return (PKIFreeText)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PKIFreeText((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static PKIFreeText getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERUTF8String getStringAt(int i)
    {
        return (DERUTF8String)strings.getObjectAt(i);
    }

    public int size()
    {
        return strings.size();
    }

    public DERObject toASN1Object()
    {
        return strings;
    }
}
