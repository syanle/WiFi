// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.crmf:
//            CertTemplate, Controls

public class CertRequest extends ASN1Encodable
{

    private DERInteger certReqId;
    private CertTemplate certTemplate;
    private Controls controls;

    public CertRequest(int i, CertTemplate certtemplate, Controls controls1)
    {
        this(new DERInteger(i), certtemplate, controls1);
    }

    private CertRequest(ASN1Sequence asn1sequence)
    {
        certReqId = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        certTemplate = CertTemplate.getInstance(asn1sequence.getObjectAt(1));
        if (asn1sequence.size() > 2)
        {
            controls = Controls.getInstance(asn1sequence.getObjectAt(2));
        }
    }

    public CertRequest(DERInteger derinteger, CertTemplate certtemplate, Controls controls1)
    {
        certReqId = derinteger;
        certTemplate = certtemplate;
        controls = controls1;
    }

    public static CertRequest getInstance(Object obj)
    {
        if (obj instanceof CertRequest)
        {
            return (CertRequest)obj;
        }
        if (obj != null)
        {
            return new CertRequest(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public DERInteger getCertReqId()
    {
        return certReqId;
    }

    public CertTemplate getCertTemplate()
    {
        return certTemplate;
    }

    public Controls getControls()
    {
        return controls;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(certReqId);
        asn1encodablevector.add(certTemplate);
        if (controls != null)
        {
            asn1encodablevector.add(controls);
        }
        return new DERSequence(asn1encodablevector);
    }
}
