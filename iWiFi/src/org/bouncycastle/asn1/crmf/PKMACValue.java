// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cmp.CMPObjectIdentifiers;
import org.bouncycastle.asn1.cmp.PBMParameter;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class PKMACValue extends ASN1Encodable
{

    private AlgorithmIdentifier algId;
    private DERBitString value;

    private PKMACValue(ASN1Sequence asn1sequence)
    {
        algId = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(0));
        value = DERBitString.getInstance(asn1sequence.getObjectAt(1));
    }

    public PKMACValue(PBMParameter pbmparameter, DERBitString derbitstring)
    {
        this(new AlgorithmIdentifier(CMPObjectIdentifiers.passwordBasedMac, pbmparameter), derbitstring);
    }

    public PKMACValue(AlgorithmIdentifier algorithmidentifier, DERBitString derbitstring)
    {
        algId = algorithmidentifier;
        value = derbitstring;
    }

    public static PKMACValue getInstance(Object obj)
    {
        if (obj instanceof PKMACValue)
        {
            return (PKMACValue)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PKMACValue((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public static PKMACValue getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public AlgorithmIdentifier getAlgId()
    {
        return algId;
    }

    public DERBitString getValue()
    {
        return value;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(algId);
        asn1encodablevector.add(value);
        return new DERSequence(asn1encodablevector);
    }
}
