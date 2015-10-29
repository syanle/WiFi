// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.cmp:
//            InfoTypeAndValue

public class GenMsgContent extends ASN1Encodable
{

    private ASN1Sequence content;

    private GenMsgContent(ASN1Sequence asn1sequence)
    {
        content = asn1sequence;
    }

    public GenMsgContent(InfoTypeAndValue infotypeandvalue)
    {
        content = new DERSequence(infotypeandvalue);
    }

    public GenMsgContent(InfoTypeAndValue ainfotypeandvalue[])
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i < ainfotypeandvalue.length; i++)
        {
            asn1encodablevector.add(ainfotypeandvalue[i]);
        }

        content = new DERSequence(asn1encodablevector);
    }

    public static GenMsgContent getInstance(Object obj)
    {
        if (obj instanceof GenMsgContent)
        {
            return (GenMsgContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new GenMsgContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject toASN1Object()
    {
        return content;
    }

    public InfoTypeAndValue[] toInfoTypeAndValueArray()
    {
        InfoTypeAndValue ainfotypeandvalue[] = new InfoTypeAndValue[content.size()];
        for (int i = 0; i != ainfotypeandvalue.length; i++)
        {
            ainfotypeandvalue[i] = InfoTypeAndValue.getInstance(content.getObjectAt(i));
        }

        return ainfotypeandvalue;
    }
}
