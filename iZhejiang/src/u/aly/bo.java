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
//            dr, ct, cs, aw, 
//            cu, cn, da, ds, 
//            dg, dp, do, ce, 
//            co, dj, dm

public class bo
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bo bo1)
            throws cn
        {
            dg1.j();
_L7:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                bo1.p();
                return;
            }
            db1.c;
            JVM INSTR tableswitch 1 4: default 60
        //                       1 75
        //                       2 114
        //                       3 150
        //                       4 186;
               goto _L1 _L2 _L3 _L4 _L5
_L5:
            break MISSING_BLOCK_LABEL_186;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L8:
            dg1.m();
            if (true) goto _L7; else goto _L6
_L6:
            if (db1.b == 8)
            {
                bo1.a = aw.a(dg1.w());
                bo1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L8
_L3:
            if (db1.b == 8)
            {
                bo1.b = dg1.w();
                bo1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L8
_L4:
            if (db1.b == 11)
            {
                bo1.c = dg1.z();
                bo1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L8
            if (db1.b == 11)
            {
                bo1.d = dg1.z();
                bo1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L8
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bo)ch1);
        }

        public void b(dg dg1, bo bo1)
            throws cn
        {
            bo1.p();
            dg1.a(bo.q());
            if (bo1.a != null && bo1.e())
            {
                dg1.a(bo.r());
                dg1.a(bo1.a.a());
                dg1.c();
            }
            if (bo1.i())
            {
                dg1.a(bo.s());
                dg1.a(bo1.b);
                dg1.c();
            }
            if (bo1.c != null && bo1.l())
            {
                dg1.a(bo.t());
                dg1.a(bo1.c);
                dg1.c();
            }
            if (bo1.d != null && bo1.o())
            {
                dg1.a(bo.u());
                dg1.a(bo1.d);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bo)ch1);
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

        public void a(dg dg1, bo bo1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = new BitSet();
            if (bo1.e())
            {
                bitset.set(0);
            }
            if (bo1.i())
            {
                bitset.set(1);
            }
            if (bo1.l())
            {
                bitset.set(2);
            }
            if (bo1.o())
            {
                bitset.set(3);
            }
            dg1.a(bitset, 4);
            if (bo1.e())
            {
                dg1.a(bo1.a.a());
            }
            if (bo1.i())
            {
                dg1.a(bo1.b);
            }
            if (bo1.l())
            {
                dg1.a(bo1.c);
            }
            if (bo1.o())
            {
                dg1.a(bo1.d);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bo)ch1);
        }

        public void b(dg dg1, bo bo1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = dg1.b(4);
            if (bitset.get(0))
            {
                bo1.a = aw.a(dg1.w());
                bo1.a(true);
            }
            if (bitset.get(1))
            {
                bo1.b = dg1.w();
                bo1.b(true);
            }
            if (bitset.get(2))
            {
                bo1.c = dg1.z();
                bo1.c(true);
            }
            if (bitset.get(3))
            {
                bo1.d = dg1.z();
                bo1.d(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bo)ch1);
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
        private static final Map e;
        private static final e h[];
        private final short f;
        private final String g;

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
            }
        }

        public static e a(String s1)
        {
            return (e)e.get(s1);
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
            return (e)Enum.valueOf(u/aly/bo$e, s1);
        }

        public static e[] values()
        {
            return (e[])h.clone();
        }

        public short a()
        {
            return f;
        }

        public String b()
        {
            return g;
        }

        static 
        {
            a = new e("GENDER", 0, (short)1, "gender");
            b = new e("AGE", 1, (short)2, "age");
            c = new e("ID", 2, (short)3, "id");
            d = new e("SOURCE", 3, (short)4, "source");
            h = (new e[] {
                a, b, c, d
            });
            e = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bo$e).iterator(); iterator.hasNext(); e.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            f = word0;
            g = s2;
        }
    }


    public static final Map e;
    private static final dl f = new dl("UserInfo");
    private static final db g = new db("gender", (byte)8, (short)1);
    private static final db h = new db("age", (byte)8, (short)2);
    private static final db i = new db("id", (byte)11, (short)3);
    private static final db j = new db("source", (byte)11, (short)4);
    private static final Map k;
    private static final int l = 0;
    public aw a;
    public int b;
    public String c;
    public String d;
    private byte m;
    private e n[];

    public bo()
    {
        m = 0;
        n = (new e[] {
            e.a, e.b, e.c, e.d
        });
    }

    public bo(bo bo1)
    {
        m = 0;
        n = (new e[] {
            e.a, e.b, e.c, e.d
        });
        m = bo1.m;
        if (bo1.e())
        {
            a = bo1.a;
        }
        b = bo1.b;
        if (bo1.l())
        {
            c = bo1.c;
        }
        if (bo1.o())
        {
            d = bo1.d;
        }
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            m = 0;
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

    static dl q()
    {
        return f;
    }

    static db r()
    {
        return g;
    }

    static db s()
    {
        return h;
    }

    static db t()
    {
        return i;
    }

    static db u()
    {
        return j;
    }

    public bo a()
    {
        return new bo(this);
    }

    public bo a(int i1)
    {
        b = i1;
        b(true);
        return this;
    }

    public bo a(String s1)
    {
        c = s1;
        return this;
    }

    public bo a(aw aw1)
    {
        a = aw1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)k.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public bo b(String s1)
    {
        d = s1;
        return this;
    }

    public co b(int i1)
    {
        return c(i1);
    }

    public void b()
    {
        a = null;
        b(false);
        b = 0;
        c = null;
        d = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)k.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        m = ce.a(m, 0, flag);
    }

    public aw c()
    {
        return a;
    }

    public e c(int i1)
    {
        return e.a(i1);
    }

    public void c(boolean flag)
    {
        if (!flag)
        {
            c = null;
        }
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

    public boolean e()
    {
        return a != null;
    }

    public int f()
    {
        return b;
    }

    public ch g()
    {
        return a();
    }

    public void h()
    {
        m = ce.b(m, 0);
    }

    public boolean i()
    {
        return ce.a(m, 0);
    }

    public String j()
    {
        return c;
    }

    public void k()
    {
        c = null;
    }

    public boolean l()
    {
        return c != null;
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

    public void p()
        throws cn
    {
    }

    public String toString()
    {
        boolean flag2 = false;
        StringBuilder stringbuilder = new StringBuilder("UserInfo(");
        boolean flag = true;
        boolean flag1;
        if (e())
        {
            stringbuilder.append("gender:");
            if (a == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(a);
            }
            flag = false;
        }
        flag1 = flag;
        if (i())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("age:");
            stringbuilder.append(b);
            flag1 = false;
        }
        if (l())
        {
            if (!flag1)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("id:");
            if (c == null)
            {
                stringbuilder.append("null");
                flag = flag2;
            } else
            {
                stringbuilder.append(c);
                flag = flag2;
            }
        } else
        {
            flag = flag1;
        }
        if (o())
        {
            if (!flag)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append("source:");
            if (d == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(d);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        k = new HashMap();
        k.put(u/aly/dq, new b());
        k.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bo$e);
        enummap.put(e.a, new ct("gender", (byte)2, new cs((byte)16, u/aly/aw)));
        enummap.put(e.b, new ct("age", (byte)2, new cu((byte)8)));
        enummap.put(e.c, new ct("id", (byte)2, new cu((byte)11)));
        enummap.put(e.d, new ct("source", (byte)2, new cu((byte)11)));
        e = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bo, e);
    }
}
