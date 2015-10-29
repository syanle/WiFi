// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class Challenge extends ASN1Encodable
{

    private ASN1OctetString challenge;
    private AlgorithmIdentifier owf;
    private ASN1OctetString witness;

    private Challenge(ASN1Sequence asn1sequence)
    {
        int i;
        if (asn1sequence.size() == 3)
        {
            i = 1;
            owf = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(0));
        } else
        {
            i = 0;
        }
        witness = ASN1OctetString.getInstance(asn1sequence.getObjectAt(i));
        challenge = ASN1OctetString.getInstance(asn1sequence.getObjectAt(i + 1));
    }

    private void addOptional(ASN1EncodableVector asn1encodablevector, ASN1Encodable asn1encodable)
    {
        if (asn1encodable != null)
        {
            asn1encodablevector.add(asn1encodable);
        }
    }

    public static Challenge getInstance(Object obj)
    {
        if (obj instanceof Challenge)
        {
            return (Challenge)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new Challenge((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public AlgorithmIdentifier getOwf()
    {
        return owf;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        addOptional(asn1encodablevector, owf);
        asn1encodablevector.add(witness);
        asn1encodablevector.add(challenge);
        return new DERSequence(asn1encodablevector);
    }
}
