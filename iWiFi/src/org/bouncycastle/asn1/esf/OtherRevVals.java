// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class OtherRevVals extends ASN1Encodable
{

    private DERObjectIdentifier otherRevValType;
    private ASN1Object otherRevVals;

    public OtherRevVals(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        otherRevValType = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        try
        {
            otherRevVals = ASN1Object.fromByteArray(asn1sequence.getObjectAt(1).getDERObject().getDEREncoded());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ASN1Sequence asn1sequence)
        {
            throw new IllegalStateException();
        }
    }

    public OtherRevVals(DERObjectIdentifier derobjectidentifier, ASN1Object asn1object)
    {
        otherRevValType = derobjectidentifier;
        otherRevVals = asn1object;
    }

    public static OtherRevVals getInstance(Object obj)
    {
        if (obj == null || (obj instanceof OtherRevVals))
        {
            return (OtherRevVals)obj;
        } else
        {
            return new OtherRevVals((ASN1Sequence)obj);
        }
    }

    public DERObjectIdentifier getOtherRevValType()
    {
        return otherRevValType;
    }

    public ASN1Object getOtherRevVals()
    {
        return otherRevVals;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(otherRevValType);
        asn1encodablevector.add(otherRevVals);
        return new DERSequence(asn1encodablevector);
    }
}
