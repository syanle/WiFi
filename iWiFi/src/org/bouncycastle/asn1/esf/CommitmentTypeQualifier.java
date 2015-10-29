// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class CommitmentTypeQualifier extends ASN1Encodable
{

    private DERObjectIdentifier commitmentTypeIdentifier;
    private DEREncodable qualifier;

    public CommitmentTypeQualifier(ASN1Sequence asn1sequence)
    {
        commitmentTypeIdentifier = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        if (asn1sequence.size() > 1)
        {
            qualifier = asn1sequence.getObjectAt(1);
        }
    }

    public CommitmentTypeQualifier(DERObjectIdentifier derobjectidentifier)
    {
        this(derobjectidentifier, null);
    }

    public CommitmentTypeQualifier(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        commitmentTypeIdentifier = derobjectidentifier;
        qualifier = derencodable;
    }

    public static CommitmentTypeQualifier getInstance(Object obj)
    {
        if ((obj instanceof CommitmentTypeQualifier) || obj == null)
        {
            return (CommitmentTypeQualifier)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CommitmentTypeQualifier((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance.");
        }
    }

    public DERObjectIdentifier getCommitmentTypeIdentifier()
    {
        return commitmentTypeIdentifier;
    }

    public DEREncodable getQualifier()
    {
        return qualifier;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(commitmentTypeIdentifier);
        if (qualifier != null)
        {
            asn1encodablevector.add(qualifier);
        }
        return new DERSequence(asn1encodablevector);
    }
}
