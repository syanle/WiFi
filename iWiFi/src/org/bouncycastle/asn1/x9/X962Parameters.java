// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;

// Referenced classes of package org.bouncycastle.asn1.x9:
//            X9ECParameters

public class X962Parameters extends ASN1Encodable
    implements ASN1Choice
{

    private DERObject params;

    public X962Parameters(DERObject derobject)
    {
        params = null;
        params = derobject;
    }

    public X962Parameters(DERObjectIdentifier derobjectidentifier)
    {
        params = null;
        params = derobjectidentifier;
    }

    public X962Parameters(X9ECParameters x9ecparameters)
    {
        params = null;
        params = x9ecparameters.getDERObject();
    }

    public static X962Parameters getInstance(Object obj)
    {
        if (obj == null || (obj instanceof X962Parameters))
        {
            return (X962Parameters)obj;
        }
        if (obj instanceof DERObject)
        {
            return new X962Parameters((DERObject)obj);
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance()");
        }
    }

    public static X962Parameters getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(asn1taggedobject.getObject());
    }

    public DERObject getParameters()
    {
        return params;
    }

    public boolean isImplicitlyCA()
    {
        return params instanceof ASN1Null;
    }

    public boolean isNamedCurve()
    {
        return params instanceof DERObjectIdentifier;
    }

    public DERObject toASN1Object()
    {
        return params;
    }
}
