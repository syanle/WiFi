// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;

// Referenced classes of package net.youmi.android.a.b.f:
//            e, b, f

public class j
    implements Serializable
{

    public static final j a;
    public static final j b;
    private static final byte e[] = {
        0
    };
    private static final byte f[] = new byte[256];
    private static final DecimalFormat g = new DecimalFormat();
    private byte c[] = new byte[0];
    private long d;

    private j()
    {
    }

    public j(String s, j j1)
    {
        if (!s.equals("")) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        int i;
        int k;
        int l;
        int i1;
        int k1;
        boolean flag1;
        i1 = -1;
        l = 1;
        abyte0 = new byte[64];
        flag1 = false;
        k = 0;
        i = 0;
        k1 = 0;
_L15:
        if (k1 >= s.length()) goto _L4; else goto _L3
_L3:
        byte byte0 = (byte)s.charAt(k1);
        if (!flag1) goto _L6; else goto _L5
_L5:
        if (byte0 < 48 || byte0 > 57 || k >= 3) goto _L8; else goto _L7
_L7:
        k++;
        i = i * 10 + (byte0 - 48);
        if (i > 255)
        {
            throw new IllegalArgumentException("bad escape");
        }
          goto _L9
_L2:
        if (!s.equals("@"))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j1 != null) goto _L11; else goto _L10
_L10:
        b(b, this);
_L19:
        return;
_L11:
        b(j1, this);
        return;
        if (!s.equals(".")) goto _L1; else goto _L12
_L12:
        b(a, this);
        return;
_L9:
        if (k >= 3) goto _L14; else goto _L13
_L13:
        k1++;
          goto _L15
_L14:
        byte0 = (byte)i;
_L17:
        if (l > 63)
        {
            throw new IllegalArgumentException("label too long");
        }
        break; /* Loop/switch isn't completed */
_L8:
        if (k > 0 && k < 3)
        {
            throw new IllegalArgumentException("bad escape");
        }
        if (true) goto _L17; else goto _L16
_L16:
        abyte0[l] = byte0;
        flag1 = false;
        i1 = l;
        l++;
          goto _L13
_L6:
        if (byte0 == 92)
        {
            flag1 = true;
            k = 0;
            i = 0;
        } else
        if (byte0 == 46)
        {
            if (i1 == -1)
            {
                throw new IllegalArgumentException("invalid empty label");
            }
            abyte0[0] = (byte)(l - 1);
            a(s, abyte0, 0, 1);
            i1 = -1;
            l = 1;
        } else
        {
            if (i1 == -1)
            {
                i1 = k1;
            }
            if (l > 63)
            {
                throw new IllegalArgumentException("label too long");
            }
            abyte0[l] = byte0;
            l++;
        }
          goto _L13
_L4:
        if (k > 0 && k < 3)
        {
            throw new IllegalArgumentException("bad escape");
        }
        if (flag1)
        {
            throw new IllegalArgumentException("bad escape");
        }
        boolean flag;
        if (i1 == -1)
        {
            a(s, e, 0, 1);
            flag = true;
        } else
        {
            abyte0[0] = (byte)(l - 1);
            a(s, abyte0, 0, 1);
            flag = false;
        }
        if (j1 == null || flag) goto _L19; else goto _L18
_L18:
        a(s, j1.c, j1.a(0), j1.c());
        return;
          goto _L15
    }

    public j(e e1)
    {
        byte abyte0[] = new byte[64];
        boolean flag1 = false;
        boolean flag = false;
        do
        {
            if (!flag)
            {
                int i = e1.e();
                switch (i & 0xc0)
                {
                default:
                    throw new IOException("bad label type");

                case 0: // '\0'
                    if (c() >= 128)
                    {
                        throw new IOException("too many labels");
                    }
                    if (i == 0)
                    {
                        b(e, 0, 1);
                        flag = true;
                    } else
                    {
                        abyte0[0] = (byte)i;
                        e1.a(abyte0, 1, i);
                        b(abyte0, 0, 1);
                    }
                    break;

                case 192: 
                    int k = ((i & 0xffffff3f) << 8) + e1.e();
                    if (k >= e1.a() - 2)
                    {
                        throw new IOException("bad compression");
                    }
                    i = ((flag1) ? 1 : 0);
                    if (!flag1)
                    {
                        e1.c();
                        i = 1;
                    }
                    e1.a(k);
                    flag1 = i;
                    break;
                }
                continue;
            }
            if (flag1)
            {
                e1.d();
            }
            break;
        } while (true);
    }

    public j(j j1, int i)
    {
        int l = j1.a();
        if (i > l)
        {
            throw new IllegalArgumentException("attempted to remove too many labels");
        }
        c = j1.c;
        b(l - i);
        for (int k = 0; k < 7 && k < l - i; k++)
        {
            a(k, j1.a(k + i));
        }

    }

    private final int a(int i)
    {
        if (i != 0 || c() != 0) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L4:
        return i1;
_L2:
        if (i < 0 || i >= c())
        {
            throw new IllegalArgumentException("label out of range");
        }
        if (i < 7)
        {
            return (int)(d >>> (7 - i) * 8) & 0xff;
        }
        int k = a(6);
        int l = 6;
        do
        {
            i1 = k;
            if (l >= i)
            {
                continue;
            }
            i1 = c[k];
            l++;
            k = i1 + 1 + k;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private String a(byte abyte0[], int i)
    {
        StringBuffer stringbuffer = new StringBuffer();
        int k = i + 1;
        byte byte0 = abyte0[i];
        i = k;
        while (i < k + byte0) 
        {
            int l = abyte0[i] & 0xff;
            if (l <= 32 || l >= 127)
            {
                stringbuffer.append('\\');
                stringbuffer.append(g.format(l));
            } else
            if (l == 34 || l == 40 || l == 41 || l == 46 || l == 59 || l == 92 || l == 64 || l == 36)
            {
                stringbuffer.append('\\');
                stringbuffer.append((char)l);
            } else
            {
                stringbuffer.append((char)l);
            }
            i++;
        }
        return stringbuffer.toString();
    }

    public static j a(String s)
    {
        return a(s, ((j) (null)));
    }

    public static j a(String s, j j1)
    {
        if (s.equals("@") && j1 != null)
        {
            return j1;
        }
        if (s.equals("."))
        {
            return a;
        } else
        {
            return new j(s, j1);
        }
    }

    public static j a(j j1, j j2)
    {
        if (j1.b())
        {
            return j1;
        } else
        {
            j j3 = new j();
            b(j1, j3);
            j3.b(j2.c, j2.a(0), j2.c());
            return j3;
        }
    }

    private final void a(int i, int k)
    {
        if (i >= 7)
        {
            return;
        } else
        {
            i = (7 - i) * 8;
            d = d & ~(255L << i);
            d = d | (long)k << i;
            return;
        }
    }

    private final void a(String s, byte abyte0[], int i, int k)
    {
        try
        {
            b(abyte0, i, k);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    private final void a(byte abyte0[], int i, int k)
    {
        try
        {
            b(abyte0, i, k);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return;
        }
    }

    private final void b(int i)
    {
        d = d & -256L;
        d = d | (long)i;
    }

    private static final void b(j j1, j j2)
    {
        int i = 0;
        if (j1.a(0) == 0)
        {
            j2.c = j1.c;
            j2.d = j1.d;
            return;
        }
        int k = j1.a(0);
        int i1 = j1.c.length - k;
        int l = j1.a();
        j2.c = new byte[i1];
        System.arraycopy(j1.c, k, j2.c, 0, i1);
        for (; i < l && i < 7; i++)
        {
            j2.a(i, j1.a(i) - k);
        }

        j2.b(l);
    }

    private final void b(byte abyte0[], int i, int k)
    {
        boolean flag = false;
        int l;
        int i1;
        int j1;
        int k1;
        if (c == null)
        {
            l = 0;
        } else
        {
            l = c.length - a(0);
        }
        k1 = i;
        j1 = 0;
        i1 = 0;
        for (; j1 < k; j1++)
        {
            int l1 = abyte0[k1];
            if (l1 > 63)
            {
                throw new IllegalStateException("invalid label");
            }
            l1++;
            k1 += l1;
            i1 += l1;
        }

        int i2 = l + i1;
        if (i2 > 255)
        {
            throw new IllegalArgumentException("name too long");
        }
        j1 = c();
        k1 = j1 + k;
        if (k1 > 128)
        {
            throw new IllegalStateException("too many labels");
        }
        byte abyte1[] = new byte[i2];
        if (l != 0)
        {
            System.arraycopy(c, a(0), abyte1, 0, l);
        }
        System.arraycopy(abyte0, i, abyte1, l, i1);
        c = abyte1;
        for (i = ((flag) ? 1 : 0); i < k; i++)
        {
            a(j1 + i, l);
            l += abyte1[l] + 1;
        }

        b(k1);
    }

    private final int c()
    {
        return (int)(d & 255L);
    }

    public int a()
    {
        return c();
    }

    public String a(boolean flag)
    {
        int i = 0;
        int l = a();
        if (l == 0)
        {
            return "@";
        }
        if (l == 1 && c[a(0)] == 0)
        {
            return ".";
        }
        StringBuffer stringbuffer = new StringBuffer();
        int k = a(0);
        do
        {
            byte byte0;
label0:
            {
                if (i < l)
                {
                    byte0 = c[k];
                    if (byte0 > 63)
                    {
                        throw new IllegalStateException("invalid label");
                    }
                    if (byte0 != 0)
                    {
                        break label0;
                    }
                    if (!flag)
                    {
                        stringbuffer.append('.');
                    }
                }
                return stringbuffer.toString();
            }
            if (i > 0)
            {
                stringbuffer.append('.');
            }
            stringbuffer.append(a(c, k));
            k += byte0 + 1;
            i++;
        } while (true);
    }

    public void a(f f1, b b1)
    {
        int l = a();
        for (int i = 0; i < l - 1; i++)
        {
            j j1;
            int k;
            if (i == 0)
            {
                j1 = this;
            } else
            {
                j1 = new j(this, i);
            }
            k = -1;
            if (b1 != null)
            {
                k = b1.a(j1);
            }
            if (k >= 0)
            {
                f1.b(k | 0xc000);
                return;
            }
            if (b1 != null)
            {
                b1.a(f1.a(), j1);
            }
            k = a(i);
            f1.a(c, k, c[k] + 1);
        }

        f1.a(0);
    }

    public boolean b()
    {
        for (int i = a(); i == 0 || c[a(i - 1)] != 0;)
        {
            return false;
        }

        return true;
    }

    public String toString()
    {
        return a(false);
    }

    static 
    {
        a = new j();
        a.a(e, 0, 1);
        b = new j();
    }
}
