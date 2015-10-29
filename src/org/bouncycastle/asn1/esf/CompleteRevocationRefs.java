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
//            CrlOcspRef

public class CompleteRevocationRefs extends ASN1Encodable
{

    private ASN1Sequence crlOcspRefs;

    private CompleteRevocationRefs(ASN1Sequence asn1sequence)
    {
        for (Enumeration enumeration = asn1sequence.getObjects(); enumeration.hasMoreElements(); CrlOcspRef.getInstance(enumeration.nextElement())) { }
        crlOcspRefs = asn1sequence;
    }

    public CompleteRevocationRefs(CrlOcspRef acrlocspref[])
    {
        crlOcspRefs = new DERSequence(acrlocspref);
    }

    public static CompleteRevocationRefs getInstance(Object obj)
    {
        if (obj instanceof CompleteRevocationRefs)
        {
            return (CompleteRevocationRefs)obj;
        }
        if (obj != null)
        {
            return new CompleteRevocationRefs(ASN1Sequence.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException("null value in getInstance");
        }
    }

    public CrlOcspRef[] getCrlOcspRefs()
    {
        CrlOcspRef acrlocspref[] = new CrlOcspRef[crlOcspRefs.size()];
        for (int i = 0; i < acrlocspref.length; i++)
        {
            acrlocspref[i] = CrlOcspRef.getInstance(crlOcspRefs.getObjectAt(i));
        }

        return acrlocspref;
    }

    public DERObject toASN1Object()
    {
        return crlOcspRefs;
    }
}
