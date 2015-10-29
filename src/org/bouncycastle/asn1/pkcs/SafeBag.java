// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

public class SafeBag extends ASN1Encodable
{

    ASN1Set bagAttributes;
    DERObjectIdentifier bagId;
    DERObject bagValue;

    public SafeBag(ASN1Sequence asn1sequence)
    {
        bagId = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        bagValue = ((DERTaggedObject)asn1sequence.getObjectAt(1)).getObject();
        if (asn1sequence.size() == 3)
        {
            bagAttributes = (ASN1Set)asn1sequence.getObjectAt(2);
        }
    }

    public SafeBag(DERObjectIdentifier derobjectidentifier, DERObject derobject)
    {
        bagId = derobjectidentifier;
        bagValue = derobject;
        bagAttributes = null;
    }

    public SafeBag(DERObjectIdentifier derobjectidentifier, DERObject derobject, ASN1Set asn1set)
    {
        bagId = derobjectidentifier;
        bagValue = derobject;
        bagAttributes = asn1set;
    }

    public ASN1Set getBagAttributes()
    {
        return bagAttributes;
    }

    public DERObjectIdentifier getBagId()
    {
        return bagId;
    }

    public DERObject getBagValue()
    {
        return bagValue;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(bagId);
        asn1encodablevector.add(new DERTaggedObject(0, bagValue));
        if (bagAttributes != null)
        {
            asn1encodablevector.add(bagAttributes);
        }
        return new DERSequence(asn1encodablevector);
    }
}
