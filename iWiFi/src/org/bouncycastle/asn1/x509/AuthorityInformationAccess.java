// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            AccessDescription, X509Extension, GeneralName

public class AuthorityInformationAccess extends ASN1Encodable
{

    private AccessDescription descriptions[];

    public AuthorityInformationAccess(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 1)
        {
            throw new IllegalArgumentException("sequence may not be empty");
        }
        descriptions = new AccessDescription[asn1sequence.size()];
        for (int i = 0; i != asn1sequence.size(); i++)
        {
            descriptions[i] = AccessDescription.getInstance(asn1sequence.getObjectAt(i));
        }

    }

    public AuthorityInformationAccess(DERObjectIdentifier derobjectidentifier, GeneralName generalname)
    {
        descriptions = new AccessDescription[1];
        descriptions[0] = new AccessDescription(derobjectidentifier, generalname);
    }

    public static AuthorityInformationAccess getInstance(Object obj)
    {
        if (obj instanceof AuthorityInformationAccess)
        {
            return (AuthorityInformationAccess)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AuthorityInformationAccess((ASN1Sequence)obj);
        }
        if (obj instanceof X509Extension)
        {
            return getInstance(X509Extension.convertValueToObject((X509Extension)obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public AccessDescription[] getAccessDescriptions()
    {
        return descriptions;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i != descriptions.length; i++)
        {
            asn1encodablevector.add(descriptions[i]);
        }

        return new DERSequence(asn1encodablevector);
    }

    public String toString()
    {
        return (new StringBuilder()).append("AuthorityInformationAccess: Oid(").append(descriptions[0].getAccessMethod().getId()).append(")").toString();
    }
}
