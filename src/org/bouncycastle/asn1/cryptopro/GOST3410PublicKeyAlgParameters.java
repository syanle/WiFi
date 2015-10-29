// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cryptopro;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class GOST3410PublicKeyAlgParameters extends ASN1Encodable
{

    private DERObjectIdentifier digestParamSet;
    private DERObjectIdentifier encryptionParamSet;
    private DERObjectIdentifier publicKeyParamSet;

    public GOST3410PublicKeyAlgParameters(ASN1Sequence asn1sequence)
    {
        publicKeyParamSet = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        digestParamSet = (DERObjectIdentifier)asn1sequence.getObjectAt(1);
        if (asn1sequence.size() > 2)
        {
            encryptionParamSet = (DERObjectIdentifier)asn1sequence.getObjectAt(2);
        }
    }

    public GOST3410PublicKeyAlgParameters(DERObjectIdentifier derobjectidentifier, DERObjectIdentifier derobjectidentifier1)
    {
        publicKeyParamSet = derobjectidentifier;
        digestParamSet = derobjectidentifier1;
        encryptionParamSet = null;
    }

    public GOST3410PublicKeyAlgParameters(DERObjectIdentifier derobjectidentifier, DERObjectIdentifier derobjectidentifier1, DERObjectIdentifier derobjectidentifier2)
    {
        publicKeyParamSet = derobjectidentifier;
        digestParamSet = derobjectidentifier1;
        encryptionParamSet = derobjectidentifier2;
    }

    public static GOST3410PublicKeyAlgParameters getInstance(Object obj)
    {
        if (obj == null || (obj instanceof GOST3410PublicKeyAlgParameters))
        {
            return (GOST3410PublicKeyAlgParameters)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new GOST3410PublicKeyAlgParameters((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid GOST3410Parameter: ").append(obj.getClass().getName()).toString());
        }
    }

    public static GOST3410PublicKeyAlgParameters getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERObjectIdentifier getDigestParamSet()
    {
        return digestParamSet;
    }

    public DERObjectIdentifier getEncryptionParamSet()
    {
        return encryptionParamSet;
    }

    public DERObjectIdentifier getPublicKeyParamSet()
    {
        return publicKeyParamSet;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(publicKeyParamSet);
        asn1encodablevector.add(digestParamSet);
        if (encryptionParamSet != null)
        {
            asn1encodablevector.add(encryptionParamSet);
        }
        return new DERSequence(asn1encodablevector);
    }
}
