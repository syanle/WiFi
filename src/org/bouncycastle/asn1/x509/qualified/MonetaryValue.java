// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509.qualified;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509.qualified:
//            Iso4217CurrencyCode

public class MonetaryValue extends ASN1Encodable
{

    DERInteger amount;
    Iso4217CurrencyCode currency;
    DERInteger exponent;

    public MonetaryValue(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        currency = Iso4217CurrencyCode.getInstance(asn1sequence.nextElement());
        amount = DERInteger.getInstance(asn1sequence.nextElement());
        exponent = DERInteger.getInstance(asn1sequence.nextElement());
    }

    public MonetaryValue(Iso4217CurrencyCode iso4217currencycode, int i, int j)
    {
        currency = iso4217currencycode;
        amount = new DERInteger(i);
        exponent = new DERInteger(j);
    }

    public static MonetaryValue getInstance(Object obj)
    {
        if (obj == null || (obj instanceof MonetaryValue))
        {
            return (MonetaryValue)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new MonetaryValue(ASN1Sequence.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance");
        }
    }

    public BigInteger getAmount()
    {
        return amount.getValue();
    }

    public Iso4217CurrencyCode getCurrency()
    {
        return currency;
    }

    public BigInteger getExponent()
    {
        return exponent.getValue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(currency);
        asn1encodablevector.add(amount);
        asn1encodablevector.add(exponent);
        return new DERSequence(asn1encodablevector);
    }
}
