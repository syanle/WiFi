// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.mozilla;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;

public class PublicKeyAndChallenge extends ASN1Encodable
{

    private DERIA5String challenge;
    private ASN1Sequence pkacSeq;
    private SubjectPublicKeyInfo spki;

    public PublicKeyAndChallenge(ASN1Sequence asn1sequence)
    {
        pkacSeq = asn1sequence;
        spki = SubjectPublicKeyInfo.getInstance(asn1sequence.getObjectAt(0));
        challenge = DERIA5String.getInstance(asn1sequence.getObjectAt(1));
    }

    public static PublicKeyAndChallenge getInstance(Object obj)
    {
        if (obj instanceof PublicKeyAndChallenge)
        {
            return (PublicKeyAndChallenge)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PublicKeyAndChallenge((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unkown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERIA5String getChallenge()
    {
        return challenge;
    }

    public SubjectPublicKeyInfo getSubjectPublicKeyInfo()
    {
        return spki;
    }

    public DERObject toASN1Object()
    {
        return pkacSeq;
    }
}
