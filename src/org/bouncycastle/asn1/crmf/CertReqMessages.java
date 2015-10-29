// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.crmf:
//            CertReqMsg

public class CertReqMessages extends ASN1Encodable
{

    private ASN1Sequence content;

    private CertReqMessages(ASN1Sequence asn1sequence)
    {
        content = asn1sequence;
    }

    public CertReqMessages(CertReqMsg certreqmsg)
    {
        content = new DERSequence(certreqmsg);
    }

    public CertReqMessages(CertReqMsg acertreqmsg[])
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i < acertreqmsg.length; i++)
        {
            asn1encodablevector.add(acertreqmsg[i]);
        }

        content = new DERSequence(asn1encodablevector);
    }

    public static CertReqMessages getInstance(Object obj)
    {
        if (obj instanceof CertReqMessages)
        {
            return (CertReqMessages)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertReqMessages((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject toASN1Object()
    {
        return content;
    }

    public CertReqMsg[] toCertReqMsgArray()
    {
        CertReqMsg acertreqmsg[] = new CertReqMsg[content.size()];
        for (int i = 0; i != acertreqmsg.length; i++)
        {
            acertreqmsg[i] = CertReqMsg.getInstance(content.getObjectAt(i));
        }

        return acertreqmsg;
    }
}
