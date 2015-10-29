// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class AlgorithmIdentifier extends ASN1Encodable
{

    private DERObjectIdentifier objectId;
    private DEREncodable parameters;
    private boolean parametersDefined;

    public AlgorithmIdentifier(String s)
    {
        parametersDefined = false;
        objectId = new DERObjectIdentifier(s);
    }

    public AlgorithmIdentifier(ASN1Sequence asn1sequence)
    {
        parametersDefined = false;
        if (asn1sequence.size() < 1 || asn1sequence.size() > 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        objectId = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() == 2)
        {
            parametersDefined = true;
            parameters = asn1sequence.getObjectAt(1);
            return;
        } else
        {
            parameters = null;
            return;
        }
    }

    public AlgorithmIdentifier(DERObjectIdentifier derobjectidentifier)
    {
        parametersDefined = false;
        objectId = derobjectidentifier;
    }

    public AlgorithmIdentifier(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        parametersDefined = false;
        parametersDefined = true;
        objectId = derobjectidentifier;
        parameters = derencodable;
    }

    public static AlgorithmIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof AlgorithmIdentifier))
        {
            return (AlgorithmIdentifier)obj;
        }
        if (obj instanceof DERObjectIdentifier)
        {
            return new AlgorithmIdentifier((DERObjectIdentifier)obj);
        }
        if (obj instanceof String)
        {
            return new AlgorithmIdentifier((String)obj);
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AlgorithmIdentifier((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static AlgorithmIdentifier getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public ASN1ObjectIdentifier getAlgorithm()
    {
        return new ASN1ObjectIdentifier(objectId.getId());
    }

    public DERObjectIdentifier getObjectId()
    {
        return objectId;
    }

    public DEREncodable getParameters()
    {
        return parameters;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(objectId);
        if (parametersDefined)
        {
            if (parameters != null)
            {
                asn1encodablevector.add(parameters);
            } else
            {
                asn1encodablevector.add(DERNull.INSTANCE);
            }
        }
        return new DERSequence(asn1encodablevector);
    }
}
