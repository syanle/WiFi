// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ess;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;

public class ContentIdentifier extends ASN1Encodable
{

    ASN1OctetString value;

    public ContentIdentifier(ASN1OctetString asn1octetstring)
    {
        value = asn1octetstring;
    }

    public ContentIdentifier(byte abyte0[])
    {
        this(((ASN1OctetString) (new DEROctetString(abyte0))));
    }

    public static ContentIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ContentIdentifier))
        {
            return (ContentIdentifier)obj;
        }
        if (obj instanceof ASN1OctetString)
        {
            return new ContentIdentifier((ASN1OctetString)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'ContentIdentifier' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public ASN1OctetString getValue()
    {
        return value;
    }

    public DERObject toASN1Object()
    {
        return value;
    }
}
