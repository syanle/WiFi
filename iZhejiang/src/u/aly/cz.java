// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

// Referenced classes of package u.aly:
//            dg, dl, cn, du, 
//            db, dc, dd, de, 
//            dk, dh, di

public class cz extends dg
{
    public static class a
        implements di
    {

        protected boolean a;
        protected boolean b;
        protected int c;

        public dg a(du du1)
        {
            du1 = new cz(du1, a, b);
            if (c != 0)
            {
                du1.c(c);
            }
            return du1;
        }

        public a()
        {
            this(false, true);
        }

        public a(boolean flag, boolean flag1)
        {
            this(flag, flag1, 0);
        }

        public a(boolean flag, boolean flag1, int i1)
        {
            a = false;
            b = true;
            a = flag;
            b = flag1;
            c = i1;
        }
    }


    protected static final int a = 0xffff0000;
    protected static final int b = 0x80010000;
    private static final dl h = new dl();
    protected boolean c;
    protected boolean d;
    protected int e;
    protected boolean f;
    private byte i[];
    private byte j[];
    private byte k[];
    private byte l[];
    private byte m[];
    private byte n[];
    private byte o[];
    private byte p[];

    public cz(du du1)
    {
        this(du1, false, true);
    }

    public cz(du du1, boolean flag, boolean flag1)
    {
        super(du1);
        c = false;
        d = true;
        f = false;
        i = new byte[1];
        j = new byte[2];
        k = new byte[4];
        l = new byte[8];
        m = new byte[1];
        n = new byte[2];
        o = new byte[4];
        p = new byte[8];
        c = flag;
        d = flag1;
    }

    private int a(byte abyte0[], int i1, int j1)
        throws cn
    {
        d(j1);
        return g.d(abyte0, i1, j1);
    }

    public ByteBuffer A()
        throws cn
    {
        int i1 = w();
        d(i1);
        if (g.h() >= i1)
        {
            ByteBuffer bytebuffer = ByteBuffer.wrap(g.f(), g.g(), i1);
            g.a(i1);
            return bytebuffer;
        } else
        {
            byte abyte0[] = new byte[i1];
            g.d(abyte0, 0, i1);
            return ByteBuffer.wrap(abyte0);
        }
    }

    public void a()
    {
    }

    public void a(byte byte0)
        throws cn
    {
        i[0] = byte0;
        g.b(i, 0, 1);
    }

    public void a(double d1)
        throws cn
    {
        a(Double.doubleToLongBits(d1));
    }

    public void a(int i1)
        throws cn
    {
        k[0] = (byte)(i1 >> 24 & 0xff);
        k[1] = (byte)(i1 >> 16 & 0xff);
        k[2] = (byte)(i1 >> 8 & 0xff);
        k[3] = (byte)(i1 & 0xff);
        g.b(k, 0, 4);
    }

    public void a(long l1)
        throws cn
    {
        l[0] = (byte)(int)(l1 >> 56 & 255L);
        l[1] = (byte)(int)(l1 >> 48 & 255L);
        l[2] = (byte)(int)(l1 >> 40 & 255L);
        l[3] = (byte)(int)(l1 >> 32 & 255L);
        l[4] = (byte)(int)(l1 >> 24 & 255L);
        l[5] = (byte)(int)(l1 >> 16 & 255L);
        l[6] = (byte)(int)(l1 >> 8 & 255L);
        l[7] = (byte)(int)(255L & l1);
        g.b(l, 0, 8);
    }

    public void a(String s1)
        throws cn
    {
        try
        {
            s1 = s1.getBytes("UTF-8");
            a(s1.length);
            g.b(s1, 0, s1.length);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new cn("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void a(ByteBuffer bytebuffer)
        throws cn
    {
        int i1 = bytebuffer.limit() - bytebuffer.position();
        a(i1);
        g.b(bytebuffer.array(), bytebuffer.position() + bytebuffer.arrayOffset(), i1);
    }

    public void a(db db1)
        throws cn
    {
        a(db1.b);
        a(db1.c);
    }

    public void a(dc dc1)
        throws cn
    {
        a(dc1.a);
        a(dc1.b);
    }

    public void a(dd dd1)
        throws cn
    {
        a(dd1.a);
        a(dd1.b);
        a(dd1.c);
    }

    public void a(de de1)
        throws cn
    {
        if (d)
        {
            a(0x80010000 | de1.b);
            a(de1.a);
            a(de1.c);
            return;
        } else
        {
            a(de1.a);
            a(de1.b);
            a(de1.c);
            return;
        }
    }

    public void a(dk dk1)
        throws cn
    {
        a(dk1.a);
        a(dk1.b);
    }

    public void a(dl dl1)
    {
    }

    public void a(short word0)
        throws cn
    {
        j[0] = (byte)(word0 >> 8 & 0xff);
        j[1] = (byte)(word0 & 0xff);
        g.b(j, 0, 2);
    }

    public void a(boolean flag)
        throws cn
    {
        byte byte0;
        if (flag)
        {
            byte0 = 1;
        } else
        {
            byte0 = 0;
        }
        a(byte0);
    }

    public String b(int i1)
        throws cn
    {
        String s1;
        try
        {
            d(i1);
            byte abyte0[] = new byte[i1];
            g.d(abyte0, 0, i1);
            s1 = new String(abyte0, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new cn("JVM DOES NOT SUPPORT UTF-8");
        }
        return s1;
    }

    public void b()
    {
    }

    public void c()
    {
    }

    public void c(int i1)
    {
        e = i1;
        f = true;
    }

    public void d()
        throws cn
    {
        a((byte)0);
    }

    protected void d(int i1)
        throws cn
    {
        if (i1 < 0)
        {
            throw new dh((new StringBuilder()).append("Negative length: ").append(i1).toString());
        }
        if (f)
        {
            e = e - i1;
            if (e < 0)
            {
                throw new dh((new StringBuilder()).append("Message length exceeded: ").append(i1).toString());
            }
        }
    }

    public void e()
    {
    }

    public void f()
    {
    }

    public void g()
    {
    }

    public de h()
        throws cn
    {
        int i1 = w();
        if (i1 < 0)
        {
            if ((0xffff0000 & i1) != 0x80010000)
            {
                throw new dh(4, "Bad version in readMessageBegin");
            } else
            {
                return new de(z(), (byte)(i1 & 0xff), w());
            }
        }
        if (c)
        {
            throw new dh(4, "Missing version in readMessageBegin, old client?");
        } else
        {
            return new de(b(i1), u(), w());
        }
    }

    public void i()
    {
    }

    public dl j()
    {
        return h;
    }

    public void k()
    {
    }

    public db l()
        throws cn
    {
        byte byte0 = u();
        short word0;
        if (byte0 == 0)
        {
            word0 = 0;
        } else
        {
            word0 = v();
        }
        return new db("", byte0, word0);
    }

    public void m()
    {
    }

    public dd n()
        throws cn
    {
        return new dd(u(), u(), w());
    }

    public void o()
    {
    }

    public dc p()
        throws cn
    {
        return new dc(u(), w());
    }

    public void q()
    {
    }

    public dk r()
        throws cn
    {
        return new dk(u(), w());
    }

    public void s()
    {
    }

    public boolean t()
        throws cn
    {
        return u() == 1;
    }

    public byte u()
        throws cn
    {
        if (g.h() >= 1)
        {
            byte byte0 = g.f()[g.g()];
            g.a(1);
            return byte0;
        } else
        {
            a(m, 0, 1);
            return m[0];
        }
    }

    public short v()
        throws cn
    {
        int i1 = 0;
        byte abyte0[] = n;
        byte byte0;
        if (g.h() >= 2)
        {
            abyte0 = g.f();
            i1 = g.g();
            g.a(2);
        } else
        {
            a(n, 0, 2);
        }
        byte0 = abyte0[i1];
        return (short)(abyte0[i1 + 1] & 0xff | (byte0 & 0xff) << 8);
    }

    public int w()
        throws cn
    {
        int i1 = 0;
        byte abyte0[] = o;
        byte byte0;
        byte byte1;
        byte byte2;
        if (g.h() >= 4)
        {
            abyte0 = g.f();
            i1 = g.g();
            g.a(4);
        } else
        {
            a(o, 0, 4);
        }
        byte0 = abyte0[i1];
        byte1 = abyte0[i1 + 1];
        byte2 = abyte0[i1 + 2];
        return abyte0[i1 + 3] & 0xff | ((byte0 & 0xff) << 24 | (byte1 & 0xff) << 16 | (byte2 & 0xff) << 8);
    }

    public long x()
        throws cn
    {
        int i1 = 0;
        byte abyte0[] = p;
        long l1;
        long l2;
        long l3;
        long l4;
        long l5;
        long l6;
        long l7;
        if (g.h() >= 8)
        {
            abyte0 = g.f();
            i1 = g.g();
            g.a(8);
        } else
        {
            a(p, 0, 8);
        }
        l1 = abyte0[i1] & 0xff;
        l2 = abyte0[i1 + 1] & 0xff;
        l3 = abyte0[i1 + 2] & 0xff;
        l4 = abyte0[i1 + 3] & 0xff;
        l5 = abyte0[i1 + 4] & 0xff;
        l6 = abyte0[i1 + 5] & 0xff;
        l7 = abyte0[i1 + 6] & 0xff;
        return (long)(abyte0[i1 + 7] & 0xff) | (l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8);
    }

    public double y()
        throws cn
    {
        return Double.longBitsToDouble(x());
    }

    public String z()
        throws cn
    {
        int i1 = w();
        if (g.h() >= i1)
        {
            String s1;
            try
            {
                s1 = new String(g.f(), g.g(), i1, "UTF-8");
                g.a(i1);
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new cn("JVM DOES NOT SUPPORT UTF-8");
            }
            return s1;
        } else
        {
            return b(i1);
        }
    }

}
