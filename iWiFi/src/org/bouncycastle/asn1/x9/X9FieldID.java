// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x9:
//            X9ObjectIdentifiers

public class X9FieldID extends ASN1Encodable
    implements X9ObjectIdentifiers
{

    private DERObjectIdentifier id;
    private DERObject parameters;

    public X9FieldID(int i, int j, int k, int l)
    {
        id = characteristic_two_field;
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(i));
        if (k == 0)
        {
            asn1encodablevector.add(tpBasis);
            asn1encodablevector.add(new DERInteger(j));
        } else
        {
            asn1encodablevector.add(ppBasis);
            ASN1EncodableVector asn1encodablevector1 = new ASN1EncodableVector();
            asn1encodablevector1.add(new DERInteger(j));
            asn1encodablevector1.add(new DERInteger(k));
            asn1encodablevector1.add(new DERInteger(l));
            asn1encodablevector.add(new DERSequence(asn1encodablevector1));
        }
        parameters = new DERSequence(asn1encodablevector);
    }

    public X9FieldID(BigInteger biginteger)
    {
        id = prime_field;
        parameters = new DERInteger(biginteger);
    }

    public X9FieldID(ASN1Sequence asn1sequence)
    {
        id = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        parameters = (DERObject)asn1sequence.getObjectAt(1);
    }

    public DERObjectIdentifier getIdentifier()
    {
        return id;
    }

    public DERObject getParameters()
    {
        return parameters;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(id);
        asn1encodablevector.add(parameters);
        return new DERSequence(asn1encodablevector);
    }
}
