// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.DisplayText;
import org.bouncycastle.asn1.x509.NoticeReference;

public class SPUserNotice
{

    private DisplayText explicitText;
    private NoticeReference noticeRef;

    public SPUserNotice(ASN1Sequence asn1sequence)
    {
        for (asn1sequence = asn1sequence.getObjects(); asn1sequence.hasMoreElements();)
        {
            DEREncodable derencodable = (DEREncodable)asn1sequence.nextElement();
            if (derencodable instanceof NoticeReference)
            {
                noticeRef = NoticeReference.getInstance(derencodable);
            } else
            if (derencodable instanceof DisplayText)
            {
                explicitText = DisplayText.getInstance(derencodable);
            } else
            {
                throw new IllegalArgumentException("Invalid element in 'SPUserNotice'.");
            }
        }

    }

    public SPUserNotice(NoticeReference noticereference, DisplayText displaytext)
    {
        noticeRef = noticereference;
        explicitText = displaytext;
    }

    public static SPUserNotice getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SPUserNotice))
        {
            return (SPUserNotice)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SPUserNotice((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'SPUserNotice' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public DisplayText getExplicitText()
    {
        return explicitText;
    }

    public NoticeReference getNoticeRef()
    {
        return noticeRef;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (noticeRef != null)
        {
            asn1encodablevector.add(noticeRef);
        }
        if (explicitText != null)
        {
            asn1encodablevector.add(explicitText);
        }
        return new DERSequence(asn1encodablevector);
    }
}
