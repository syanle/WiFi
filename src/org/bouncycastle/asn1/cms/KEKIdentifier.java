// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            OtherKeyAttribute

public class KEKIdentifier extends ASN1Encodable
{

    private DERGeneralizedTime date;
    private ASN1OctetString keyIdentifier;
    private OtherKeyAttribute other;

    public KEKIdentifier(ASN1Sequence asn1sequence)
    {
        keyIdentifier = (ASN1OctetString)asn1sequence.getObjectAt(0);
        asn1sequence.size();
        JVM INSTR tableswitch 1 3: default 48
    //                   1 81
    //                   2 58
    //                   3 95;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException("Invalid KEKIdentifier");
_L3:
        if (!(asn1sequence.getObjectAt(1) instanceof DERGeneralizedTime)) goto _L6; else goto _L5
_L5:
        date = (DERGeneralizedTime)asn1sequence.getObjectAt(1);
_L2:
        return;
_L6:
        other = OtherKeyAttribute.getInstance(asn1sequence.getObjectAt(1));
        return;
_L4:
        date = (DERGeneralizedTime)asn1sequence.getObjectAt(1);
        other = OtherKeyAttribute.getInstance(asn1sequence.getObjectAt(2));
        return;
    }

    public KEKIdentifier(byte abyte0[], DERGeneralizedTime dergeneralizedtime, OtherKeyAttribute otherkeyattribute)
    {
        keyIdentifier = new DEROctetString(abyte0);
        date = dergeneralizedtime;
        other = otherkeyattribute;
    }

    public static KEKIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof KEKIdentifier))
        {
            return (KEKIdentifier)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new KEKIdentifier((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid KEKIdentifier: ").append(obj.getClass().getName()).toString());
        }
    }

    public static KEKIdentifier getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERGeneralizedTime getDate()
    {
        return date;
    }

    public ASN1OctetString getKeyIdentifier()
    {
        return keyIdentifier;
    }

    public OtherKeyAttribute getOther()
    {
        return other;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(keyIdentifier);
        if (date != null)
        {
            asn1encodablevector.add(date);
        }
        if (other != null)
        {
            asn1encodablevector.add(other);
        }
        return new DERSequence(asn1encodablevector);
    }
}
