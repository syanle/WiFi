// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;

public class POPODecKeyRespContent extends ASN1Encodable
{

    private ASN1Sequence content;

    private POPODecKeyRespContent(ASN1Sequence asn1sequence)
    {
        content = asn1sequence;
    }

    public static POPODecKeyRespContent getInstance(Object obj)
    {
        if (obj instanceof POPODecKeyRespContent)
        {
            return (POPODecKeyRespContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new POPODecKeyRespContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject toASN1Object()
    {
        return content;
    }

    public DERInteger[] toDERIntegerArray()
    {
        DERInteger aderinteger[] = new DERInteger[content.size()];
        for (int i = 0; i != aderinteger.length; i++)
        {
            aderinteger[i] = DERInteger.getInstance(content.getObjectAt(i));
        }

        return aderinteger;
    }
}
