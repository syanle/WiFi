// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Mnemonic

public final class Flags
{

    public static final byte AA = 5;
    public static final byte AD = 10;
    public static final byte CD = 11;
    public static final int DO = 32768;
    public static final byte QR = 0;
    public static final byte RA = 8;
    public static final byte RD = 7;
    public static final byte TC = 6;
    private static Mnemonic flags;

    private Flags()
    {
    }

    public static boolean isFlag(int i)
    {
        boolean flag = true;
        flags.check(i);
        if (i >= 1 && i <= 4 || i >= 12)
        {
            flag = false;
        }
        return flag;
    }

    public static String string(int i)
    {
        return flags.getText(i);
    }

    public static int value(String s)
    {
        return flags.getValue(s);
    }

    static 
    {
        flags = new Mnemonic("DNS Header Flag", 3);
        flags.setMaximum(15);
        flags.setPrefix("FLAG");
        flags.setNumericAllowed(true);
        flags.add(0, "qr");
        flags.add(5, "aa");
        flags.add(6, "tc");
        flags.add(7, "rd");
        flags.add(8, "ra");
        flags.add(10, "ad");
        flags.add(11, "cd");
    }
}
