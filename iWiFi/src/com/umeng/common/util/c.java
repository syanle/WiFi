// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.util;

import java.math.BigInteger;

// Referenced classes of package com.umeng.common.util:
//            d, a

public class c extends d
{

    static final byte a[] = {
        13, 10
    };
    private static final int m = 6;
    private static final int n = 3;
    private static final int o = 4;
    private static final byte p[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte q[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte r[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 
        54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
        -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
        39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
        49, 50, 51
    };
    private static final int s = 63;
    private final byte t[];
    private final byte u[];
    private final byte v[];
    private final int w;
    private final int x;
    private int y;

    public c()
    {
        this(0);
    }

    public c(int j)
    {
        this(j, a);
    }

    public c(int j, byte abyte0[])
    {
        this(j, abyte0, false);
    }

    public c(int j, byte abyte0[], boolean flag)
    {
        int k;
        if (abyte0 == null)
        {
            k = 0;
        } else
        {
            k = abyte0.length;
        }
        super(3, 4, j, k);
        u = r;
        if (abyte0 != null)
        {
            if (n(abyte0))
            {
                abyte0 = com.umeng.common.util.a.f(abyte0);
                throw new IllegalArgumentException((new StringBuilder()).append("lineSeparator must not contain base64 characters: [").append(abyte0).append("]").toString());
            }
            if (j > 0)
            {
                x = abyte0.length + 4;
                v = new byte[abyte0.length];
                System.arraycopy(abyte0, 0, v, 0, abyte0.length);
            } else
            {
                x = 4;
                v = null;
            }
        } else
        {
            x = 4;
            v = null;
        }
        w = x - 1;
        if (flag)
        {
            abyte0 = q;
        } else
        {
            abyte0 = p;
        }
        t = abyte0;
    }

    public c(boolean flag)
    {
        this(76, a, flag);
    }

    public static boolean a(byte byte0)
    {
        return byte0 == 61 || byte0 >= 0 && byte0 < r.length && r[byte0] != -1;
    }

    public static boolean a(String s1)
    {
        return b(com.umeng.common.util.a.f(s1));
    }

    public static boolean a(byte abyte0[])
    {
        return b(abyte0);
    }

    public static byte[] a(BigInteger biginteger)
    {
        if (biginteger == null)
        {
            throw new NullPointerException("encodeInteger called with null parameter");
        } else
        {
            return a(b(biginteger), false);
        }
    }

    public static byte[] a(byte abyte0[], boolean flag)
    {
        return a(abyte0, flag, false);
    }

    public static byte[] a(byte abyte0[], boolean flag, boolean flag1)
    {
        return a(abyte0, flag, flag1, 0x7fffffff);
    }

    public static byte[] a(byte abyte0[], boolean flag, boolean flag1, int j)
    {
        if (abyte0 == null || abyte0.length == 0)
        {
            return abyte0;
        }
        c c1;
        long l;
        if (flag)
        {
            c1 = new c(flag1);
        } else
        {
            c1 = new c(0, a, flag1);
        }
        l = c1.o(abyte0);
        if (l > (long)j)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Input array too big, the output array would be bigger (").append(l).append(") than the specified maximum size of ").append(j).toString());
        } else
        {
            return c1.l(abyte0);
        }
    }

    public static boolean b(byte abyte0[])
    {
        for (int j = 0; j < abyte0.length; j++)
        {
            if (!a(abyte0[j]) && !c(abyte0[j]))
            {
                return false;
            }
        }

        return true;
    }

    public static byte[] b(String s1)
    {
        return (new c()).c(s1);
    }

    static byte[] b(BigInteger biginteger)
    {
        int i1 = (biginteger.bitLength() + 7 >> 3) << 3;
        byte abyte0[] = biginteger.toByteArray();
        if (biginteger.bitLength() % 8 != 0 && biginteger.bitLength() / 8 + 1 == i1 / 8)
        {
            return abyte0;
        }
        int k = 0;
        int l = abyte0.length;
        int j = l;
        if (biginteger.bitLength() % 8 == 0)
        {
            k = 1;
            j = l - 1;
        }
        l = i1 / 8;
        biginteger = new byte[i1 / 8];
        System.arraycopy(abyte0, k, biginteger, l - j, j);
        return biginteger;
    }

    public static byte[] c(byte abyte0[])
    {
        return a(abyte0, false);
    }

    public static String d(byte abyte0[])
    {
        return com.umeng.common.util.a.f(a(abyte0, false));
    }

    public static byte[] e(byte abyte0[])
    {
        return a(abyte0, false, true);
    }

    public static String f(byte abyte0[])
    {
        return com.umeng.common.util.a.f(a(abyte0, false, true));
    }

    public static byte[] g(byte abyte0[])
    {
        return a(abyte0, true);
    }

    public static byte[] h(byte abyte0[])
    {
        return (new c()).k(abyte0);
    }

    public static BigInteger i(byte abyte0[])
    {
        return new BigInteger(1, h(abyte0));
    }

    void a(byte abyte0[], int j, int k)
    {
        if (!this.j) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (k >= 0) goto _L4; else goto _L3
_L3:
        this.j = true;
        if (this.l == 0 && g == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(x);
        j = i;
        this.l;
        JVM INSTR tableswitch 1 2: default 72
    //                   1 139
    //                   2 264;
           goto _L5 _L6 _L7
_L5:
        k = this.k;
        this.k = (i - j) + k;
        if (g > 0 && this.k > 0)
        {
            System.arraycopy(v, 0, h, i, v.length);
            i = i + v.length;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        abyte0 = h;
        k = i;
        i = k + 1;
        abyte0[k] = t[y >> 2 & 0x3f];
        abyte0 = h;
        k = i;
        i = k + 1;
        abyte0[k] = t[y << 4 & 0x3f];
        if (t == p)
        {
            abyte0 = h;
            k = i;
            i = k + 1;
            abyte0[k] = 61;
            abyte0 = h;
            k = i;
            i = k + 1;
            abyte0[k] = 61;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        abyte0 = h;
        k = i;
        i = k + 1;
        abyte0[k] = t[y >> 10 & 0x3f];
        abyte0 = h;
        k = i;
        i = k + 1;
        abyte0[k] = t[y >> 4 & 0x3f];
        abyte0 = h;
        k = i;
        i = k + 1;
        abyte0[k] = t[y << 2 & 0x3f];
        if (t == p)
        {
            abyte0 = h;
            k = i;
            i = k + 1;
            abyte0[k] = 61;
        }
        if (true) goto _L5; else goto _L4
_L4:
        int l = 0;
        while (l < k) 
        {
            a(x);
            this.l = (this.l + 1) % 3;
            byte byte0 = abyte0[j];
            int i1 = byte0;
            if (byte0 < 0)
            {
                i1 = byte0 + 256;
            }
            y = i1 + (y << 8);
            if (this.l == 0)
            {
                byte abyte1[] = h;
                int j1 = i;
                i = j1 + 1;
                abyte1[j1] = t[y >> 18 & 0x3f];
                abyte1 = h;
                j1 = i;
                i = j1 + 1;
                abyte1[j1] = t[y >> 12 & 0x3f];
                abyte1 = h;
                j1 = i;
                i = j1 + 1;
                abyte1[j1] = t[y >> 6 & 0x3f];
                abyte1 = h;
                j1 = i;
                i = j1 + 1;
                abyte1[j1] = t[y & 0x3f];
                this.k = this.k + 4;
                if (g > 0 && g <= this.k)
                {
                    System.arraycopy(v, 0, h, i, v.length);
                    i = i + v.length;
                    this.k = 0;
                }
            }
            l++;
            j++;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public boolean a()
    {
        return t == q;
    }

    void b(byte abyte0[], int j, int k)
    {
        if (!this.j) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int l;
        if (k < 0)
        {
            this.j = true;
        }
        l = 0;
_L4:
        int i1;
        if (l >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        a(w);
        i1 = abyte0[j];
        if (i1 != 61)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        this.j = true;
        if (!this.j || this.l == 0) goto _L1; else goto _L3
_L3:
        a(w);
        byte abyte1[];
        switch (this.l)
        {
        default:
            return;

        case 2: // '\002'
            y = y >> 4;
            abyte0 = h;
            j = i;
            i = j + 1;
            abyte0[j] = (byte)(y & 0xff);
            return;

        case 3: // '\003'
            y = y >> 2;
            break;
        }
        break MISSING_BLOCK_LABEL_332;
        if (i1 >= 0 && i1 < r.length)
        {
            i1 = r[i1];
            if (i1 >= 0)
            {
                this.l = (this.l + 1) % 4;
                y = i1 + (y << 6);
                if (this.l == 0)
                {
                    abyte1 = h;
                    i1 = i;
                    i = i1 + 1;
                    abyte1[i1] = (byte)(y >> 16 & 0xff);
                    abyte1 = h;
                    i1 = i;
                    i = i1 + 1;
                    abyte1[i1] = (byte)(y >> 8 & 0xff);
                    abyte1 = h;
                    i1 = i;
                    i = i1 + 1;
                    abyte1[i1] = (byte)(y & 0xff);
                }
            }
        }
        l++;
        j++;
          goto _L4
        abyte0 = h;
        j = i;
        i = j + 1;
        abyte0[j] = (byte)(y >> 8 & 0xff);
        abyte0 = h;
        j = i;
        i = j + 1;
        abyte0[j] = (byte)(y & 0xff);
        return;
    }

    protected boolean b(byte byte0)
    {
        return byte0 >= 0 && byte0 < u.length && u[byte0] != -1;
    }

}
