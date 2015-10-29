// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            CERTRecord, Mnemonic

public static class 
{

    public static final int ACPKIX = 7;
    public static final int IACPKIX = 8;
    public static final int IPGP = 6;
    public static final int IPKIX = 4;
    public static final int ISPKI = 5;
    public static final int OID = 254;
    public static final int PGP = 3;
    public static final int PKIX = 1;
    public static final int SPKI = 2;
    public static final int URI = 253;
    private static Mnemonic types;

    public static String string(int i)
    {
        return types.getText(i);
    }

    public static int value(String s)
    {
        return types.getValue(s);
    }

    static 
    {
        types = new Mnemonic("Certificate type", 2);
        types.setMaximum(65535);
        types.setNumericAllowed(true);
        types.add(1, "PKIX");
        types.add(2, "SPKI");
        types.add(3, "PGP");
        types.add(1, "IPKIX");
        types.add(2, "ISPKI");
        types.add(3, "IPGP");
        types.add(3, "ACPKIX");
        types.add(3, "IACPKIX");
        types.add(253, "URI");
        types.add(254, "OID");
    }

    private ()
    {
    }
}
