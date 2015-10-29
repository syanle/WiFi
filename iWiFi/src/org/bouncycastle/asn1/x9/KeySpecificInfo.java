// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class KeySpecificInfo extends ASN1Encodable
{

    private DERObjectIdentifier algorithm;
    private ASN1OctetString counter;

    public KeySpecificInfo(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        algorithm = (DERObjectIdentifier)asn1sequence.nextElement();
        counter = (ASN1OctetString)asn1sequence.nextElement();
    }

    public KeySpecificInfo(DERObjectIdentifier derobjectidentifier, ASN1OctetString asn1octetstring)
    {
        algorithm = derobjectidentifier;
        counter = asn1octetstring;
    }

    public DERObjectIdentifier getAlgorithm()
    {
        return algorithm;
    }

    public ASN1OctetString getCounter()
    {
        return counter;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(algorithm);
        asn1encodablevector.add(counter);
        return new DERSequence(asn1encodablevector);
    }
}
