// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

// Referenced classes of package u.aly:
//            dg, dl, db, cf, 
//            cn, du, dh, dc, 
//            dd, de, dk, di

public class da extends dg
{
    public static class a
        implements di
    {

        private final long a;

        public dg a(du du1)
        {
            return new da(du1, a);
        }

        public a()
        {
            a = -1L;
        }

        public a(int i1)
        {
            a = i1;
        }
    }

    private static class b
    {

        public static final byte a = 1;
        public static final byte b = 2;
        public static final byte c = 3;
        public static final byte d = 4;
        public static final byte e = 5;
        public static final byte f = 6;
        public static final byte g = 7;
        public static final byte h = 8;
        public static final byte i = 9;
        public static final byte j = 10;
        public static final byte k = 11;
        public static final byte l = 12;

        private b()
        {
        }
    }


    private static final dl d = new dl("");
    private static final db e = new db("", (byte)0, (short)0);
    private static final byte f[];
    private static final byte h = -126;
    private static final byte i = 1;
    private static final byte j = 31;
    private static final byte k = -32;
    private static final int l = 5;
    byte a[];
    byte b[];
    byte c[];
    private cf m;
    private short n;
    private db o;
    private Boolean p;
    private final long q;
    private byte r[];

    public da(du du1)
    {
        this(du1, -1L);
    }

    public da(du du1, long l1)
    {
        super(du1);
        m = new cf(15);
        n = 0;
        o = null;
        p = null;
        a = new byte[5];
        b = new byte[10];
        r = new byte[1];
        c = new byte[1];
        q = l1;
    }

    private int E()
        throws cn
    {
        int i2;
        i2 = 0;
        int i1 = 0;
        if (g.h() >= 5)
        {
            byte abyte0[] = g.f();
            int j2 = g.g();
            int k1 = 0;
            i2 = 0;
            do
            {
                byte byte0 = abyte0[j2 + i1];
                i2 |= (byte0 & 0x7f) << k1;
                if ((byte0 & 0x80) != 128)
                {
                    g.a(i1 + 1);
                    return i2;
                }
                k1 += 7;
                i1++;
            } while (true);
        }
          goto _L1
_L2:
        int j1;
        j1 += 7;
_L3:
        int l1;
        i2 = u();
        l1 |= (i2 & 0x7f) << j1;
        if ((i2 & 0x80) != 128)
        {
            return l1;
        }
        if (true) goto _L2; else goto _L1
_L1:
        l1 = 0;
        j1 = i2;
          goto _L3
    }

    private long F()
        throws cn
    {
        int i1 = 0;
        boolean flag = false;
        long l1 = 0L;
        long l2 = l1;
        if (g.h() >= 10)
        {
            byte abyte0[] = g.f();
            int k1 = g.g();
            int j1 = 0;
            i1 = ((flag) ? 1 : 0);
            do
            {
                byte byte1 = abyte0[k1 + i1];
                l1 |= (long)(byte1 & 0x7f) << j1;
                if ((byte1 & 0x80) != 128)
                {
                    g.a(i1 + 1);
                    return l1;
                }
                j1 += 7;
                i1++;
            } while (true);
        }
        do
        {
            byte byte0 = u();
            l2 |= (long)(byte0 & 0x7f) << i1;
            if ((byte0 & 0x80) == 128)
            {
                i1 += 7;
            } else
            {
                return l2;
            }
        } while (true);
    }

    private long a(byte abyte0[])
    {
        return ((long)abyte0[7] & 255L) << 56 | ((long)abyte0[6] & 255L) << 48 | ((long)abyte0[5] & 255L) << 40 | ((long)abyte0[4] & 255L) << 32 | ((long)abyte0[3] & 255L) << 24 | ((long)abyte0[2] & 255L) << 16 | ((long)abyte0[1] & 255L) << 8 | (long)abyte0[0] & 255L;
    }

    private void a(long l1, byte abyte0[], int i1)
    {
        abyte0[i1 + 0] = (byte)(int)(l1 & 255L);
        abyte0[i1 + 1] = (byte)(int)(l1 >> 8 & 255L);
        abyte0[i1 + 2] = (byte)(int)(l1 >> 16 & 255L);
        abyte0[i1 + 3] = (byte)(int)(l1 >> 24 & 255L);
        abyte0[i1 + 4] = (byte)(int)(l1 >> 32 & 255L);
        abyte0[i1 + 5] = (byte)(int)(l1 >> 40 & 255L);
        abyte0[i1 + 6] = (byte)(int)(l1 >> 48 & 255L);
        abyte0[i1 + 7] = (byte)(int)(l1 >> 56 & 255L);
    }

    private void a(db db1, byte byte0)
        throws cn
    {
        byte byte1 = byte0;
        if (byte0 == -1)
        {
            byte1 = e(db1.b);
        }
        if (db1.c > n && db1.c - n <= 15)
        {
            d(db1.c - n << 4 | byte1);
        } else
        {
            b(byte1);
            a(db1.c);
        }
        n = db1.c;
    }

    private void a(byte abyte0[], int i1, int j1)
        throws cn
    {
        b(j1);
        g.b(abyte0, i1, j1);
    }

    private void b(byte byte0)
        throws cn
    {
        r[0] = byte0;
        g.b(r);
    }

    private void b(int i1)
        throws cn
    {
        boolean flag = false;
        int j1 = i1;
        i1 = ((flag) ? 1 : 0);
        do
        {
            if ((j1 & 0xffffff80) == 0)
            {
                a[i1] = (byte)j1;
                g.b(a, 0, i1 + 1);
                return;
            }
            a[i1] = (byte)(j1 & 0x7f | 0x80);
            j1 >>>= 7;
            i1++;
        } while (true);
    }

    private void b(long l1)
        throws cn
    {
        int i1 = 0;
        do
        {
            if ((-128L & l1) == 0L)
            {
                b[i1] = (byte)(int)l1;
                g.b(b, 0, i1 + 1);
                return;
            }
            b[i1] = (byte)(int)(127L & l1 | 128L);
            l1 >>>= 7;
            i1++;
        } while (true);
    }

    private int c(int i1)
    {
        return i1 << 1 ^ i1 >> 31;
    }

    private long c(long l1)
    {
        return l1 << 1 ^ l1 >> 63;
    }

    private boolean c(byte byte0)
    {
        byte0 &= 0xf;
        return byte0 == 1 || byte0 == 2;
    }

    private byte d(byte byte0)
        throws dh
    {
        switch ((byte)(byte0 & 0xf))
        {
        default:
            throw new dh((new StringBuilder()).append("don't know what type: ").append((byte)(byte0 & 0xf)).toString());

        case 0: // '\0'
            return 0;

        case 1: // '\001'
        case 2: // '\002'
            return 2;

        case 3: // '\003'
            return 3;

        case 4: // '\004'
            return 6;

        case 5: // '\005'
            return 8;

        case 6: // '\006'
            return 10;

        case 7: // '\007'
            return 4;

        case 8: // '\b'
            return 11;

        case 9: // '\t'
            return 15;

        case 10: // '\n'
            return 14;

        case 11: // '\013'
            return 13;

        case 12: // '\f'
            return 12;
        }
    }

    private long d(long l1)
    {
        return l1 >>> 1 ^ -(1L & l1);
    }

    private void d(int i1)
        throws cn
    {
        b((byte)i1);
    }

    private byte e(byte byte0)
    {
        return f[byte0];
    }

    private byte[] e(int i1)
        throws cn
    {
        if (i1 == 0)
        {
            return new byte[0];
        } else
        {
            byte abyte0[] = new byte[i1];
            g.d(abyte0, 0, i1);
            return abyte0;
        }
    }

    private void f(int i1)
        throws dh
    {
        if (i1 < 0)
        {
            throw new dh((new StringBuilder()).append("Negative length: ").append(i1).toString());
        }
        if (q != -1L && (long)i1 > q)
        {
            throw new dh((new StringBuilder()).append("Length exceeded max allowed: ").append(i1).toString());
        } else
        {
            return;
        }
    }

    private int g(int i1)
    {
        return i1 >>> 1 ^ -(i1 & 1);
    }

    public ByteBuffer A()
        throws cn
    {
        int i1 = E();
        f(i1);
        if (i1 == 0)
        {
            return ByteBuffer.wrap(new byte[0]);
        } else
        {
            byte abyte0[] = new byte[i1];
            g.d(abyte0, 0, i1);
            return ByteBuffer.wrap(abyte0);
        }
    }

    public void B()
    {
        m.c();
        n = 0;
    }

    public void a()
        throws cn
    {
    }

    public void a(byte byte0)
        throws cn
    {
        b(byte0);
    }

    protected void a(byte byte0, int i1)
        throws cn
    {
        if (i1 <= 14)
        {
            d(i1 << 4 | e(byte0));
            return;
        } else
        {
            d(e(byte0) | 0xf0);
            b(i1);
            return;
        }
    }

    public void a(double d1)
        throws cn
    {
        byte abyte0[] = new byte[8];
        byte[] _tmp = abyte0;
        abyte0[0] = 0;
        abyte0[1] = 0;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = 0;
        abyte0[5] = 0;
        abyte0[6] = 0;
        abyte0[7] = 0;
        a(Double.doubleToLongBits(d1), abyte0, 0);
        g.b(abyte0);
    }

    public void a(int i1)
        throws cn
    {
        b(c(i1));
    }

    public void a(long l1)
        throws cn
    {
        b(c(l1));
    }

    public void a(String s1)
        throws cn
    {
        try
        {
            s1 = s1.getBytes("UTF-8");
            a(((byte []) (s1)), 0, s1.length);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new cn("UTF-8 not supported!");
        }
    }

    public void a(ByteBuffer bytebuffer)
        throws cn
    {
        int i1 = bytebuffer.limit();
        int j1 = bytebuffer.position();
        a(bytebuffer.array(), bytebuffer.position() + bytebuffer.arrayOffset(), i1 - j1);
    }

    public void a(db db1)
        throws cn
    {
        if (db1.b == 2)
        {
            o = db1;
            return;
        } else
        {
            a(db1, (byte)-1);
            return;
        }
    }

    public void a(dc dc1)
        throws cn
    {
        a(dc1.a, dc1.b);
    }

    public void a(dd dd1)
        throws cn
    {
        if (dd1.c == 0)
        {
            d(0);
            return;
        } else
        {
            b(dd1.c);
            d(e(dd1.a) << 4 | e(dd1.b));
            return;
        }
    }

    public void a(de de1)
        throws cn
    {
        b((byte)-126);
        d(de1.b << 5 & 0xffffffe0 | 1);
        b(de1.c);
        a(de1.a);
    }

    public void a(dk dk1)
        throws cn
    {
        a(dk1.a, dk1.b);
    }

    public void a(dl dl1)
        throws cn
    {
        m.a(n);
        n = 0;
    }

    public void a(short word0)
        throws cn
    {
        b(c(word0));
    }

    public void a(boolean flag)
        throws cn
    {
        boolean flag1 = true;
        byte byte0 = 1;
        if (o != null)
        {
            db db1 = o;
            if (!flag)
            {
                byte0 = 2;
            }
            a(db1, byte0);
            o = null;
            return;
        }
        if (flag)
        {
            byte0 = flag1;
        } else
        {
            byte0 = 2;
        }
        b(byte0);
    }

    public void b()
        throws cn
    {
        n = m.a();
    }

    public void c()
        throws cn
    {
    }

    public void d()
        throws cn
    {
        b((byte)0);
    }

    public void e()
        throws cn
    {
    }

    public void f()
        throws cn
    {
    }

    public void g()
        throws cn
    {
    }

    public de h()
        throws cn
    {
        int i1 = u();
        if (i1 != -126)
        {
            throw new dh((new StringBuilder()).append("Expected protocol id ").append(Integer.toHexString(-126)).append(" but got ").append(Integer.toHexString(i1)).toString());
        }
        i1 = u();
        byte byte1 = (byte)(i1 & 0x1f);
        if (byte1 != 1)
        {
            throw new dh((new StringBuilder()).append("Expected version 1 but got ").append(byte1).toString());
        } else
        {
            byte byte0 = (byte)(i1 >> 5 & 3);
            i1 = E();
            return new de(z(), byte0, i1);
        }
    }

    public void i()
        throws cn
    {
    }

    public dl j()
        throws cn
    {
        m.a(n);
        n = 0;
        return d;
    }

    public void k()
        throws cn
    {
        n = m.a();
    }

    public db l()
        throws cn
    {
        byte byte0 = u();
        if (byte0 == 0)
        {
            return e;
        }
        short word1 = (short)((byte0 & 0xf0) >> 4);
        short word0;
        db db1;
        if (word1 == 0)
        {
            word0 = v();
        } else
        {
            word0 = (short)(word1 + n);
        }
        db1 = new db("", d((byte)(byte0 & 0xf)), word0);
        if (c(byte0))
        {
            Boolean boolean1;
            if ((byte)(byte0 & 0xf) == 1)
            {
                boolean1 = Boolean.TRUE;
            } else
            {
                boolean1 = Boolean.FALSE;
            }
            p = boolean1;
        }
        n = db1.c;
        return db1;
    }

    public void m()
        throws cn
    {
    }

    public dd n()
        throws cn
    {
        int j1 = E();
        int i1;
        if (j1 == 0)
        {
            i1 = 0;
        } else
        {
            i1 = u();
        }
        return new dd(d((byte)(i1 >> 4)), d((byte)(i1 & 0xf)), j1);
    }

    public void o()
        throws cn
    {
    }

    public dc p()
        throws cn
    {
        byte byte0 = u();
        int j1 = byte0 >> 4 & 0xf;
        int i1 = j1;
        if (j1 == 15)
        {
            i1 = E();
        }
        return new dc(d(byte0), i1);
    }

    public void q()
        throws cn
    {
    }

    public dk r()
        throws cn
    {
        return new dk(p());
    }

    public void s()
        throws cn
    {
    }

    public boolean t()
        throws cn
    {
        boolean flag = true;
        if (p != null)
        {
            flag = p.booleanValue();
            p = null;
        } else
        if (u() != 1)
        {
            return false;
        }
        return flag;
    }

    public byte u()
        throws cn
    {
        if (g.h() > 0)
        {
            byte byte0 = g.f()[g.g()];
            g.a(1);
            return byte0;
        } else
        {
            g.d(c, 0, 1);
            return c[0];
        }
    }

    public short v()
        throws cn
    {
        return (short)g(E());
    }

    public int w()
        throws cn
    {
        return g(E());
    }

    public long x()
        throws cn
    {
        return d(F());
    }

    public double y()
        throws cn
    {
        byte abyte0[] = new byte[8];
        g.d(abyte0, 0, 8);
        return Double.longBitsToDouble(a(abyte0));
    }

    public String z()
        throws cn
    {
        int i1;
        i1 = E();
        f(i1);
        if (i1 == 0)
        {
            return "";
        }
        String s1;
        if (g.h() < i1)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        s1 = new String(g.f(), g.g(), i1, "UTF-8");
        g.a(i1);
        UnsupportedEncodingException unsupportedencodingexception;
        return s1;
        String s2;
        try
        {
            s2 = new String(e(i1), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new cn("UTF-8 not supported!");
        }
        return s2;
    }

    static 
    {
        f = new byte[16];
        f[0] = 0;
        f[2] = 1;
        f[3] = 3;
        f[6] = 4;
        f[8] = 5;
        f[10] = 6;
        f[4] = 7;
        f[11] = 8;
        f[15] = 9;
        f[14] = 10;
        f[13] = 11;
        f[12] = 12;
    }
}
