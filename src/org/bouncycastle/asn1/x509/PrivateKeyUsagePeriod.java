// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            X509Extension

public class PrivateKeyUsagePeriod extends ASN1Encodable
{

    private DERGeneralizedTime _notAfter;
    private DERGeneralizedTime _notBefore;

    private PrivateKeyUsagePeriod(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        do
        {
            if (!asn1sequence.hasMoreElements())
            {
                break;
            }
            ASN1TaggedObject asn1taggedobject = (ASN1TaggedObject)asn1sequence.nextElement();
            if (asn1taggedobject.getTagNo() == 0)
            {
                _notBefore = DERGeneralizedTime.getInstance(asn1taggedobject, false);
            } else
            if (asn1taggedobject.getTagNo() == 1)
            {
                _notAfter = DERGeneralizedTime.getInstance(asn1taggedobject, false);
            }
        } while (true);
    }

    public static PrivateKeyUsagePeriod getInstance(Object obj)
    {
        if (obj instanceof PrivateKeyUsagePeriod)
        {
            return (PrivateKeyUsagePeriod)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PrivateKeyUsagePeriod((ASN1Sequence)obj);
        }
        if (obj instanceof X509Extension)
        {
            return getInstance(X509Extension.convertValueToObject((X509Extension)obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERGeneralizedTime getNotAfter()
    {
        return _notAfter;
    }

    public DERGeneralizedTime getNotBefore()
    {
        return _notBefore;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (_notBefore != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, _notBefore));
        }
        if (_notAfter != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, _notAfter));
        }
        return new DERSequence(asn1encodablevector);
    }
}
