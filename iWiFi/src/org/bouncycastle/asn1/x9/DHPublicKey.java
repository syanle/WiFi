// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;

public class DHPublicKey extends ASN1Encodable
{

    private DERInteger y;

    public DHPublicKey(DERInteger derinteger)
    {
        if (derinteger == null)
        {
            throw new IllegalArgumentException("'y' cannot be null");
        } else
        {
            y = derinteger;
            return;
        }
    }

    public static DHPublicKey getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DHPublicKey))
        {
            return (DHPublicKey)obj;
        }
        if (obj instanceof DERInteger)
        {
            return new DHPublicKey((DERInteger)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid DHPublicKey: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DHPublicKey getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(DERInteger.getInstance(asn1taggedobject, flag));
    }

    public DERInteger getY()
    {
        return y;
    }

    public DERObject toASN1Object()
    {
        return y;
    }
}
