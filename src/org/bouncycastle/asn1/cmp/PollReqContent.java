// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;

public class PollReqContent extends ASN1Encodable
{

    private ASN1Sequence content;

    private PollReqContent(ASN1Sequence asn1sequence)
    {
        content = asn1sequence;
    }

    public static PollReqContent getInstance(Object obj)
    {
        if (obj instanceof PollReqContent)
        {
            return (PollReqContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PollReqContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    private DERInteger[] seqenceToDERIntegerArray(ASN1Sequence asn1sequence)
    {
        DERInteger aderinteger[] = new DERInteger[asn1sequence.size()];
        for (int i = 0; i != aderinteger.length; i++)
        {
            aderinteger[i] = DERInteger.getInstance(asn1sequence.getObjectAt(i));
        }

        return aderinteger;
    }

    public DERInteger[][] getCertReqIds()
    {
        DERInteger aderinteger[][] = new DERInteger[content.size()][];
        for (int i = 0; i != aderinteger.length; i++)
        {
            aderinteger[i] = seqenceToDERIntegerArray((ASN1Sequence)content.getObjectAt(i));
        }

        return aderinteger;
    }

    public DERObject toASN1Object()
    {
        return content;
    }
}
