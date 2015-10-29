// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.cmp:
//            CertStatus

public class CertConfirmContent extends ASN1Encodable
{

    private ASN1Sequence content;

    private CertConfirmContent(ASN1Sequence asn1sequence)
    {
        content = asn1sequence;
    }

    public static CertConfirmContent getInstance(Object obj)
    {
        if (obj instanceof CertConfirmContent)
        {
            return (CertConfirmContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertConfirmContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject toASN1Object()
    {
        return content;
    }

    public CertStatus[] toCertStatusArray()
    {
        CertStatus acertstatus[] = new CertStatus[content.size()];
        for (int i = 0; i != acertstatus.length; i++)
        {
            acertstatus[i] = CertStatus.getInstance(content.getObjectAt(i));
        }

        return acertstatus;
    }
}
