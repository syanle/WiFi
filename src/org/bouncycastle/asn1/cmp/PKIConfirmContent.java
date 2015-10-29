// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;

public class PKIConfirmContent extends ASN1Encodable
{

    private ASN1Null val;

    public PKIConfirmContent()
    {
        val = DERNull.INSTANCE;
    }

    private PKIConfirmContent(ASN1Null asn1null)
    {
        val = asn1null;
    }

    public static PKIConfirmContent getInstance(Object obj)
    {
        if (obj instanceof PKIConfirmContent)
        {
            return (PKIConfirmContent)obj;
        }
        if (obj instanceof ASN1Null)
        {
            return new PKIConfirmContent((ASN1Null)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject toASN1Object()
    {
        return val;
    }
}
