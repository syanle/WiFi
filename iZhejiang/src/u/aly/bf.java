// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cu, cs, 
//            al, cn, da, ds, 
//            dg, dp, do, ce, 
//            co, dj, dm

public class bf
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bf bf1)
            throws cn
        {
            dg1.j();
_L13:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                bf1.H();
                return;
            }
            db1.c;
            JVM INSTR tableswitch 1 10: default 84
        //                       1 99
        //                       2 135
        //                       3 171
        //                       4 207
        //                       5 242
        //                       6 277
        //                       7 313
        //                       8 349
        //                       9 385
        //                       10 424;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
            break MISSING_BLOCK_LABEL_424;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L14:
            dg1.m();
            if (true) goto _L13; else goto _L12
_L12:
            if (db1.b == 8)
            {
                bf1.a = dg1.w();
                bf1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L3:
            if (db1.b == 11)
            {
                bf1.b = dg1.z();
                bf1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L4:
            if (db1.b == 11)
            {
                bf1.c = dg1.z();
                bf1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L5:
            if (db1.b == 4)
            {
                bf1.d = dg1.y();
                bf1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L6:
            if (db1.b == 4)
            {
                bf1.e = dg1.y();
                bf1.e(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L7:
            if (db1.b == 11)
            {
                bf1.f = dg1.z();
                bf1.f(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L8:
            if (db1.b == 8)
            {
                bf1.g = dg1.w();
                bf1.g(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L9:
            if (db1.b == 11)
            {
                bf1.h = dg1.z();
                bf1.h(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L10:
            if (db1.b == 8)
            {
                bf1.i = al.a(dg1.w());
                bf1.i(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
            if (db1.b == 11)
            {
                bf1.j = dg1.z();
                bf1.j(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bf)ch1);
        }

        public void b(dg dg1, bf bf1)
            throws cn
        {
            bf1.H();
            dg1.a(bf.I());
            if (bf1.e())
            {
                dg1.a(bf.J());
                dg1.a(bf1.a);
                dg1.c();
            }
            if (bf1.b != null && bf1.i())
            {
                dg1.a(bf.K());
                dg1.a(bf1.b);
                dg1.c();
            }
            if (bf1.c != null && bf1.l())
            {
                dg1.a(bf.L());
                dg1.a(bf1.c);
                dg1.c();
            }
            if (bf1.o())
            {
                dg1.a(bf.M());
                dg1.a(bf1.d);
                dg1.c();
            }
            if (bf1.r())
            {
                dg1.a(bf.N());
                dg1.a(bf1.e);
                dg1.c();
            }
            if (bf1.f != null && bf1.u())
            {
                dg1.a(bf.O());
                dg1.a(bf1.f);
                dg1.c();
            }
            if (bf1.x())
            {
                dg1.a(bf.P());
                dg1.a(bf1.g);
                dg1.c();
            }
            if (bf1.h != null && bf1.A())
            {
                dg1.a(bf.Q());
                dg1.a(bf1.h);
                dg1.c();
            }
            if (bf1.i != null && bf1.D())
            {
                dg1.a(bf.R());
                dg1.a(bf1.i.a());
                dg1.c();
            }
            if (bf1.j != null && bf1.G())
            {
                dg1.a(bf.S());
                dg1.a(bf1.j);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bf)ch1);
        }

        private a()
        {
        }

    }

    private static class b
        implements dp
    {

        public a a()
        {
            return new a();
        }

        public do b()
        {
            return a();
        }

        private b()
        {
        }

    }

    private static class c extends dr
    {

        public void a(dg dg1, bf bf1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = new BitSet();
            if (bf1.e())
            {
                bitset.set(0);
            }
            if (bf1.i())
            {
                bitset.set(1);
            }
            if (bf1.l())
            {
                bitset.set(2);
            }
            if (bf1.o())
            {
                bitset.set(3);
            }
            if (bf1.r())
            {
                bitset.set(4);
            }
            if (bf1.u())
            {
                bitset.set(5);
            }
            if (bf1.x())
            {
                bitset.set(6);
            }
            if (bf1.A())
            {
                bitset.set(7);
            }
            if (bf1.D())
            {
                bitset.set(8);
            }
            if (bf1.G())
            {
                bitset.set(9);
            }
            dg1.a(bitset, 10);
            if (bf1.e())
            {
                dg1.a(bf1.a);
            }
            if (bf1.i())
            {
                dg1.a(bf1.b);
            }
            if (bf1.l())
            {
                dg1.a(bf1.c);
            }
            if (bf1.o())
            {
                dg1.a(bf1.d);
            }
            if (bf1.r())
            {
                dg1.a(bf1.e);
            }
            if (bf1.u())
            {
                dg1.a(bf1.f);
            }
            if (bf1.x())
            {
                dg1.a(bf1.g);
            }
            if (bf1.A())
            {
                dg1.a(bf1.h);
            }
            if (bf1.D())
            {
                dg1.a(bf1.i.a());
            }
            if (bf1.G())
            {
                dg1.a(bf1.j);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bf)ch1);
        }

        public void b(dg dg1, bf bf1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = dg1.b(10);
            if (bitset.get(0))
            {
                bf1.a = dg1.w();
                bf1.a(true);
            }
            if (bitset.get(1))
            {
                bf1.b = dg1.z();
                bf1.b(true);
            }
            if (bitset.get(2))
            {
                bf1.c = dg1.z();
                bf1.c(true);
            }
            if (bitset.get(3))
            {
                bf1.d = dg1.y();
                bf1.d(true);
            }
            if (bitset.get(4))
            {
                bf1.e = dg1.y();
                bf1.e(true);
            }
            if (bitset.get(5))
            {
                bf1.f = dg1.z();
                bf1.f(true);
            }
            if (bitset.get(6))
            {
                bf1.g = dg1.w();
                bf1.g(true);
            }
            if (bitset.get(7))
            {
                bf1.h = dg1.z();
                bf1.h(true);
            }
            if (bitset.get(8))
            {
                bf1.i = al.a(dg1.w());
                bf1.i(true);
            }
            if (bitset.get(9))
            {
                bf1.j = dg1.z();
                bf1.j(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bf)ch1);
        }

        private c()
        {
        }

    }

    private static class d
        implements dp
    {

        public c a()
        {
            return new c();
        }

        public do b()
        {
            return a();
        }

        private d()
        {
        }

    }

    public static final class e extends Enum
        implements co
    {

        public static final e a;
        public static final e b;
        public static final e c;
        public static final e d;
        public static final e e;
        public static final e f;
        public static final e g;
        public static final e h;
        public static final e i;
        public static final e j;
        private static final Map k;
        private static final e n[];
        private final short l;
        private final String m;

        public static e a(int i1)
        {
            switch (i1)
            {
            default:
                return null;

            case 1: // '\001'
                return a;

            case 2: // '\002'
                return b;

            case 3: // '\003'
                return c;

            case 4: // '\004'
                return d;

            case 5: // '\005'
                return e;

            case 6: // '\006'
                return f;

            case 7: // '\007'
                return g;

            case 8: // '\b'
                return h;

            case 9: // '\t'
                return i;

            case 10: // '\n'
                return j;
            }
        }

        public static e a(String s1)
        {
            return (e)k.get(s1);
        }

        public static e b(int i1)
        {
            e e1 = a(i1);
            if (e1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Field ").append(i1).append(" doesn't exist!").toString());
            } else
            {
                return e1;
            }
        }

        public static e valueOf(String s1)
        {
            return (e)Enum.valueOf(u/aly/bf$e, s1);
        }

        public static e[] values()
        {
            return (e[])n.clone();
        }

        public short a()
        {
            return l;
        }

        public String b()
        {
            return m;
        }

        static 
        {
            a = new e("TIME_ZONE", 0, (short)1, "time_zone");
            b = new e("LANGUAGE", 1, (short)2, "language");
            c = new e("COUNTRY", 2, (short)3, "country");
            d = new e("LATITUDE", 3, (short)4, "latitude");
            e = new e("LONGITUDE", 4, (short)5, "longitude");
            f = new e("CARRIER", 5, (short)6, "carrier");
            g = new e("LATENCY", 6, (short)7, "latency");
            h = new e("DISPLAY_NAME", 7, (short)8, "display_name");
            i = new e("ACCESS_TYPE", 8, (short)9, "access_type");
            j = new e("ACCESS_SUBTYPE", 9, (short)10, "access_subtype");
            n = (new e[] {
                a, b, c, d, e, f, g, h, i, j
            });
            k = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bf$e).iterator(); iterator.hasNext(); k.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            l = word0;
            m = s2;
        }
    }


    private static final int A = 3;
    public static final Map k;
    private static final dl l = new dl("MiscInfo");
    private static final db m = new db("time_zone", (byte)8, (short)1);
    private static final db n = new db("language", (byte)11, (short)2);
    private static final db o = new db("country", (byte)11, (short)3);
    private static final db p = new db("latitude", (byte)4, (short)4);
    private static final db q = new db("longitude", (byte)4, (short)5);
    private static final db r = new db("carrier", (byte)11, (short)6);
    private static final db s = new db("latency", (byte)8, (short)7);
    private static final db t = new db("display_name", (byte)11, (short)8);
    private static final db u = new db("access_type", (byte)8, (short)9);
    private static final db v = new db("access_subtype", (byte)11, (short)10);
    private static final Map w;
    private static final int x = 0;
    private static final int y = 1;
    private static final int z = 2;
    private byte B;
    private e C[];
    public int a;
    public String b;
    public String c;
    public double d;
    public double e;
    public String f;
    public int g;
    public String h;
    public al i;
    public String j;

    public bf()
    {
        B = 0;
        C = (new e[] {
            e.a, e.b, e.c, e.d, e.e, e.f, e.g, e.h, e.i, e.j
        });
    }

    public bf(bf bf1)
    {
        B = 0;
        C = (new e[] {
            e.a, e.b, e.c, e.d, e.e, e.f, e.g, e.h, e.i, e.j
        });
        B = bf1.B;
        a = bf1.a;
        if (bf1.i())
        {
            b = bf1.b;
        }
        if (bf1.l())
        {
            c = bf1.c;
        }
        d = bf1.d;
        e = bf1.e;
        if (bf1.u())
        {
            f = bf1.f;
        }
        g = bf1.g;
        if (bf1.A())
        {
            h = bf1.h;
        }
        if (bf1.D())
        {
            i = bf1.i;
        }
        if (bf1.G())
        {
            j = bf1.j;
        }
    }

    static dl I()
    {
        return l;
    }

    static db J()
    {
        return m;
    }

    static db K()
    {
        return n;
    }

    static db L()
    {
        return o;
    }

    static db M()
    {
        return p;
    }

    static db N()
    {
        return q;
    }

    static db O()
    {
        return r;
    }

    static db P()
    {
        return s;
    }

    static db Q()
    {
        return t;
    }

    static db R()
    {
        return u;
    }

    static db S()
    {
        return v;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            B = 0;
            a(((dg) (new da(new ds(objectinputstream)))));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ObjectInputStream objectinputstream)
        {
            throw new IOException(objectinputstream.getMessage());
        }
    }

    private void a(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        try
        {
            b(new da(new ds(objectoutputstream)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ObjectOutputStream objectoutputstream)
        {
            throw new IOException(objectoutputstream.getMessage());
        }
    }

    public boolean A()
    {
        return h != null;
    }

    public al B()
    {
        return i;
    }

    public void C()
    {
        i = null;
    }

    public boolean D()
    {
        return i != null;
    }

    public String E()
    {
        return j;
    }

    public void F()
    {
        j = null;
    }

    public boolean G()
    {
        return j != null;
    }

    public void H()
        throws cn
    {
    }

    public bf a()
    {
        return new bf(this);
    }

    public bf a(double d1)
    {
        d = d1;
        d(true);
        return this;
    }

    public bf a(int i1)
    {
        a = i1;
        a(true);
        return this;
    }

    public bf a(String s1)
    {
        b = s1;
        return this;
    }

    public bf a(al al1)
    {
        i = al1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)w.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        B = ce.a(B, 0, flag);
    }

    public bf b(double d1)
    {
        e = d1;
        e(true);
        return this;
    }

    public bf b(String s1)
    {
        c = s1;
        return this;
    }

    public co b(int i1)
    {
        return d(i1);
    }

    public void b()
    {
        a(false);
        a = 0;
        b = null;
        c = null;
        d(false);
        d = 0.0D;
        e(false);
        e = 0.0D;
        f = null;
        g(false);
        g = 0;
        h = null;
        i = null;
        j = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)w.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        if (!flag)
        {
            b = null;
        }
    }

    public int c()
    {
        return a;
    }

    public bf c(int i1)
    {
        g = i1;
        g(true);
        return this;
    }

    public bf c(String s1)
    {
        f = s1;
        return this;
    }

    public void c(boolean flag)
    {
        if (!flag)
        {
            c = null;
        }
    }

    public e d(int i1)
    {
        return e.a(i1);
    }

    public bf d(String s1)
    {
        h = s1;
        return this;
    }

    public void d()
    {
        B = ce.b(B, 0);
    }

    public void d(boolean flag)
    {
        B = ce.a(B, 1, flag);
    }

    public bf e(String s1)
    {
        j = s1;
        return this;
    }

    public void e(boolean flag)
    {
        B = ce.a(B, 2, flag);
    }

    public boolean e()
    {
        return ce.a(B, 0);
    }

    public String f()
    {
        return b;
    }

    public void f(boolean flag)
    {
        if (!flag)
        {
            f = null;
        }
    }

    public ch g()
    {
        return a();
    }

    public void g(boolean flag)
    {
        B = ce.a(B, 3, flag);
    }

    public void h()
    {
        b = null;
    }

    public void h(boolean flag)
    {
        if (!flag)
        {
            h = null;
        }
    }

    public void i(boolean flag)
    {
        if (!flag)
        {
            i = null;
        }
    }

    public boolean i()
    {
        return b != null;
    }

    public String j()
    {
        return c;
    }

    public void j(boolean flag)
    {
        if (!flag)
        {
            j = null;
        }
    }

    public void k()
    {
        c = null;
    }

    public boolean l()
    {
        return c != null;
    }

    public double m()
    {
        return d;
    }

    public void n()
    {
        B = ce.b(B, 1);
    }

    public boolean o()
    {
        return ce.a(B, 1);
    }

    public double p()
    {
        return e;
    }

    public void q()
    {
        B = ce.b(B, 2);
    }

    public boolean r()
    {
        return ce.a(B, 2);
    }

    public String s()
    {
        return f;
    }

    public void t()
    {
        f = null;
    }

    public String toString()
    {
        boolean flag2 = false;
        StringBuilder stringbuilder = new StringBuilder("MiscInfo(");
        boolean flag1 = true;
        if (e())
        {
            stringbuilder.append("time_zone:");
            stringbuilder.append(a);
            flag1 = false;
        }
        boolean flag = flag1;
        if (i())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("language:");
            if (b == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(b);
            }
            flag = false;
        }
        flag1 = flag;
        if (l())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("country:");
            if (c == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(c);
            }
            flag1 = false;
        }
        flag = flag1;
        if (o())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("latitude:");
            stringbuilder.append(d);
            flag = false;
        }
        flag1 = flag;
        if (r())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("longitude:");
            stringbuilder.append(e);
            flag1 = false;
        }
        flag = flag1;
        if (u())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("carrier:");
            if (f == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(f);
            }
            flag = false;
        }
        flag1 = flag;
        if (x())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("latency:");
            stringbuilder.append(g);
            flag1 = false;
        }
        flag = flag1;
        if (A())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("display_name:");
            if (h == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(h);
            }
            flag = false;
        }
        if (D())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("access_type:");
            if (i == null)
            {
                stringbuilder.append("null");
                flag = flag2;
            } else
            {
                stringbuilder.append(i);
                flag = flag2;
            }
        }
        if (G())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("access_subtype:");
            if (j == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(j);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    public boolean u()
    {
        return f != null;
    }

    public int v()
    {
        return g;
    }

    public void w()
    {
        B = ce.b(B, 3);
    }

    public boolean x()
    {
        return ce.a(B, 3);
    }

    public String y()
    {
        return h;
    }

    public void z()
    {
        h = null;
    }

    static 
    {
        w = new HashMap();
        w.put(u/aly/dq, new b());
        w.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bf$e);
        enummap.put(e.a, new ct("time_zone", (byte)2, new cu((byte)8)));
        enummap.put(e.b, new ct("language", (byte)2, new cu((byte)11)));
        enummap.put(e.c, new ct("country", (byte)2, new cu((byte)11)));
        enummap.put(e.d, new ct("latitude", (byte)2, new cu((byte)4)));
        enummap.put(e.e, new ct("longitude", (byte)2, new cu((byte)4)));
        enummap.put(e.f, new ct("carrier", (byte)2, new cu((byte)11)));
        enummap.put(e.g, new ct("latency", (byte)2, new cu((byte)8)));
        enummap.put(e.h, new ct("display_name", (byte)2, new cu((byte)11)));
        enummap.put(e.i, new ct("access_type", (byte)2, new cs((byte)16, u/aly/al)));
        enummap.put(e.j, new ct("access_subtype", (byte)2, new cu((byte)11)));
        k = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bf, k);
    }
}
