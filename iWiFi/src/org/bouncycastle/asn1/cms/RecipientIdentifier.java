// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            IssuerAndSerialNumber

public class RecipientIdentifier extends ASN1Encodable
    implements ASN1Choice
{

    private DEREncodable id;

    public RecipientIdentifier(ASN1OctetString asn1octetstring)
    {
        id = new DERTaggedObject(false, 0, asn1octetstring);
    }

    public RecipientIdentifier(DERObject derobject)
    {
        id = derobject;
    }

    public RecipientIdentifier(IssuerAndSerialNumber issuerandserialnumber)
    {
        id = issuerandserialnumber;
    }

    public static RecipientIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof RecipientIdentifier))
        {
            return (RecipientIdentifier)obj;
        }
        if (obj instanceof IssuerAndSerialNumber)
        {
            return new RecipientIdentifier((IssuerAndSerialNumber)obj);
        }
        if (obj instanceof ASN1OctetString)
        {
            return new RecipientIdentifier((ASN1OctetString)obj);
        }
        if (obj instanceof DERObject)
        {
            return new RecipientIdentifier((DERObject)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal object in RecipientIdentifier: ").append(obj.getClass().getName()).toString());
        }
    }

    public DEREncodable getId()
    {
        if (id instanceof ASN1TaggedObject)
        {
            return ASN1OctetString.getInstance((ASN1TaggedObject)id, false);
        } else
        {
            return IssuerAndSerialNumber.getInstance(id);
        }
    }

    public boolean isTagged()
    {
        return id instanceof ASN1TaggedObject;
    }

    public DERObject toASN1Object()
    {
        return id.getDERObject();
    }
}
