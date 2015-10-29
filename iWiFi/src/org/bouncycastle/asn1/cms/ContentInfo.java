// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            CMSObjectIdentifiers

public class ContentInfo extends ASN1Encodable
    implements CMSObjectIdentifiers
{

    private DEREncodable content;
    private ASN1ObjectIdentifier contentType;

    public ContentInfo(ASN1ObjectIdentifier asn1objectidentifier, DEREncodable derencodable)
    {
        contentType = asn1objectidentifier;
        content = derencodable;
    }

    public ContentInfo(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 1 || asn1sequence.size() > 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        contentType = (ASN1ObjectIdentifier)asn1sequence.getObjectAt(0);
        if (asn1sequence.size() > 1)
        {
            asn1sequence = (ASN1TaggedObject)asn1sequence.getObjectAt(1);
            if (!asn1sequence.isExplicit() || asn1sequence.getTagNo() != 0)
            {
                throw new IllegalArgumentException("Bad tag for 'content'");
            }
            content = asn1sequence.getObject();
        }
    }

    public static ContentInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ContentInfo))
        {
            return (ContentInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ContentInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public DEREncodable getContent()
    {
        return content;
    }

    public ASN1ObjectIdentifier getContentType()
    {
        return contentType;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(contentType);
        if (content != null)
        {
            asn1encodablevector.add(new BERTaggedObject(0, content));
        }
        return new BERSequence(asn1encodablevector);
    }
}
