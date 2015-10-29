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
//            bk, cn, da, ds, 
//            ce, dh, dg, dp, 
//            do, co, dj, dm

public class ao
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ao ao1)
            throws cn
        {
            dg1.j();
_L13:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                ao1.H();
                return;
            }
            db1.c;
            JVM INSTR tableswitch 1 10: default 84
        //                       1 99
        //                       2 135
        //                       3 171
        //                       4 207
        //                       5 243
        //                       6 282
        //                       7 318
        //                       8 354
        //                       9 390
        //                       10 426;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
            break MISSING_BLOCK_LABEL_426;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L14:
            dg1.m();
            if (true) goto _L13; else goto _L12
_L12:
            if (db1.b == 11)
            {
                ao1.a = dg1.z();
                ao1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L3:
            if (db1.b == 11)
            {
                ao1.b = dg1.z();
                ao1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L4:
            if (db1.b == 8)
            {
                ao1.c = dg1.w();
                ao1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L5:
            if (db1.b == 11)
            {
                ao1.d = dg1.z();
                ao1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L6:
            if (db1.b == 8)
            {
                ao1.e = bk.a(dg1.w());
                ao1.e(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L7:
            if (db1.b == 11)
            {
                ao1.f = dg1.z();
                ao1.f(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L8:
            if (db1.b == 11)
            {
                ao1.g = dg1.z();
                ao1.g(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L9:
            if (db1.b == 11)
            {
                ao1.h = dg1.z();
                ao1.h(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L10:
            if (db1.b == 11)
            {
                ao1.i = dg1.z();
                ao1.i(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
            if (db1.b == 8)
            {
                ao1.j = dg1.w();
                ao1.j(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ao)ch1);
        }

        public void b(dg dg1, ao ao1)
            throws cn
        {
            ao1.H();
            dg1.a(ao.I());
            if (ao1.a != null)
            {
                dg1.a(ao.J());
                dg1.a(ao1.a);
                dg1.c();
            }
            if (ao1.b != null && ao1.i())
            {
                dg1.a(ao.K());
                dg1.a(ao1.b);
                dg1.c();
            }
            if (ao1.l())
            {
                dg1.a(ao.L());
                dg1.a(ao1.c);
                dg1.c();
            }
            if (ao1.d != null && ao1.o())
            {
                dg1.a(ao.M());
                dg1.a(ao1.d);
                dg1.c();
            }
            if (ao1.e != null)
            {
                dg1.a(ao.N());
                dg1.a(ao1.e.a());
                dg1.c();
            }
            if (ao1.f != null)
            {
                dg1.a(ao.O());
                dg1.a(ao1.f);
                dg1.c();
            }
            if (ao1.g != null)
            {
                dg1.a(ao.P());
                dg1.a(ao1.g);
                dg1.c();
            }
            if (ao1.h != null && ao1.A())
            {
                dg1.a(ao.Q());
                dg1.a(ao1.h);
                dg1.c();
            }
            if (ao1.i != null && ao1.D())
            {
                dg1.a(ao.R());
                dg1.a(ao1.i);
                dg1.c();
            }
            if (ao1.G())
            {
                dg1.a(ao.S());
                dg1.a(ao1.j);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ao)ch1);
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

        public void a(dg dg1, ao ao1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(ao1.a);
            dg1.a(ao1.e.a());
            dg1.a(ao1.f);
            dg1.a(ao1.g);
            BitSet bitset = new BitSet();
            if (ao1.i())
            {
                bitset.set(0);
            }
            if (ao1.l())
            {
                bitset.set(1);
            }
            if (ao1.o())
            {
                bitset.set(2);
            }
            if (ao1.A())
            {
                bitset.set(3);
            }
            if (ao1.D())
            {
                bitset.set(4);
            }
            if (ao1.G())
            {
                bitset.set(5);
            }
            dg1.a(bitset, 6);
            if (ao1.i())
            {
                dg1.a(ao1.b);
            }
            if (ao1.l())
            {
                dg1.a(ao1.c);
            }
            if (ao1.o())
            {
                dg1.a(ao1.d);
            }
            if (ao1.A())
            {
                dg1.a(ao1.h);
            }
            if (ao1.D())
            {
                dg1.a(ao1.i);
            }
            if (ao1.G())
            {
                dg1.a(ao1.j);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ao)ch1);
        }

        public void b(dg dg1, ao ao1)
            throws cn
        {
            dg1 = (dm)dg1;
            ao1.a = dg1.z();
            ao1.a(true);
            ao1.e = bk.a(dg1.w());
            ao1.e(true);
            ao1.f = dg1.z();
            ao1.f(true);
            ao1.g = dg1.z();
            ao1.g(true);
            BitSet bitset = dg1.b(6);
            if (bitset.get(0))
            {
                ao1.b = dg1.z();
                ao1.b(true);
            }
            if (bitset.get(1))
            {
                ao1.c = dg1.w();
                ao1.c(true);
            }
            if (bitset.get(2))
            {
                ao1.d = dg1.z();
                ao1.d(true);
            }
            if (bitset.get(3))
            {
                ao1.h = dg1.z();
                ao1.h(true);
            }
            if (bitset.get(4))
            {
                ao1.i = dg1.z();
                ao1.i(true);
            }
            if (bitset.get(5))
            {
                ao1.j = dg1.w();
                ao1.j(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ao)ch1);
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
            return (e)Enum.valueOf(u/aly/ao$e, s1);
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
            a = new e("KEY", 0, (short)1, "key");
            b = new e("VERSION", 1, (short)2, "version");
            c = new e("VERSION_INDEX", 2, (short)3, "version_index");
            d = new e("PACKAGE_NAME", 3, (short)4, "package_name");
            e = new e("SDK_TYPE", 4, (short)5, "sdk_type");
            f = new e("SDK_VERSION", 5, (short)6, "sdk_version");
            g = new e("CHANNEL", 6, (short)7, "channel");
            h = new e("WRAPPER_TYPE", 7, (short)8, "wrapper_type");
            i = new e("WRAPPER_VERSION", 8, (short)9, "wrapper_version");
            j = new e("VERTICAL_TYPE", 9, (short)10, "vertical_type");
            n = (new e[] {
                a, b, c, d, e, f, g, h, i, j
            });
            k = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/ao$e).iterator(); iterator.hasNext(); k.put(e1.b(), e1))
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


    public static final Map k;
    private static final dl l = new dl("AppInfo");
    private static final db m = new db("key", (byte)11, (short)1);
    private static final db n = new db("version", (byte)11, (short)2);
    private static final db o = new db("version_index", (byte)8, (short)3);
    private static final db p = new db("package_name", (byte)11, (short)4);
    private static final db q = new db("sdk_type", (byte)8, (short)5);
    private static final db r = new db("sdk_version", (byte)11, (short)6);
    private static final db s = new db("channel", (byte)11, (short)7);
    private static final db t = new db("wrapper_type", (byte)11, (short)8);
    private static final db u = new db("wrapper_version", (byte)11, (short)9);
    private static final db v = new db("vertical_type", (byte)8, (short)10);
    private static final Map w;
    private static final int x = 0;
    private static final int y = 1;
    private e A[];
    public String a;
    public String b;
    public int c;
    public String d;
    public bk e;
    public String f;
    public String g;
    public String h;
    public String i;
    public int j;
    private byte z;

    public ao()
    {
        z = 0;
        A = (new e[] {
            e.b, e.c, e.d, e.h, e.i, e.j
        });
    }

    public ao(String s1, bk bk1, String s2, String s3)
    {
        this();
        a = s1;
        e = bk1;
        f = s2;
        g = s3;
    }

    public ao(ao ao1)
    {
        z = 0;
        A = (new e[] {
            e.b, e.c, e.d, e.h, e.i, e.j
        });
        z = ao1.z;
        if (ao1.e())
        {
            a = ao1.a;
        }
        if (ao1.i())
        {
            b = ao1.b;
        }
        c = ao1.c;
        if (ao1.o())
        {
            d = ao1.d;
        }
        if (ao1.r())
        {
            e = ao1.e;
        }
        if (ao1.u())
        {
            f = ao1.f;
        }
        if (ao1.x())
        {
            g = ao1.g;
        }
        if (ao1.A())
        {
            h = ao1.h;
        }
        if (ao1.D())
        {
            i = ao1.i;
        }
        j = ao1.j;
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
            z = 0;
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

    public String B()
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

    public int E()
    {
        return j;
    }

    public void F()
    {
        z = ce.b(z, 1);
    }

    public boolean G()
    {
        return ce.a(z, 1);
    }

    public void H()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'key' was not present! Struct: ").append(toString()).toString());
        }
        if (e == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'sdk_type' was not present! Struct: ").append(toString()).toString());
        }
        if (f == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'sdk_version' was not present! Struct: ").append(toString()).toString());
        }
        if (g == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'channel' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public ao a()
    {
        return new ao(this);
    }

    public ao a(int i1)
    {
        c = i1;
        c(true);
        return this;
    }

    public ao a(String s1)
    {
        a = s1;
        return this;
    }

    public ao a(bk bk1)
    {
        e = bk1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)w.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public ao b(String s1)
    {
        b = s1;
        return this;
    }

    public co b(int i1)
    {
        return d(i1);
    }

    public void b()
    {
        a = null;
        b = null;
        c(false);
        c = 0;
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j(false);
        j = 0;
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

    public String c()
    {
        return a;
    }

    public ao c(int i1)
    {
        j = i1;
        j(true);
        return this;
    }

    public ao c(String s1)
    {
        d = s1;
        return this;
    }

    public void c(boolean flag)
    {
        z = ce.a(z, 0, flag);
    }

    public e d(int i1)
    {
        return e.a(i1);
    }

    public ao d(String s1)
    {
        f = s1;
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

    public ao e(String s1)
    {
        g = s1;
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

    public ao f(String s1)
    {
        h = s1;
        return this;
    }

    public void f(boolean flag)
    {
        if (!flag)
        {
            f = null;
        }
    }

    public ao g(String s1)
    {
        i = s1;
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

    public int j()
    {
        return c;
    }

    public void j(boolean flag)
    {
        z = ce.a(z, 1, flag);
    }

    public void k()
    {
        z = ce.b(z, 0);
    }

    public boolean l()
    {
        return ce.a(z, 0);
    }

    public String m()
    {
        return d;
    }

    public void n()
    {
        d = null;
    }

    public boolean o()
    {
        return d != null;
    }

    public bk p()
    {
        return e;
    }

    public void q()
    {
        e = null;
    }

    public boolean r()
    {
        return e != null;
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
        StringBuilder stringbuilder = new StringBuilder("AppInfo(");
        stringbuilder.append("key:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        if (i())
        {
            stringbuilder.append(", ");
            stringbuilder.append("version:");
            if (b == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(b);
            }
        }
        if (l())
        {
            stringbuilder.append(", ");
            stringbuilder.append("version_index:");
            stringbuilder.append(c);
        }
        if (o())
        {
            stringbuilder.append(", ");
            stringbuilder.append("package_name:");
            if (d == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(d);
            }
        }
        stringbuilder.append(", ");
        stringbuilder.append("sdk_type:");
        if (e == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(e);
        }
        stringbuilder.append(", ");
        stringbuilder.append("sdk_version:");
        if (f == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(f);
        }
        stringbuilder.append(", ");
        stringbuilder.append("channel:");
        if (g == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(g);
        }
        if (A())
        {
            stringbuilder.append(", ");
            stringbuilder.append("wrapper_type:");
            if (h == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(h);
            }
        }
        if (D())
        {
            stringbuilder.append(", ");
            stringbuilder.append("wrapper_version:");
            if (i == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(i);
            }
        }
        if (G())
        {
            stringbuilder.append(", ");
            stringbuilder.append("vertical_type:");
            stringbuilder.append(j);
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
        w = new HashMap();
        w.put(u/aly/dq, new b());
        w.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/ao$e);
        enummap.put(e.a, new ct("key", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("version", (byte)2, new cu((byte)11)));
        enummap.put(e.c, new ct("version_index", (byte)2, new cu((byte)8)));
        enummap.put(e.d, new ct("package_name", (byte)2, new cu((byte)11)));
        enummap.put(e.e, new ct("sdk_type", (byte)1, new cs((byte)16, u/aly/bk)));
        enummap.put(e.f, new ct("sdk_version", (byte)1, new cu((byte)11)));
        enummap.put(e.g, new ct("channel", (byte)1, new cu((byte)11)));
        enummap.put(e.h, new ct("wrapper_type", (byte)2, new cu((byte)11)));
        enummap.put(e.i, new ct("wrapper_version", (byte)2, new cu((byte)11)));
        enummap.put(e.j, new ct("vertical_type", (byte)2, new cu((byte)8)));
        k = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/ao, k);
    }
}
