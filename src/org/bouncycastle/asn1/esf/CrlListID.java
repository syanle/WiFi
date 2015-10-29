// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.esf:
//            CrlValidatedID

public class CrlListID extends ASN1Encodable
{

    private ASN1Sequence crls;

    private CrlListID(ASN1Sequence asn1sequence)
    {
        crls = (ASN1Sequence)asn1sequence.getObjectAt(0);
        for (asn1sequence = crls.getObjects(); asn1sequence.hasMoreElements(); CrlValidatedID.getInstance(asn1sequence.nextElement())) { }
    }

    public CrlListID(CrlValidatedID acrlvalidatedid[])
    {
        crls = new DERSequence(acrlvalidatedid);
    }

    public static CrlListID getInstance(Object obj)
    {
        if (obj instanceof CrlListID)
        {
            return (CrlListID)obj;
        }
        if (obj != null)
        {
            return new CrlListID(ASN1Sequence.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException("null value in getInstance");
        }
    }

    public CrlValidatedID[] getCrls()
    {
        CrlValidatedID acrlvalidatedid[] = new CrlValidatedID[crls.size()];
        for (int i = 0; i < acrlvalidatedid.length; i++)
        {
            acrlvalidatedid[i] = CrlValidatedID.getInstance(crls.getObjectAt(i));
        }

        return acrlvalidatedid;
    }

    public DERObject toASN1Object()
    {
        return new DERSequence(crls);
    }
}
