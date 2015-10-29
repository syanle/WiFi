// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class PolicyMappings extends ASN1Encodable
{

    ASN1Sequence seq;

    public PolicyMappings(Hashtable hashtable)
    {
        seq = null;
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        ASN1EncodableVector asn1encodablevector1;
        for (Enumeration enumeration = hashtable.keys(); enumeration.hasMoreElements(); asn1encodablevector.add(new DERSequence(asn1encodablevector1)))
        {
            String s = (String)enumeration.nextElement();
            String s1 = (String)hashtable.get(s);
            asn1encodablevector1 = new ASN1EncodableVector();
            asn1encodablevector1.add(new DERObjectIdentifier(s));
            asn1encodablevector1.add(new DERObjectIdentifier(s1));
        }

        seq = new DERSequence(asn1encodablevector);
    }

    public PolicyMappings(ASN1Sequence asn1sequence)
    {
        seq = null;
        seq = asn1sequence;
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
