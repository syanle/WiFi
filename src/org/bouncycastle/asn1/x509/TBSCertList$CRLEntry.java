// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            TBSCertList, Time, X509Extensions

public static class revocationDate extends ASN1Encodable
{

    X509Extensions crlEntryExtensions;
    Time revocationDate;
    ASN1Sequence seq;
    DERInteger userCertificate;

    public X509Extensions getExtensions()
    {
        if (crlEntryExtensions == null && seq.size() == 3)
        {
            crlEntryExtensions = X509Extensions.getInstance(seq.getObjectAt(2));
        }
        return crlEntryExtensions;
    }

    public Time getRevocationDate()
    {
        return revocationDate;
    }

    public DERInteger getUserCertificate()
    {
        return userCertificate;
    }

    public DERObject toASN1Object()
    {
        return seq;
    }

    public (ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 2 || asn1sequence.size() > 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        } else
        {
            seq = asn1sequence;
            userCertificate = DERInteger.getInstance(asn1sequence.getObjectAt(0));
            revocationDate = Time.getInstance(asn1sequence.getObjectAt(1));
            return;
        }
    }
}
