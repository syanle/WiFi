// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            GeneralName

public class AccessDescription extends ASN1Encodable
{

    public static final DERObjectIdentifier id_ad_caIssuers = new DERObjectIdentifier("1.3.6.1.5.5.7.48.2");
    public static final DERObjectIdentifier id_ad_ocsp = new DERObjectIdentifier("1.3.6.1.5.5.7.48.1");
    GeneralName accessLocation;
    DERObjectIdentifier accessMethod;

    public AccessDescription(ASN1Sequence asn1sequence)
    {
        accessMethod = null;
        accessLocation = null;
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException("wrong number of elements in sequence");
        } else
        {
            accessMethod = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
            accessLocation = GeneralName.getInstance(asn1sequence.getObjectAt(1));
            return;
        }
    }

    public AccessDescription(DERObjectIdentifier derobjectidentifier, GeneralName generalname)
    {
        accessMethod = null;
        accessLocation = null;
        accessMethod = derobjectidentifier;
        accessLocation = generalname;
    }

    public static AccessDescription getInstance(Object obj)
    {
        if (obj instanceof AccessDescription)
        {
            return (AccessDescription)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AccessDescription((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public GeneralName getAccessLocation()
    {
        return accessLocation;
    }

    public DERObjectIdentifier getAccessMethod()
    {
        return accessMethod;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(accessMethod);
        asn1encodablevector.add(accessLocation);
        return new DERSequence(asn1encodablevector);
    }

    public String toString()
    {
        return (new StringBuilder()).append("AccessDescription: Oid(").append(accessMethod.getId()).append(")").toString();
    }

}
