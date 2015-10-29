// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.cmp:
//            PKIStatusInfo, CertifiedKeyPair

public class CertResponse extends ASN1Encodable
{

    private DERInteger certReqId;
    private CertifiedKeyPair certifiedKeyPair;
    private ASN1OctetString rspInfo;
    private PKIStatusInfo status;

    private CertResponse(ASN1Sequence asn1sequence)
    {
label0:
        {
label1:
            {
                super();
                certReqId = DERInteger.getInstance(asn1sequence.getObjectAt(0));
                status = PKIStatusInfo.getInstance(asn1sequence.getObjectAt(1));
                if (asn1sequence.size() >= 3)
                {
                    if (asn1sequence.size() != 3)
                    {
                        break label0;
                    }
                    asn1sequence = asn1sequence.getObjectAt(2);
                    if (!(asn1sequence instanceof ASN1OctetString))
                    {
                        break label1;
                    }
                    rspInfo = ASN1OctetString.getInstance(asn1sequence);
                }
                return;
            }
            certifiedKeyPair = CertifiedKeyPair.getInstance(asn1sequence);
            return;
        }
        certifiedKeyPair = CertifiedKeyPair.getInstance(asn1sequence.getObjectAt(2));
        rspInfo = ASN1OctetString.getInstance(asn1sequence.getObjectAt(3));
    }

    public CertResponse(DERInteger derinteger, PKIStatusInfo pkistatusinfo)
    {
        this(derinteger, pkistatusinfo, null, null);
    }

    public CertResponse(DERInteger derinteger, PKIStatusInfo pkistatusinfo, CertifiedKeyPair certifiedkeypair, ASN1OctetString asn1octetstring)
    {
        if (derinteger == null)
        {
            throw new IllegalArgumentException("'certReqId' cannot be null");
        }
        if (pkistatusinfo == null)
        {
            throw new IllegalArgumentException("'status' cannot be null");
        } else
        {
            certReqId = derinteger;
            status = pkistatusinfo;
            certifiedKeyPair = certifiedkeypair;
            rspInfo = asn1octetstring;
            return;
        }
    }

    public static CertResponse getInstance(Object obj)
    {
        if (obj instanceof CertResponse)
        {
            return (CertResponse)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertResponse((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERInteger getCertReqId()
    {
        return certReqId;
    }

    public CertifiedKeyPair getCertifiedKeyPair()
    {
        return certifiedKeyPair;
    }

    public PKIStatusInfo getStatus()
    {
        return status;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(certReqId);
        asn1encodablevector.add(status);
        if (certifiedKeyPair != null)
        {
            asn1encodablevector.add(certifiedKeyPair);
        }
        if (rspInfo != null)
        {
            asn1encodablevector.add(rspInfo);
        }
        return new DERSequence(asn1encodablevector);
    }
}
