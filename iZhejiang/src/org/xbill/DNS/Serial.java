// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


public final class Serial
{

    private static final long MAX32 = 0xffffffffL;

    private Serial()
    {
    }

    public static int compare(long l, long l1)
    {
        if (l < 0L || l > 0xffffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" out of range").toString());
        }
        if (l1 < 0L || l1 > 0xffffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(l1))).append(" out of range").toString());
        }
        l1 = l - l1;
        if (l1 < 0xffffffffL) goto _L2; else goto _L1
_L1:
        l = l1 - 0x100000000L;
_L4:
        return (int)l;
_L2:
        l = l1;
        if (l1 < 0xffffffff00000001L)
        {
            l = l1 + 0x100000000L;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static long increment(long l)
    {
        if (l < 0L || l > 0xffffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" out of range").toString());
        }
        if (l == 0xffffffffL)
        {
            return 0L;
        } else
        {
            return 1L + l;
        }
    }
}
