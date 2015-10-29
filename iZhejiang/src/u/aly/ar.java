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
//            dr, ct, cu, cy, 
//            bi, cn, da, ds, 
//            ce, dg, dp, do, 
//            co, dj, dm

public class ar
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ar ar1)
            throws cn
        {
            dg1.j();
_L20:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                ar1.ac();
                return;
            }
            db1.c;
            JVM INSTR tableswitch 1 17: default 112
        //                       1 127
        //                       2 163
        //                       3 199
        //                       4 235
        //                       5 271
        //                       6 307
        //                       7 343
        //                       8 379
        //                       9 415
        //                       10 462
        //                       11 497
        //                       12 532
        //                       13 568
        //                       14 604
        //                       15 640
        //                       16 676
        //                       17 712;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18
_L18:
            break MISSING_BLOCK_LABEL_712;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L21:
            dg1.m();
            if (true) goto _L20; else goto _L19
_L19:
            if (db1.b == 11)
            {
                ar1.a = dg1.z();
                ar1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L3:
            if (db1.b == 11)
            {
                ar1.b = dg1.z();
                ar1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L4:
            if (db1.b == 11)
            {
                ar1.c = dg1.z();
                ar1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L5:
            if (db1.b == 11)
            {
                ar1.d = dg1.z();
                ar1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L6:
            if (db1.b == 11)
            {
                ar1.e = dg1.z();
                ar1.e(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L7:
            if (db1.b == 11)
            {
                ar1.f = dg1.z();
                ar1.f(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L8:
            if (db1.b == 11)
            {
                ar1.g = dg1.z();
                ar1.g(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L9:
            if (db1.b == 11)
            {
                ar1.h = dg1.z();
                ar1.h(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L10:
            if (db1.b == 12)
            {
                ar1.i = new bi();
                ar1.i.a(dg1);
                ar1.i(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L11:
            if (db1.b == 2)
            {
                ar1.j = dg1.t();
                ar1.k(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L12:
            if (db1.b == 2)
            {
                ar1.k = dg1.t();
                ar1.m(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L13:
            if (db1.b == 11)
            {
                ar1.l = dg1.z();
                ar1.n(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L14:
            if (db1.b == 11)
            {
                ar1.m = dg1.z();
                ar1.o(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L15:
            if (db1.b == 10)
            {
                ar1.n = dg1.x();
                ar1.p(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L16:
            if (db1.b == 11)
            {
                ar1.o = dg1.z();
                ar1.q(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
_L17:
            if (db1.b == 11)
            {
                ar1.p = dg1.z();
                ar1.r(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
            if (db1.b == 11)
            {
                ar1.q = dg1.z();
                ar1.s(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L21
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ar)ch1);
        }

        public void b(dg dg1, ar ar1)
            throws cn
        {
            ar1.ac();
            dg1.a(ar.ad());
            if (ar1.a != null && ar1.e())
            {
                dg1.a(ar.ae());
                dg1.a(ar1.a);
                dg1.c();
            }
            if (ar1.b != null && ar1.i())
            {
                dg1.a(ar.af());
                dg1.a(ar1.b);
                dg1.c();
            }
            if (ar1.c != null && ar1.l())
            {
                dg1.a(ar.ag());
                dg1.a(ar1.c);
                dg1.c();
            }
            if (ar1.d != null && ar1.o())
            {
                dg1.a(ar.ah());
                dg1.a(ar1.d);
                dg1.c();
            }
            if (ar1.e != null && ar1.r())
            {
                dg1.a(ar.ai());
                dg1.a(ar1.e);
                dg1.c();
            }
            if (ar1.f != null && ar1.u())
            {
                dg1.a(ar.aj());
                dg1.a(ar1.f);
                dg1.c();
            }
            if (ar1.g != null && ar1.x())
            {
                dg1.a(ar.ak());
                dg1.a(ar1.g);
                dg1.c();
            }
            if (ar1.h != null && ar1.A())
            {
                dg1.a(ar.al());
                dg1.a(ar1.h);
                dg1.c();
            }
            if (ar1.i != null && ar1.D())
            {
                dg1.a(ar.am());
                ar1.i.b(dg1);
                dg1.c();
            }
            if (ar1.G())
            {
                dg1.a(ar.an());
                dg1.a(ar1.j);
                dg1.c();
            }
            if (ar1.J())
            {
                dg1.a(ar.ao());
                dg1.a(ar1.k);
                dg1.c();
            }
            if (ar1.l != null && ar1.M())
            {
                dg1.a(ar.ap());
                dg1.a(ar1.l);
                dg1.c();
            }
            if (ar1.m != null && ar1.P())
            {
                dg1.a(ar.aq());
                dg1.a(ar1.m);
                dg1.c();
            }
            if (ar1.S())
            {
                dg1.a(ar.ar());
                dg1.a(ar1.n);
                dg1.c();
            }
            if (ar1.o != null && ar1.V())
            {
                dg1.a(ar.as());
                dg1.a(ar1.o);
                dg1.c();
            }
            if (ar1.p != null && ar1.Y())
            {
                dg1.a(ar.at());
                dg1.a(ar1.p);
                dg1.c();
            }
            if (ar1.q != null && ar1.ab())
            {
                dg1.a(ar.au());
                dg1.a(ar1.q);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ar)ch1);
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

        public void a(dg dg1, ar ar1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = new BitSet();
            if (ar1.e())
            {
                bitset.set(0);
            }
            if (ar1.i())
            {
                bitset.set(1);
            }
            if (ar1.l())
            {
                bitset.set(2);
            }
            if (ar1.o())
            {
                bitset.set(3);
            }
            if (ar1.r())
            {
                bitset.set(4);
            }
            if (ar1.u())
            {
                bitset.set(5);
            }
            if (ar1.x())
            {
                bitset.set(6);
            }
            if (ar1.A())
            {
                bitset.set(7);
            }
            if (ar1.D())
            {
                bitset.set(8);
            }
            if (ar1.G())
            {
                bitset.set(9);
            }
            if (ar1.J())
            {
                bitset.set(10);
            }
            if (ar1.M())
            {
                bitset.set(11);
            }
            if (ar1.P())
            {
                bitset.set(12);
            }
            if (ar1.S())
            {
                bitset.set(13);
            }
            if (ar1.V())
            {
                bitset.set(14);
            }
            if (ar1.Y())
            {
                bitset.set(15);
            }
            if (ar1.ab())
            {
                bitset.set(16);
            }
            dg1.a(bitset, 17);
            if (ar1.e())
            {
                dg1.a(ar1.a);
            }
            if (ar1.i())
            {
                dg1.a(ar1.b);
            }
            if (ar1.l())
            {
                dg1.a(ar1.c);
            }
            if (ar1.o())
            {
                dg1.a(ar1.d);
            }
            if (ar1.r())
            {
                dg1.a(ar1.e);
            }
            if (ar1.u())
            {
                dg1.a(ar1.f);
            }
            if (ar1.x())
            {
                dg1.a(ar1.g);
            }
            if (ar1.A())
            {
                dg1.a(ar1.h);
            }
            if (ar1.D())
            {
                ar1.i.b(dg1);
            }
            if (ar1.G())
            {
                dg1.a(ar1.j);
            }
            if (ar1.J())
            {
                dg1.a(ar1.k);
            }
            if (ar1.M())
            {
                dg1.a(ar1.l);
            }
            if (ar1.P())
            {
                dg1.a(ar1.m);
            }
            if (ar1.S())
            {
                dg1.a(ar1.n);
            }
            if (ar1.V())
            {
                dg1.a(ar1.o);
            }
            if (ar1.Y())
            {
                dg1.a(ar1.p);
            }
            if (ar1.ab())
            {
                dg1.a(ar1.q);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ar)ch1);
        }

        public void b(dg dg1, ar ar1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = dg1.b(17);
            if (bitset.get(0))
            {
                ar1.a = dg1.z();
                ar1.a(true);
            }
            if (bitset.get(1))
            {
                ar1.b = dg1.z();
                ar1.b(true);
            }
            if (bitset.get(2))
            {
                ar1.c = dg1.z();
                ar1.c(true);
            }
            if (bitset.get(3))
            {
                ar1.d = dg1.z();
                ar1.d(true);
            }
            if (bitset.get(4))
            {
                ar1.e = dg1.z();
                ar1.e(true);
            }
            if (bitset.get(5))
            {
                ar1.f = dg1.z();
                ar1.f(true);
            }
            if (bitset.get(6))
            {
                ar1.g = dg1.z();
                ar1.g(true);
            }
            if (bitset.get(7))
            {
                ar1.h = dg1.z();
                ar1.h(true);
            }
            if (bitset.get(8))
            {
                ar1.i = new bi();
                ar1.i.a(dg1);
                ar1.i(true);
            }
            if (bitset.get(9))
            {
                ar1.j = dg1.t();
                ar1.k(true);
            }
            if (bitset.get(10))
            {
                ar1.k = dg1.t();
                ar1.m(true);
            }
            if (bitset.get(11))
            {
                ar1.l = dg1.z();
                ar1.n(true);
            }
            if (bitset.get(12))
            {
                ar1.m = dg1.z();
                ar1.o(true);
            }
            if (bitset.get(13))
            {
                ar1.n = dg1.x();
                ar1.p(true);
            }
            if (bitset.get(14))
            {
                ar1.o = dg1.z();
                ar1.q(true);
            }
            if (bitset.get(15))
            {
                ar1.p = dg1.z();
                ar1.r(true);
            }
            if (bitset.get(16))
            {
                ar1.q = dg1.z();
                ar1.s(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ar)ch1);
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
        public static final e k;
        public static final e l;
        public static final e m;
        public static final e n;
        public static final e o;
        public static final e p;
        public static final e q;
        private static final Map r;
        private static final e u[];
        private final short s;
        private final String t;

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

            case 11: // '\013'
                return k;

            case 12: // '\f'
                return l;

            case 13: // '\r'
                return m;

            case 14: // '\016'
                return n;

            case 15: // '\017'
                return o;

            case 16: // '\020'
                return p;

            case 17: // '\021'
                return q;
            }
        }

        public static e a(String s1)
        {
            return (e)r.get(s1);
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
            return (e)Enum.valueOf(u/aly/ar$e, s1);
        }

        public static e[] values()
        {
            return (e[])u.clone();
        }

        public short a()
        {
            return s;
        }

        public String b()
        {
            return t;
        }

        static 
        {
            a = new e("DEVICE_ID", 0, (short)1, "device_id");
            b = new e("IDMD5", 1, (short)2, "idmd5");
            c = new e("MAC_ADDRESS", 2, (short)3, "mac_address");
            d = new e("OPEN_UDID", 3, (short)4, "open_udid");
            e = new e("MODEL", 4, (short)5, "model");
            f = new e("CPU", 5, (short)6, "cpu");
            g = new e("OS", 6, (short)7, "os");
            h = new e("OS_VERSION", 7, (short)8, "os_version");
            i = new e("RESOLUTION", 8, (short)9, "resolution");
            j = new e("IS_JAILBROKEN", 9, (short)10, "is_jailbroken");
            k = new e("IS_PIRATED", 10, (short)11, "is_pirated");
            l = new e("DEVICE_BOARD", 11, (short)12, "device_board");
            m = new e("DEVICE_BRAND", 12, (short)13, "device_brand");
            n = new e("DEVICE_MANUTIME", 13, (short)14, "device_manutime");
            o = new e("DEVICE_MANUFACTURER", 14, (short)15, "device_manufacturer");
            p = new e("DEVICE_MANUID", 15, (short)16, "device_manuid");
            q = new e("DEVICE_NAME", 16, (short)17, "device_name");
            u = (new e[] {
                a, b, c, d, e, f, g, h, i, j, 
                k, l, m, n, o, p, q
            });
            r = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/ar$e).iterator(); iterator.hasNext(); r.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            s = word0;
            t = s2;
        }
    }


    private static final db A = new db("os_version", (byte)11, (short)8);
    private static final db B = new db("resolution", (byte)12, (short)9);
    private static final db C = new db("is_jailbroken", (byte)2, (short)10);
    private static final db D = new db("is_pirated", (byte)2, (short)11);
    private static final db E = new db("device_board", (byte)11, (short)12);
    private static final db F = new db("device_brand", (byte)11, (short)13);
    private static final db G = new db("device_manutime", (byte)10, (short)14);
    private static final db H = new db("device_manufacturer", (byte)11, (short)15);
    private static final db I = new db("device_manuid", (byte)11, (short)16);
    private static final db J = new db("device_name", (byte)11, (short)17);
    private static final Map K;
    private static final int L = 0;
    private static final int M = 1;
    private static final int N = 2;
    public static final Map r;
    private static final dl s = new dl("DeviceInfo");
    private static final db t = new db("device_id", (byte)11, (short)1);
    private static final db u = new db("idmd5", (byte)11, (short)2);
    private static final db v = new db("mac_address", (byte)11, (short)3);
    private static final db w = new db("open_udid", (byte)11, (short)4);
    private static final db x = new db("model", (byte)11, (short)5);
    private static final db y = new db("cpu", (byte)11, (short)6);
    private static final db z = new db("os", (byte)11, (short)7);
    private byte O;
    private e P[];
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public bi i;
    public boolean j;
    public boolean k;
    public String l;
    public String m;
    public long n;
    public String o;
    public String p;
    public String q;

    public ar()
    {
        O = 0;
        P = (new e[] {
            e.a, e.b, e.c, e.d, e.e, e.f, e.g, e.h, e.i, e.j, 
            e.k, e.l, e.m, e.n, e.o, e.p, e.q
        });
    }

    public ar(ar ar1)
    {
        O = 0;
        P = (new e[] {
            e.a, e.b, e.c, e.d, e.e, e.f, e.g, e.h, e.i, e.j, 
            e.k, e.l, e.m, e.n, e.o, e.p, e.q
        });
        O = ar1.O;
        if (ar1.e())
        {
            a = ar1.a;
        }
        if (ar1.i())
        {
            b = ar1.b;
        }
        if (ar1.l())
        {
            c = ar1.c;
        }
        if (ar1.o())
        {
            d = ar1.d;
        }
        if (ar1.r())
        {
            e = ar1.e;
        }
        if (ar1.u())
        {
            f = ar1.f;
        }
        if (ar1.x())
        {
            g = ar1.g;
        }
        if (ar1.A())
        {
            h = ar1.h;
        }
        if (ar1.D())
        {
            i = new bi(ar1.i);
        }
        j = ar1.j;
        k = ar1.k;
        if (ar1.M())
        {
            l = ar1.l;
        }
        if (ar1.P())
        {
            m = ar1.m;
        }
        n = ar1.n;
        if (ar1.V())
        {
            o = ar1.o;
        }
        if (ar1.Y())
        {
            p = ar1.p;
        }
        if (ar1.ab())
        {
            q = ar1.q;
        }
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            O = 0;
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

    static dl ad()
    {
        return s;
    }

    static db ae()
    {
        return t;
    }

    static db af()
    {
        return u;
    }

    static db ag()
    {
        return v;
    }

    static db ah()
    {
        return w;
    }

    static db ai()
    {
        return x;
    }

    static db aj()
    {
        return y;
    }

    static db ak()
    {
        return z;
    }

    static db al()
    {
        return A;
    }

    static db am()
    {
        return B;
    }

    static db an()
    {
        return C;
    }

    static db ao()
    {
        return D;
    }

    static db ap()
    {
        return E;
    }

    static db aq()
    {
        return F;
    }

    static db ar()
    {
        return G;
    }

    static db as()
    {
        return H;
    }

    static db at()
    {
        return I;
    }

    static db au()
    {
        return J;
    }

    public boolean A()
    {
        return h != null;
    }

    public bi B()
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

    public boolean E()
    {
        return j;
    }

    public void F()
    {
        O = ce.b(O, 0);
    }

    public boolean G()
    {
        return ce.a(O, 0);
    }

    public boolean H()
    {
        return k;
    }

    public void I()
    {
        O = ce.b(O, 1);
    }

    public boolean J()
    {
        return ce.a(O, 1);
    }

    public String K()
    {
        return l;
    }

    public void L()
    {
        l = null;
    }

    public boolean M()
    {
        return l != null;
    }

    public String N()
    {
        return m;
    }

    public void O()
    {
        m = null;
    }

    public boolean P()
    {
        return m != null;
    }

    public long Q()
    {
        return n;
    }

    public void R()
    {
        O = ce.b(O, 2);
    }

    public boolean S()
    {
        return ce.a(O, 2);
    }

    public String T()
    {
        return o;
    }

    public void U()
    {
        o = null;
    }

    public boolean V()
    {
        return o != null;
    }

    public String W()
    {
        return p;
    }

    public void X()
    {
        p = null;
    }

    public boolean Y()
    {
        return p != null;
    }

    public String Z()
    {
        return q;
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public ar a()
    {
        return new ar(this);
    }

    public ar a(long l1)
    {
        n = l1;
        p(true);
        return this;
    }

    public ar a(String s1)
    {
        a = s1;
        return this;
    }

    public ar a(bi bi1)
    {
        i = bi1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)K.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public void aa()
    {
        q = null;
    }

    public boolean ab()
    {
        return q != null;
    }

    public void ac()
        throws cn
    {
        if (i != null)
        {
            i.j();
        }
    }

    public ar b(String s1)
    {
        b = s1;
        return this;
    }

    public co b(int i1)
    {
        return a(i1);
    }

    public void b()
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        k(false);
        j = false;
        m(false);
        k = false;
        l = null;
        m = null;
        p(false);
        n = 0L;
        o = null;
        p = null;
        q = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)K.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        if (!flag)
        {
            b = null;
        }
    }

    public String c()
    {
        return a;
    }

    public ar c(String s1)
    {
        c = s1;
        return this;
    }

    public void c(boolean flag)
    {
        if (!flag)
        {
            c = null;
        }
    }

    public ar d(String s1)
    {
        d = s1;
        return this;
    }

    public void d()
    {
        a = null;
    }

    public void d(boolean flag)
    {
        if (!flag)
        {
            d = null;
        }
    }

    public ar e(String s1)
    {
        e = s1;
        return this;
    }

    public void e(boolean flag)
    {
        if (!flag)
        {
            e = null;
        }
    }

    public boolean e()
    {
        return a != null;
    }

    public String f()
    {
        return b;
    }

    public ar f(String s1)
    {
        f = s1;
        return this;
    }

    public void f(boolean flag)
    {
        if (!flag)
        {
            f = null;
        }
    }

    public ar g(String s1)
    {
        g = s1;
        return this;
    }

    public ch g()
    {
        return a();
    }

    public void g(boolean flag)
    {
        if (!flag)
        {
            g = null;
        }
    }

    public ar h(String s1)
    {
        h = s1;
        return this;
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

    public ar i(String s1)
    {
        l = s1;
        return this;
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

    public ar j(String s1)
    {
        m = s1;
        return this;
    }

    public ar j(boolean flag)
    {
        j = flag;
        k(true);
        return this;
    }

    public ar k(String s1)
    {
        o = s1;
        return this;
    }

    public void k()
    {
        c = null;
    }

    public void k(boolean flag)
    {
        O = ce.a(O, 0, flag);
    }

    public ar l(String s1)
    {
        p = s1;
        return this;
    }

    public ar l(boolean flag)
    {
        k = flag;
        m(true);
        return this;
    }

    public boolean l()
    {
        return c != null;
    }

    public String m()
    {
        return d;
    }

    public ar m(String s1)
    {
        q = s1;
        return this;
    }

    public void m(boolean flag)
    {
        O = ce.a(O, 1, flag);
    }

    public void n()
    {
        d = null;
    }

    public void n(boolean flag)
    {
        if (!flag)
        {
            l = null;
        }
    }

    public void o(boolean flag)
    {
        if (!flag)
        {
            m = null;
        }
    }

    public boolean o()
    {
        return d != null;
    }

    public String p()
    {
        return e;
    }

    public void p(boolean flag)
    {
        O = ce.a(O, 2, flag);
    }

    public void q()
    {
        e = null;
    }

    public void q(boolean flag)
    {
        if (!flag)
        {
            o = null;
        }
    }

    public void r(boolean flag)
    {
        if (!flag)
        {
            p = null;
        }
    }

    public boolean r()
    {
        return e != null;
    }

    public String s()
    {
        return f;
    }

    public void s(boolean flag)
    {
        if (!flag)
        {
            q = null;
        }
    }

    public void t()
    {
        f = null;
    }

    public String toString()
    {
        boolean flag2 = false;
        StringBuilder stringbuilder = new StringBuilder("DeviceInfo(");
        boolean flag1 = true;
        boolean flag;
        if (e())
        {
            stringbuilder.append("device_id:");
            if (a == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(a);
            }
            flag1 = false;
        }
        flag = flag1;
        if (i())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("idmd5:");
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
            stringbuilder.append("mac_address:");
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
            stringbuilder.append("open_udid:");
            if (d == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(d);
            }
            flag = false;
        }
        flag1 = flag;
        if (r())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("model:");
            if (e == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(e);
            }
            flag1 = false;
        }
        flag = flag1;
        if (u())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("cpu:");
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
            stringbuilder.append("os:");
            if (g == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(g);
            }
            flag1 = false;
        }
        flag = flag1;
        if (A())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("os_version:");
            if (h == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(h);
            }
            flag = false;
        }
        flag1 = flag;
        if (D())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("resolution:");
            if (i == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(i);
            }
            flag1 = false;
        }
        flag = flag1;
        if (G())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("is_jailbroken:");
            stringbuilder.append(j);
            flag = false;
        }
        flag1 = flag;
        if (J())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("is_pirated:");
            stringbuilder.append(k);
            flag1 = false;
        }
        flag = flag1;
        if (M())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("device_board:");
            if (l == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(l);
            }
            flag = false;
        }
        flag1 = flag;
        if (P())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("device_brand:");
            if (m == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(m);
            }
            flag1 = false;
        }
        flag = flag1;
        if (S())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("device_manutime:");
            stringbuilder.append(n);
            flag = false;
        }
        flag1 = flag;
        if (V())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("device_manufacturer:");
            if (o == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(o);
            }
            flag1 = false;
        }
        if (Y())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("device_manuid:");
            if (p == null)
            {
                stringbuilder.append("null");
                flag = flag2;
            } else
            {
                stringbuilder.append(p);
                flag = flag2;
            }
        } else
        {
            flag = flag1;
        }
        if (ab())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("device_name:");
            if (q == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(q);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    public boolean u()
    {
        return f != null;
    }

    public String v()
    {
        return g;
    }

    public void w()
    {
        g = null;
    }

    public boolean x()
    {
        return g != null;
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
        K = new HashMap();
        K.put(u/aly/dq, new b());
        K.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/ar$e);
        enummap.put(e.a, new ct("device_id", (byte)2, new cu((byte)11)));
        enummap.put(e.b, new ct("idmd5", (byte)2, new cu((byte)11)));
        enummap.put(e.c, new ct("mac_address", (byte)2, new cu((byte)11)));
        enummap.put(e.d, new ct("open_udid", (byte)2, new cu((byte)11)));
        enummap.put(e.e, new ct("model", (byte)2, new cu((byte)11)));
        enummap.put(e.f, new ct("cpu", (byte)2, new cu((byte)11)));
        enummap.put(e.g, new ct("os", (byte)2, new cu((byte)11)));
        enummap.put(e.h, new ct("os_version", (byte)2, new cu((byte)11)));
        enummap.put(e.i, new ct("resolution", (byte)2, new cy((byte)12, u/aly/bi)));
        enummap.put(e.j, new ct("is_jailbroken", (byte)2, new cu((byte)2)));
        enummap.put(e.k, new ct("is_pirated", (byte)2, new cu((byte)2)));
        enummap.put(e.l, new ct("device_board", (byte)2, new cu((byte)11)));
        enummap.put(e.m, new ct("device_brand", (byte)2, new cu((byte)11)));
        enummap.put(e.n, new ct("device_manutime", (byte)2, new cu((byte)10)));
        enummap.put(e.o, new ct("device_manufacturer", (byte)2, new cu((byte)11)));
        enummap.put(e.p, new ct("device_manuid", (byte)2, new cu((byte)11)));
        enummap.put(e.q, new ct("device_name", (byte)2, new cu((byte)11)));
        r = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/ar, r);
    }
}
