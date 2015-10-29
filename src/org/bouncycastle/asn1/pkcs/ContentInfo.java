// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.pkcs:
//            PKCSObjectIdentifiers

public class ContentInfo extends ASN1Encodable
    implements PKCSObjectIdentifiers
{

    private DEREncodable content;
    private DERObjectIdentifier contentType;

    public ContentInfo(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        contentType = (DERObjectIdentifier)asn1sequence.nextElement();
        if (asn1sequence.hasMoreElements())
        {
            content = ((DERTaggedObject)asn1sequence.nextElement()).getObject();
        }
    }

    public ContentInfo(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        contentType = derobjectidentifier;
        content = derencodable;
    }

    public static ContentInfo getInstance(Object obj)
    {
        if (obj instanceof ContentInfo)
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

    public DERObjectIdentifier getContentType()
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
