// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;

import net.youmi.android.a.b.d.f;

public class c
{

    public static byte[] a(byte abyte0[], String s, int i)
    {
        byte abyte1[] = abyte0;
        i;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 41
    //                   1 30;
           goto _L1 _L2 _L3
_L1:
        return f.a(abyte0, s);
_L3:
        abyte0 = f.a(abyte0, s);
        return abyte0;
        abyte0;
        abyte1 = null;
_L2:
        return abyte1;
    }

    public static byte[] b(byte abyte0[], String s, int i)
    {
        byte abyte1[] = abyte0;
        i;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 41
    //                   1 30;
           goto _L1 _L2 _L3
_L1:
        return f.b(abyte0, s);
_L3:
        abyte0 = f.b(abyte0, s);
        return abyte0;
        abyte0;
        abyte1 = null;
_L2:
        return abyte1;
    }
}
