// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.utils;


public class hexdump
{

    private static final char hex[] = "0123456789ABCDEF".toCharArray();

    public hexdump()
    {
    }

    public static String dump(String s, byte abyte0[])
    {
        return dump(s, abyte0, 0, abyte0.length);
    }

    public static String dump(String s, byte abyte0[], int i, int j)
    {
        StringBuffer stringbuffer;
        int k;
        int i1;
        int j1;
        stringbuffer = new StringBuffer();
        stringbuffer.append((new StringBuilder(String.valueOf(j))).append("b").toString());
        if (s != null)
        {
            stringbuffer.append((new StringBuilder(" (")).append(s).append(")").toString());
        }
        stringbuffer.append(':');
        i1 = stringbuffer.toString().length() + 8 & -8;
        stringbuffer.append('\t');
        j1 = (80 - i1) / 3;
        k = 0;
_L3:
        if (k >= j)
        {
            stringbuffer.append('\n');
            return stringbuffer.toString();
        }
        if (k == 0 || k % j1 != 0) goto _L2; else goto _L1
_L1:
        int l;
        stringbuffer.append('\n');
        l = 0;
_L4:
        if (l < i1 / 8)
        {
            break MISSING_BLOCK_LABEL_221;
        }
_L2:
        l = abyte0[k + i] & 0xff;
        stringbuffer.append(hex[l >> 4]);
        stringbuffer.append(hex[l & 0xf]);
        stringbuffer.append(' ');
        k++;
          goto _L3
        stringbuffer.append('\t');
        l++;
          goto _L4
    }

}
