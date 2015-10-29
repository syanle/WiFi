// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.crmf.CertId;
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.cmp:
//            PKIStatus

public class RevAnnContent extends ASN1Encodable
{

    private DERGeneralizedTime badSinceDate;
    private CertId certId;
    private X509Extensions crlDetails;
    private PKIStatus status;
    private DERGeneralizedTime willBeRevokedAt;

    private RevAnnContent(ASN1Sequence asn1sequence)
    {
        status = PKIStatus.getInstance(asn1sequence.getObjectAt(0));
        certId = CertId.getInstance(asn1sequence.getObjectAt(1));
        willBeRevokedAt = DERGeneralizedTime.getInstance(asn1sequence.getObjectAt(2));
        badSinceDate = DERGeneralizedTime.getInstance(asn1sequence.getObjectAt(3));
        if (asn1sequence.size() > 4)
        {
            crlDetails = X509Extensions.getInstance(asn1sequence.getObjectAt(4));
        }
    }

    public static RevAnnContent getInstance(Object obj)
    {
        if (obj instanceof RevAnnContent)
        {
            return (RevAnnContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new RevAnnContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERGeneralizedTime getBadSinceDate()
    {
        return badSinceDate;
    }

    public CertId getCertId()
    {
        return certId;
    }

    public X509Extensions getCrlDetails()
    {
        return crlDetails;
    }

    public PKIStatus getStatus()
    {
        return status;
    }

    public DERGeneralizedTime getWillBeRevokedAt()
    {
        return willBeRevokedAt;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(status);
        asn1encodablevector.add(certId);
        asn1encodablevector.add(willBeRevokedAt);
        asn1encodablevector.add(badSinceDate);
        if (crlDetails != null)
        {
            asn1encodablevector.add(crlDetails);
        }
        return new DERSequence(asn1encodablevector);
    }
}
