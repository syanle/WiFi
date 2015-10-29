// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import net.youmi.android.a.b.b.d;

// Referenced classes of package net.youmi.android.a.b.d:
//            g

public class b
{

    static final char a[] = "0123456789ABCDEF".toCharArray();
    private static final char b[] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-".toCharArray();
    private static int c[] = {
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 
        31
    };

    public static final int a(char c1)
    {
        return "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-".indexOf(c1);
    }

    public static final String a(int i)
    {
        Object obj;
        int j;
        int k;
        int l;
        try
        {
            obj = new StringBuilder(i);
        }
        catch (Throwable throwable)
        {
            return "abcd";
        }
        j = 0;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        k = Math.abs(d.a(b.length));
        l = b.length;
        ((StringBuilder) (obj)).append(b[k % l]);
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_11;
_L1:
        obj = ((StringBuilder) (obj)).toString();
        return ((String) (obj));
    }

    public static final String a(String s)
    {
        int k = s.length();
        StringBuilder stringbuilder = new StringBuilder((k << 1) / 3);
        int i = 0;
        while (i < k) 
        {
            int j;
            int l;
            if (i + 3 < k)
            {
                j = i + 3;
            } else
            {
                j = k;
            }
            l = Integer.parseInt(s.substring(i, j), 16);
            if (l < 64)
            {
                j = 0;
            } else
            {
                j = l >>> 6;
            }
            j = (byte)j;
            stringbuilder.append(b[j]);
            stringbuilder.append(b[l & 0x3f]);
            i += 3;
        }
        return stringbuilder.toString();
    }

    public static final String a(byte abyte0[], String s, int i)
    {
        StringBuilder stringbuilder;
        String s1;
        int j;
        int l;
        int i1;
        stringbuilder = new StringBuilder();
        byte abyte1[] = s.getBytes();
        byte abyte2[] = new byte[abyte1.length + abyte0.length];
        System.arraycopy(abyte1, 0, abyte2, 0, abyte1.length);
        System.arraycopy(abyte0, 0, abyte2, abyte1.length, abyte0.length);
        s1 = g.a(abyte2).substring(9, 18);
        i1 = s1.length();
        j = 0;
        while (j < 9) 
        {
            int j1 = j + 3;
            int k = j1;
            if (j1 > i1)
            {
                k = i1;
            }
            j1 = Integer.parseInt(s1.substring(j, k), 16);
            if (j1 < 64)
            {
                k = 0;
            } else
            {
                k = j1 >>> 6;
            }
            stringbuilder.append(b[k]);
            stringbuilder.append(b[j1 & 0x3f]);
            j += 3;
        }
        s1 = stringbuilder.toString();
        s = g.a((new StringBuilder()).append(s1).append(s).toString());
        l = 0;
        for (i1 = 0; i1 < 26;)
        {
            l <<= 1;
            j = l;
            if (s.charAt(i1) > '7')
            {
                j = l + 1;
            }
            i1++;
            l = j;
        }

        j = l;
        if (l < 67)
        {
            j = 67;
        }
        int k1;
        int i2;
        int k2;
        int i3;
        byte byte0;
        if ((j & 1) == 0)
        {
            l = j - 1;
        } else
        {
            l = j - 2;
        }
        i1 = l;
_L7:
        if (i1 <= 0) goto _L2; else goto _L1
_L1:
        l = 0;
_L6:
        if (l >= c.length)
        {
            break MISSING_BLOCK_LABEL_664;
        }
        if (i1 % c[l] != 0) goto _L4; else goto _L3
_L3:
        l = 0;
_L8:
        if (l == 0) goto _L5; else goto _L2
_L4:
        l++;
          goto _L6
_L5:
        i1 -= 2;
          goto _L7
_L2:
        stringbuilder.delete(0, stringbuilder.length());
        s = s.getBytes();
        k2 = s.length;
        i3 = abyte0.length;
        l = 0;
        for (k1 = 0; k1 < i3; k1++)
        {
            byte0 = abyte0[k1];
            i2 = l + 1;
            byte0 = (byte)(s[l] ^ byte0);
            l = i2;
            if (i2 >= k2)
            {
                l = 0;
            }
            stringbuilder.append(a[(byte0 & 0xf0) >>> 4]);
            stringbuilder.append(a[byte0 & 0xf]);
        }

        abyte0 = stringbuilder.toString();
        stringbuilder.delete(0, stringbuilder.length());
        int j2 = abyte0.length();
        stringbuilder.append(b[j2 % 3]);
        boolean flag = false;
        l = j;
        j = ((flag) ? 1 : 0);
        while (j < j2) 
        {
            int l1;
            int l2;
            if (j + 3 < j2)
            {
                l1 = j + 3;
            } else
            {
                l1 = j2;
            }
            l2 = Integer.parseInt(abyte0.substring(j, l1), 16);
            if (l2 < 64)
            {
                l1 = 0;
            } else
            {
                l1 = l2 >>> 6;
            }
            l1 = (byte)l1;
            l = l * i1 + i & 0x3f;
            stringbuilder.append(b[l1 + l & 0x3f]);
            l = i1 * l + i & 0x3f;
            stringbuilder.append(b[l2 + l & 0x3f]);
            j += 3;
        }
        return (new StringBuilder()).append(s1).append(stringbuilder.toString()).toString();
        l = 1;
          goto _L8
    }

    public static final char b(int i)
    {
        if (i >= b.length || i <= -1)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        char c1 = b[i];
        return c1;
        Throwable throwable;
        throwable;
        return '0';
    }

}
