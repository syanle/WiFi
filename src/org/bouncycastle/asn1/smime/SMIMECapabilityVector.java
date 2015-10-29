// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.smime;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class SMIMECapabilityVector
{

    private ASN1EncodableVector capabilities;

    public SMIMECapabilityVector()
    {
        capabilities = new ASN1EncodableVector();
    }

    public void addCapability(DERObjectIdentifier derobjectidentifier)
    {
        capabilities.add(new DERSequence(derobjectidentifier));
    }

    public void addCapability(DERObjectIdentifier derobjectidentifier, int i)
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(derobjectidentifier);
        asn1encodablevector.add(new DERInteger(i));
        capabilities.add(new DERSequence(asn1encodablevector));
    }

    public void addCapability(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(derobjectidentifier);
        asn1encodablevector.add(derencodable);
        capabilities.add(new DERSequence(asn1encodablevector));
    }

    public ASN1EncodableVector toASN1EncodableVector()
    {
        return capabilities;
    }
}
