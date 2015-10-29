// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.isismtt.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x500.DirectoryString;

public class Restriction extends ASN1Encodable
{

    private DirectoryString restriction;

    public Restriction(String s)
    {
        restriction = new DirectoryString(s);
    }

    private Restriction(DirectoryString directorystring)
    {
        restriction = directorystring;
    }

    public static Restriction getInstance(Object obj)
    {
        if (obj instanceof Restriction)
        {
            return (Restriction)obj;
        }
        if (obj instanceof ASN1String)
        {
            return new Restriction(DirectoryString.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public DirectoryString getRestriction()
    {
        return restriction;
    }

    public DERObject toASN1Object()
    {
        return restriction.toASN1Object();
    }
}
