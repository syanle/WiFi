// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ess;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERUTF8String;

public class ContentHints extends ASN1Encodable
{

    private DERUTF8String contentDescription;
    private DERObjectIdentifier contentType;

    private ContentHints(ASN1Sequence asn1sequence)
    {
        DEREncodable derencodable = asn1sequence.getObjectAt(0);
        if (derencodable.getDERObject() instanceof DERUTF8String)
        {
            contentDescription = DERUTF8String.getInstance(derencodable);
            contentType = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(1));
            return;
        } else
        {
            contentType = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
            return;
        }
    }

    public ContentHints(DERObjectIdentifier derobjectidentifier)
    {
        contentType = derobjectidentifier;
        contentDescription = null;
    }

    public ContentHints(DERObjectIdentifier derobjectidentifier, DERUTF8String derutf8string)
    {
        contentType = derobjectidentifier;
        contentDescription = derutf8string;
    }

    public static ContentHints getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ContentHints))
        {
            return (ContentHints)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ContentHints((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'ContentHints' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public DERUTF8String getContentDescription()
    {
        return contentDescription;
    }

    public DERObjectIdentifier getContentType()
    {
        return contentType;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (contentDescription != null)
        {
            asn1encodablevector.add(contentDescription);
        }
        asn1encodablevector.add(contentType);
        return new DERSequence(asn1encodablevector);
    }
}
