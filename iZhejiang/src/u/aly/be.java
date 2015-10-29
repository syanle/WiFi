// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cu, cn, 
//            da, ds, dg, dp, 
//            do, ce, co, dh, 
//            dj, dm

public class be
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, be be1)
            throws cn
        {
            dg1.j();
_L6:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!be1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'lat' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                }
                break MISSING_BLOCK_LABEL_209;
            }
            db1.c;
            JVM INSTR tableswitch 1 3: default 88
        //                       1 103
        //                       2 138
        //                       3 173;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_173;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L7:
            dg1.m();
            if (true) goto _L6; else goto _L5
_L5:
            if (db1.b == 4)
            {
                be1.a = dg1.y();
                be1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
_L3:
            if (db1.b == 4)
            {
                be1.b = dg1.y();
                be1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (db1.b == 10)
            {
                be1.c = dg1.x();
                be1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (!be1.i())
            {
                throw new dh((new StringBuilder()).append("Required field 'lng' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            }
            if (!be1.l())
            {
                throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            } else
            {
                be1.m();
                return;
            }
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (be)ch1);
        }

        public void b(dg dg1, be be1)
            throws cn
        {
            be1.m();
            dg1.a(be.n());
            dg1.a(be.o());
            dg1.a(be1.a);
            dg1.c();
            dg1.a(be.p());
            dg1.a(be1.b);
            dg1.c();
            dg1.a(be.q());
            dg1.a(be1.c);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (be)ch1);
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

        public void a(dg dg1, be be1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(be1.a);
            dg1.a(be1.b);
            dg1.a(be1.c);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (be)ch1);
        }

        public void b(dg dg1, be be1)
            throws cn
        {
            dg1 = (dm)dg1;
            be1.a = dg1.y();
            be1.a(true);
            be1.b = dg1.y();
            be1.b(true);
            be1.c = dg1.x();
            be1.c(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (be)ch1);
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
        private static final Map d;
        private static final e g[];
        private final short e;
        private final String f;

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
            }
        }

        public static e a(String s)
        {
            return (e)d.get(s);
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

        public static e valueOf(String s)
        {
            return (e)Enum.valueOf(u/aly/be$e, s);
        }

        public static e[] values()
        {
            return (e[])g.clone();
        }

        public short a()
        {
            return e;
        }

        public String b()
        {
            return f;
        }

        static 
        {
            a = new e("LAT", 0, (short)1, "lat");
            b = new e("LNG", 1, (short)2, "lng");
            c = new e("TS", 2, (short)3, "ts");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/be$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s, int i1, short word0, String s1)
        {
            super(s, i1);
            e = word0;
            f = s1;
        }
    }


    public static final Map d;
    private static final dl e = new dl("Location");
    private static final db f = new db("lat", (byte)4, (short)1);
    private static final db g = new db("lng", (byte)4, (short)2);
    private static final db h = new db("ts", (byte)10, (short)3);
    private static final Map i;
    private static final int j = 0;
    private static final int k = 1;
    private static final int l = 2;
    public double a;
    public double b;
    public long c;
    private byte m;

    public be()
    {
        m = 0;
    }

    public be(double d1, double d2, long l1)
    {
        this();
        a = d1;
        a(true);
        b = d2;
        b(true);
        c = l1;
        c(true);
    }

    public be(be be1)
    {
        m = 0;
        m = be1.m;
        a = be1.a;
        b = be1.b;
        c = be1.c;
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

    static dl n()
    {
        return e;
    }

    static db o()
    {
        return f;
    }

    static db p()
    {
        return g;
    }

    static db q()
    {
        return h;
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public be a()
    {
        return new be(this);
    }

    public be a(double d1)
    {
        a = d1;
        a(true);
        return this;
    }

    public be a(long l1)
    {
        c = l1;
        c(true);
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        m = ce.a(m, 0, flag);
    }

    public be b(double d1)
    {
        b = d1;
        b(true);
        return this;
    }

    public co b(int i1)
    {
        return a(i1);
    }

    public void b()
    {
        a(false);
        a = 0.0D;
        b(false);
        b = 0.0D;
        c(false);
        c = 0L;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        m = ce.a(m, 1, flag);
    }

    public double c()
    {
        return a;
    }

    public void c(boolean flag)
    {
        m = ce.a(m, 2, flag);
    }

    public void d()
    {
        m = ce.b(m, 0);
    }

    public boolean e()
    {
        return ce.a(m, 0);
    }

    public double f()
    {
        return b;
    }

    public ch g()
    {
        return a();
    }

    public void h()
    {
        m = ce.b(m, 1);
    }

    public boolean i()
    {
        return ce.a(m, 1);
    }

    public long j()
    {
        return c;
    }

    public void k()
    {
        m = ce.b(m, 2);
    }

    public boolean l()
    {
        return ce.a(m, 2);
    }

    public void m()
        throws cn
    {
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Location(");
        stringbuilder.append("lat:");
        stringbuilder.append(a);
        stringbuilder.append(", ");
        stringbuilder.append("lng:");
        stringbuilder.append(b);
        stringbuilder.append(", ");
        stringbuilder.append("ts:");
        stringbuilder.append(c);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        i = new HashMap();
        i.put(u/aly/dq, new b());
        i.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/be$e);
        enummap.put(e.a, new ct("lat", (byte)1, new cu((byte)4)));
        enummap.put(e.b, new ct("lng", (byte)1, new cu((byte)4)));
        enummap.put(e.c, new ct("ts", (byte)1, new cu((byte)10)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/be, d);
    }
}
