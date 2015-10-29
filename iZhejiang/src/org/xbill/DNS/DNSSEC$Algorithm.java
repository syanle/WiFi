// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            DNSSEC, Mnemonic

public static class 
{

    public static final int DH = 2;
    public static final int DSA = 3;
    public static final int DSA_NSEC3_SHA1 = 6;
    public static final int ECC = 4;
    public static final int INDIRECT = 252;
    public static final int PRIVATEDNS = 253;
    public static final int PRIVATEOID = 254;
    public static final int RSAMD5 = 1;
    public static final int RSASHA1 = 5;
    public static final int RSASHA256 = 8;
    public static final int RSASHA512 = 10;
    public static final int RSA_NSEC3_SHA1 = 7;
    private static Mnemonic algs;

    public static String string(int i)
    {
        return algs.getText(i);
    }

    public static int value(String s)
    {
        return algs.getValue(s);
    }

    static 
    {
        algs = new Mnemonic("DNSSEC algorithm", 2);
        algs.setMaximum(255);
        algs.setNumericAllowed(true);
        algs.add(1, "RSAMD5");
        algs.add(2, "DH");
        algs.add(3, "DSA");
        algs.add(4, "ECC");
        algs.add(5, "RSASHA1");
        algs.add(6, "DSA-NSEC3-SHA1");
        algs.add(7, "RSA-NSEC3-SHA1");
        algs.add(8, "RSASHA256");
        algs.add(10, "RSASHA512");
        algs.add(252, "INDIRECT");
        algs.add(253, "PRIVATEDNS");
        algs.add(254, "PRIVATEOID");
    }

    private ()
    {
    }
}
