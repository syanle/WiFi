// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.X509Name;

public class IssuerAndSerialNumber extends ASN1Encodable
{

    private X500Name name;
    private DERInteger serialNumber;

    public IssuerAndSerialNumber(ASN1Sequence asn1sequence)
    {
        name = X500Name.getInstance(asn1sequence.getObjectAt(0));
        serialNumber = (DERInteger)asn1sequence.getObjectAt(1);
    }

    public IssuerAndSerialNumber(X500Name x500name, BigInteger biginteger)
    {
        name = x500name;
        serialNumber = new DERInteger(biginteger);
    }

    public IssuerAndSerialNumber(X509Name x509name, BigInteger biginteger)
    {
        name = X500Name.getInstance(x509name);
        serialNumber = new DERInteger(biginteger);
    }

    public IssuerAndSerialNumber(X509Name x509name, DERInteger derinteger)
    {
        name = X500Name.getInstance(x509name);
        serialNumber = derinteger;
    }

    public static IssuerAndSerialNumber getInstance(Object obj)
    {
        if (obj instanceof IssuerAndSerialNumber)
        {
            return (IssuerAndSerialNumber)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new IssuerAndSerialNumber((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal object in IssuerAndSerialNumber: ").append(obj.getClass().getName()).toString());
        }
    }

    public X500Name getName()
    {
        return name;
    }

    public DERInteger getSerialNumber()
    {
        return serialNumber;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(name);
        asn1encodablevector.add(serialNumber);
        return new DERSequence(asn1encodablevector);
    }
}
