// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            IssuerSerial, GeneralNames, ObjectDigestInfo

public class Holder extends ASN1Encodable
{

    IssuerSerial baseCertificateID;
    GeneralNames entityName;
    ObjectDigestInfo objectDigestInfo;
    private int version;

    public Holder(ASN1Sequence asn1sequence)
    {
        int i;
        version = 1;
        if (asn1sequence.size() > 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        i = 0;
_L2:
        ASN1TaggedObject asn1taggedobject;
        if (i == asn1sequence.size())
        {
            break MISSING_BLOCK_LABEL_146;
        }
        asn1taggedobject = ASN1TaggedObject.getInstance(asn1sequence.getObjectAt(i));
        switch (asn1taggedobject.getTagNo())
        {
        default:
            throw new IllegalArgumentException("unknown tag in Holder");

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_134;

        case 0: // '\0'
            baseCertificateID = IssuerSerial.getInstance(asn1taggedobject, false);
            break;
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        entityName = GeneralNames.getInstance(asn1taggedobject, false);
          goto _L3
        objectDigestInfo = ObjectDigestInfo.getInstance(asn1taggedobject, false);
          goto _L3
        version = 1;
        return;
    }

    public Holder(ASN1TaggedObject asn1taggedobject)
    {
        version = 1;
        asn1taggedobject.getTagNo();
        JVM INSTR tableswitch 0 1: default 36
    //                   0 46
    //                   1 61;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException("unknown tag in Holder");
_L2:
        baseCertificateID = IssuerSerial.getInstance(asn1taggedobject, false);
_L5:
        version = 0;
        return;
_L3:
        entityName = GeneralNames.getInstance(asn1taggedobject, false);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public Holder(GeneralNames generalnames)
    {
        version = 1;
        entityName = generalnames;
    }

    public Holder(GeneralNames generalnames, int i)
    {
        version = 1;
        entityName = generalnames;
        version = i;
    }

    public Holder(IssuerSerial issuerserial)
    {
        version = 1;
        baseCertificateID = issuerserial;
    }

    public Holder(IssuerSerial issuerserial, int i)
    {
        version = 1;
        baseCertificateID = issuerserial;
        version = i;
    }

    public Holder(ObjectDigestInfo objectdigestinfo)
    {
        version = 1;
        objectDigestInfo = objectdigestinfo;
    }

    public static Holder getInstance(Object obj)
    {
        if (obj instanceof Holder)
        {
            return (Holder)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new Holder((ASN1Sequence)obj);
        }
        if (obj instanceof ASN1TaggedObject)
        {
            return new Holder((ASN1TaggedObject)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public IssuerSerial getBaseCertificateID()
    {
        return baseCertificateID;
    }

    public GeneralNames getEntityName()
    {
        return entityName;
    }

    public ObjectDigestInfo getObjectDigestInfo()
    {
        return objectDigestInfo;
    }

    public int getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        if (version == 1)
        {
            ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
            if (baseCertificateID != null)
            {
                asn1encodablevector.add(new DERTaggedObject(false, 0, baseCertificateID));
            }
            if (entityName != null)
            {
                asn1encodablevector.add(new DERTaggedObject(false, 1, entityName));
            }
            if (objectDigestInfo != null)
            {
                asn1encodablevector.add(new DERTaggedObject(false, 2, objectDigestInfo));
            }
            return new DERSequence(asn1encodablevector);
        }
        if (entityName != null)
        {
            return new DERTaggedObject(false, 1, entityName);
        } else
        {
            return new DERTaggedObject(false, 0, baseCertificateID);
        }
    }
}
