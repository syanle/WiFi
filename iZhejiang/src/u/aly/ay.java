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
//            do, ce, dh, co, 
//            dj, dm

public class ay
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ay ay1)
            throws cn
        {
            dg1.j();
_L6:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!ay1.i())
                {
                    throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                }
                break MISSING_BLOCK_LABEL_211;
            }
            db1.c;
            JVM INSTR tableswitch 1 3: default 88
        //                       1 103
        //                       2 139
        //                       3 175;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_175;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L7:
            dg1.m();
            if (true) goto _L6; else goto _L5
_L5:
            if (db1.b == 11)
            {
                ay1.a = dg1.z();
                ay1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
_L3:
            if (db1.b == 10)
            {
                ay1.b = dg1.x();
                ay1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (db1.b == 8)
            {
                ay1.c = dg1.w();
                ay1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (!ay1.l())
            {
                throw new dh((new StringBuilder()).append("Required field 'version' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            } else
            {
                ay1.m();
                return;
            }
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ay)ch1);
        }

        public void b(dg dg1, ay ay1)
            throws cn
        {
            ay1.m();
            dg1.a(ay.n());
            if (ay1.a != null)
            {
                dg1.a(ay.o());
                dg1.a(ay1.a);
                dg1.c();
            }
            dg1.a(ay.p());
            dg1.a(ay1.b);
            dg1.c();
            dg1.a(ay.q());
            dg1.a(ay1.c);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ay)ch1);
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

        public void a(dg dg1, ay ay1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(ay1.a);
            dg1.a(ay1.b);
            dg1.a(ay1.c);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ay)ch1);
        }

        public void b(dg dg1, ay ay1)
            throws cn
        {
            dg1 = (dm)dg1;
            ay1.a = dg1.z();
            ay1.a(true);
            ay1.b = dg1.x();
            ay1.b(true);
            ay1.c = dg1.w();
            ay1.c(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ay)ch1);
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
            return (e)Enum.valueOf(u/aly/ay$e, s);
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
            a = new e("IDENTITY", 0, (short)1, "identity");
            b = new e("TS", 1, (short)2, "ts");
            c = new e("VERSION", 2, (short)3, "version");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/ay$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
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
    private static final dl e = new dl("IdSnapshot");
    private static final db f = new db("identity", (byte)11, (short)1);
    private static final db g = new db("ts", (byte)10, (short)2);
    private static final db h = new db("version", (byte)8, (short)3);
    private static final Map i;
    private static final int j = 0;
    private static final int k = 1;
    public String a;
    public long b;
    public int c;
    private byte l;

    public ay()
    {
        l = 0;
    }

    public ay(String s, long l1, int i1)
    {
        this();
        a = s;
        b = l1;
        b(true);
        c = i1;
        c(true);
    }

    public ay(ay ay1)
    {
        l = 0;
        l = ay1.l;
        if (ay1.e())
        {
            a = ay1.a;
        }
        b = ay1.b;
        c = ay1.c;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            l = 0;
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

    public ay a()
    {
        return new ay(this);
    }

    public ay a(int i1)
    {
        c = i1;
        c(true);
        return this;
    }

    public ay a(long l1)
    {
        b = l1;
        b(true);
        return this;
    }

    public ay a(String s)
    {
        a = s;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public co b(int i1)
    {
        return c(i1);
    }

    public void b()
    {
        a = null;
        b(false);
        b = 0L;
        c(false);
        c = 0;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        l = ce.a(l, 0, flag);
    }

    public String c()
    {
        return a;
    }

    public e c(int i1)
    {
        return e.a(i1);
    }

    public void c(boolean flag)
    {
        l = ce.a(l, 1, flag);
    }

    public void d()
    {
        a = null;
    }

    public boolean e()
    {
        return a != null;
    }

    public long f()
    {
        return b;
    }

    public ch g()
    {
        return a();
    }

    public void h()
    {
        l = ce.b(l, 0);
    }

    public boolean i()
    {
        return ce.a(l, 0);
    }

    public int j()
    {
        return c;
    }

    public void k()
    {
        l = ce.b(l, 1);
    }

    public boolean l()
    {
        return ce.a(l, 1);
    }

    public void m()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'identity' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("IdSnapshot(");
        stringbuilder.append("identity:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("ts:");
        stringbuilder.append(b);
        stringbuilder.append(", ");
        stringbuilder.append("version:");
        stringbuilder.append(c);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        i = new HashMap();
        i.put(u/aly/dq, new b());
        i.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/ay$e);
        enummap.put(e.a, new ct("identity", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("ts", (byte)1, new cu((byte)10)));
        enummap.put(e.c, new ct("version", (byte)1, new cu((byte)8)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/ay, d);
    }
}
