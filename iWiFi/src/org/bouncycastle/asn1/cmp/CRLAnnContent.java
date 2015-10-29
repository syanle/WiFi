// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x509.CertificateList;

public class CRLAnnContent extends ASN1Encodable
{

    private ASN1Sequence content;

    private CRLAnnContent(ASN1Sequence asn1sequence)
    {
        content = asn1sequence;
    }

    public static CRLAnnContent getInstance(Object obj)
    {
        if (obj instanceof CRLAnnContent)
        {
            return (CRLAnnContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CRLAnnContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject toASN1Object()
    {
        return content;
    }

    public CertificateList[] toCertificateListArray()
    {
        CertificateList acertificatelist[] = new CertificateList[content.size()];
        for (int i = 0; i != acertificatelist.length; i++)
        {
            acertificatelist[i] = CertificateList.getInstance(content.getObjectAt(i));
        }

        return acertificatelist;
    }
}
