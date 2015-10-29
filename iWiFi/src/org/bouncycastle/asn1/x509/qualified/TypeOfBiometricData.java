// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509.qualified;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;

public class TypeOfBiometricData extends ASN1Encodable
    implements ASN1Choice
{

    public static final int HANDWRITTEN_SIGNATURE = 1;
    public static final int PICTURE = 0;
    DEREncodable obj;

    public TypeOfBiometricData(int i)
    {
        if (i == 0 || i == 1)
        {
            obj = new DERInteger(i);
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknow PredefinedBiometricType : ").append(i).toString());
        }
    }

    public TypeOfBiometricData(DERObjectIdentifier derobjectidentifier)
    {
        obj = derobjectidentifier;
    }

    public static TypeOfBiometricData getInstance(Object obj1)
    {
        if (obj1 == null || (obj1 instanceof TypeOfBiometricData))
        {
            return (TypeOfBiometricData)obj1;
        }
        if (obj1 instanceof DERInteger)
        {
            return new TypeOfBiometricData(DERInteger.getInstance(obj1).getValue().intValue());
        }
        if (obj1 instanceof DERObjectIdentifier)
        {
            return new TypeOfBiometricData(DERObjectIdentifier.getInstance(obj1));
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance");
        }
    }

    public DERObjectIdentifier getBiometricDataOid()
    {
        return (DERObjectIdentifier)obj;
    }

    public int getPredefinedBiometricType()
    {
        return ((DERInteger)obj).getValue().intValue();
    }

    public boolean isPredefined()
    {
        return obj instanceof DERInteger;
    }

    public DERObject toASN1Object()
    {
        return obj.getDERObject();
    }
}
