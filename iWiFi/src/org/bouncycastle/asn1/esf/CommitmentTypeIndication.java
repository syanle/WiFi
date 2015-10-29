// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class CommitmentTypeIndication extends ASN1Encodable
{

    private DERObjectIdentifier commitmentTypeId;
    private ASN1Sequence commitmentTypeQualifier;

    public CommitmentTypeIndication(ASN1Sequence asn1sequence)
    {
        commitmentTypeId = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        if (asn1sequence.size() > 1)
        {
            commitmentTypeQualifier = (ASN1Sequence)asn1sequence.getObjectAt(1);
        }
    }

    public CommitmentTypeIndication(DERObjectIdentifier derobjectidentifier)
    {
        commitmentTypeId = derobjectidentifier;
    }

    public CommitmentTypeIndication(DERObjectIdentifier derobjectidentifier, ASN1Sequence asn1sequence)
    {
        commitmentTypeId = derobjectidentifier;
        commitmentTypeQualifier = asn1sequence;
    }

    public static CommitmentTypeIndication getInstance(Object obj)
    {
        if (obj == null || (obj instanceof CommitmentTypeIndication))
        {
            return (CommitmentTypeIndication)obj;
        } else
        {
            return new CommitmentTypeIndication(ASN1Sequence.getInstance(obj));
        }
    }

    public DERObjectIdentifier getCommitmentTypeId()
    {
        return commitmentTypeId;
    }

    public ASN1Sequence getCommitmentTypeQualifier()
    {
        return commitmentTypeQualifier;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(commitmentTypeId);
        if (commitmentTypeQualifier != null)
        {
            asn1encodablevector.add(commitmentTypeQualifier);
        }
        return new DERSequence(asn1encodablevector);
    }
}
