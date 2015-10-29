// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.nist;

import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.sec.SECObjectIdentifiers;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.util.Strings;

public class NISTNamedCurves
{

    static final Hashtable names = new Hashtable();
    static final Hashtable objIds = new Hashtable();

    public NISTNamedCurves()
    {
    }

    static void defineCurve(String s, DERObjectIdentifier derobjectidentifier)
    {
        objIds.put(s, derobjectidentifier);
        names.put(derobjectidentifier, s);
    }

    public static X9ECParameters getByName(String s)
    {
        s = (DERObjectIdentifier)objIds.get(Strings.toUpperCase(s));
        if (s != null)
        {
            return getByOID(s);
        } else
        {
            return null;
        }
    }

    public static X9ECParameters getByOID(DERObjectIdentifier derobjectidentifier)
    {
        return SECNamedCurves.getByOID(derobjectidentifier);
    }

    public static String getName(DERObjectIdentifier derobjectidentifier)
    {
        return (String)names.get(derobjectidentifier);
    }

    public static Enumeration getNames()
    {
        return objIds.keys();
    }

    public static DERObjectIdentifier getOID(String s)
    {
        return (DERObjectIdentifier)objIds.get(Strings.toUpperCase(s));
    }

    static 
    {
        defineCurve("B-571", SECObjectIdentifiers.sect571r1);
        defineCurve("B-409", SECObjectIdentifiers.sect409r1);
        defineCurve("B-283", SECObjectIdentifiers.sect283r1);
        defineCurve("B-233", SECObjectIdentifiers.sect233r1);
        defineCurve("B-163", SECObjectIdentifiers.sect163r2);
        defineCurve("P-521", SECObjectIdentifiers.secp521r1);
        defineCurve("P-384", SECObjectIdentifiers.secp384r1);
        defineCurve("P-256", SECObjectIdentifiers.secp256r1);
        defineCurve("P-224", SECObjectIdentifiers.secp224r1);
        defineCurve("P-192", SECObjectIdentifiers.secp192r1);
    }
}
