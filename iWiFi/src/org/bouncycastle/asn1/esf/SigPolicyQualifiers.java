// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.esf:
//            SigPolicyQualifierInfo

public class SigPolicyQualifiers extends ASN1Encodable
{

    ASN1Sequence qualifiers;

    public SigPolicyQualifiers(ASN1Sequence asn1sequence)
    {
        qualifiers = asn1sequence;
    }

    public SigPolicyQualifiers(SigPolicyQualifierInfo asigpolicyqualifierinfo[])
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i < asigpolicyqualifierinfo.length; i++)
        {
            asn1encodablevector.add(asigpolicyqualifierinfo[i]);
        }

        qualifiers = new DERSequence(asn1encodablevector);
    }

    public static SigPolicyQualifiers getInstance(Object obj)
    {
        if (obj instanceof SigPolicyQualifiers)
        {
            return (SigPolicyQualifiers)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SigPolicyQualifiers((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'SigPolicyQualifiers' factory: ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public SigPolicyQualifierInfo getStringAt(int i)
    {
        return SigPolicyQualifierInfo.getInstance(qualifiers.getObjectAt(i));
    }

    public int size()
    {
        return qualifiers.size();
    }

    public DERObject toASN1Object()
    {
        return qualifiers;
    }
}
