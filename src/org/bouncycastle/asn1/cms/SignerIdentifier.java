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

public class SignerIdentifier extends ASN1Encodable
    implements ASN1Choice
{

    private DEREncodable id;

    public SignerIdentifier(ASN1OctetString asn1octetstring)
    {
        id = new DERTaggedObject(false, 0, asn1octetstring);
    }

    public SignerIdentifier(DERObject derobject)
    {
        id = derobject;
    }

    public SignerIdentifier(IssuerAndSerialNumber issuerandserialnumber)
    {
        id = issuerandserialnumber;
    }

    public static SignerIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SignerIdentifier))
        {
            return (SignerIdentifier)obj;
        }
        if (obj instanceof IssuerAndSerialNumber)
        {
            return new SignerIdentifier((IssuerAndSerialNumber)obj);
        }
        if (obj instanceof ASN1OctetString)
        {
            return new SignerIdentifier((ASN1OctetString)obj);
        }
        if (obj instanceof DERObject)
        {
            return new SignerIdentifier((DERObject)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal object in SignerIdentifier: ").append(obj.getClass().getName()).toString());
        }
    }

    public DEREncodable getId()
    {
        if (id instanceof ASN1TaggedObject)
        {
            return ASN1OctetString.getInstance((ASN1TaggedObject)id, false);
        } else
        {
            return id;
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
