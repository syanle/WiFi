// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Mnemonic

public final class ExtendedFlags
{

    public static final int DO = 32768;
    private static Mnemonic extflags;

    private ExtendedFlags()
    {
    }

    public static String string(int i)
    {
        return extflags.getText(i);
    }

    public static int value(String s)
    {
        return extflags.getValue(s);
    }

    static 
    {
        extflags = new Mnemonic("EDNS Flag", 3);
        extflags.setMaximum(65535);
        extflags.setPrefix("FLAG");
        extflags.setNumericAllowed(true);
        extflags.add(32768, "do");
    }
}
