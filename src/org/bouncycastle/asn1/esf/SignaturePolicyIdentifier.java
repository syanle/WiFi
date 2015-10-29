// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.esf:
//            SignaturePolicyId

public class SignaturePolicyIdentifier extends ASN1Encodable
{

    private boolean isSignaturePolicyImplied;
    private SignaturePolicyId signaturePolicyId;

    public SignaturePolicyIdentifier()
    {
        isSignaturePolicyImplied = true;
    }

    public SignaturePolicyIdentifier(SignaturePolicyId signaturepolicyid)
    {
        signaturePolicyId = signaturepolicyid;
        isSignaturePolicyImplied = false;
    }

    public static SignaturePolicyIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SignaturePolicyIdentifier))
        {
            return (SignaturePolicyIdentifier)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SignaturePolicyIdentifier(SignaturePolicyId.getInstance(obj));
        }
        if (obj instanceof ASN1Null)
        {
            return new SignaturePolicyIdentifier();
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'SignaturePolicyIdentifier' factory: ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public SignaturePolicyId getSignaturePolicyId()
    {
        return signaturePolicyId;
    }

    public boolean isSignaturePolicyImplied()
    {
        return isSignaturePolicyImplied;
    }

    public DERObject toASN1Object()
    {
        if (isSignaturePolicyImplied)
        {
            return new DERNull();
        } else
        {
            return signaturePolicyId.getDERObject();
        }
    }
}
