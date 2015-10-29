// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            DisplayText

public class NoticeReference extends ASN1Encodable
{

    private ASN1Sequence noticeNumbers;
    private DisplayText organization;

    public NoticeReference(int i, String s, ASN1Sequence asn1sequence)
    {
        organization = new DisplayText(i, s);
        noticeNumbers = asn1sequence;
    }

    public NoticeReference(String s, Vector vector)
    {
        organization = new DisplayText(s);
        Object obj = vector.elementAt(0);
        s = new ASN1EncodableVector();
        if (obj instanceof Integer)
        {
            for (vector = vector.elements(); vector.hasMoreElements(); s.add(new DERInteger(((Integer)vector.nextElement()).intValue()))) { }
        }
        noticeNumbers = new DERSequence(s);
    }

    public NoticeReference(String s, ASN1Sequence asn1sequence)
    {
        organization = new DisplayText(s);
        noticeNumbers = asn1sequence;
    }

    public NoticeReference(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        } else
        {
            organization = DisplayText.getInstance(asn1sequence.getObjectAt(0));
            noticeNumbers = ASN1Sequence.getInstance(asn1sequence.getObjectAt(1));
            return;
        }
    }

    public static NoticeReference getInstance(Object obj)
    {
        if (obj instanceof NoticeReference)
        {
            return (NoticeReference)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new NoticeReference((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance.");
        }
    }

    public ASN1Sequence getNoticeNumbers()
    {
        return noticeNumbers;
    }

    public DisplayText getOrganization()
    {
        return organization;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(organization);
        asn1encodablevector.add(noticeNumbers);
        return new DERSequence(asn1encodablevector);
    }
}
