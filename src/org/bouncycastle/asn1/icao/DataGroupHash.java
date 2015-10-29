// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.icao;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class DataGroupHash extends ASN1Encodable
{

    ASN1OctetString dataGroupHashValue;
    DERInteger dataGroupNumber;

    public DataGroupHash(int i, ASN1OctetString asn1octetstring)
    {
        dataGroupNumber = new DERInteger(i);
        dataGroupHashValue = asn1octetstring;
    }

    private DataGroupHash(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        dataGroupNumber = DERInteger.getInstance(asn1sequence.nextElement());
        dataGroupHashValue = ASN1OctetString.getInstance(asn1sequence.nextElement());
    }

    public static DataGroupHash getInstance(Object obj)
    {
        if (obj instanceof DataGroupHash)
        {
            return (DataGroupHash)obj;
        }
        if (obj != null)
        {
            return new DataGroupHash(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public ASN1OctetString getDataGroupHashValue()
    {
        return dataGroupHashValue;
    }

    public int getDataGroupNumber()
    {
        return dataGroupNumber.getValue().intValue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(dataGroupNumber);
        asn1encodablevector.add(dataGroupHashValue);
        return new DERSequence(asn1encodablevector);
    }
}
