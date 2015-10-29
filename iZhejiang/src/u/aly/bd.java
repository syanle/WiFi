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

public class bd
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bd bd1)
            throws cn
        {
            dg1.j();
_L2:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!bd1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'latency' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                }
                break MISSING_BLOCK_LABEL_171;
            }
            switch (db1.c)
            {
            default:
                dj.a(dg1, db1.b);
                break;

            case 1: // '\001'
                break; /* Loop/switch isn't completed */

            case 2: // '\002'
                break MISSING_BLOCK_LABEL_135;
            }
_L3:
            dg1.m();
            if (true) goto _L2; else goto _L1
_L1:
            if (db1.b == 8)
            {
                bd1.a = dg1.w();
                bd1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L3
            if (db1.b == 10)
            {
                bd1.b = dg1.x();
                bd1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L3
            if (!bd1.i())
            {
                throw new dh((new StringBuilder()).append("Required field 'interval' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            } else
            {
                bd1.j();
                return;
            }
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bd)ch1);
        }

        public void b(dg dg1, bd bd1)
            throws cn
        {
            bd1.j();
            dg1.a(bd.k());
            dg1.a(bd.l());
            dg1.a(bd1.a);
            dg1.c();
            dg1.a(bd.m());
            dg1.a(bd1.b);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bd)ch1);
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

        public void a(dg dg1, bd bd1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(bd1.a);
            dg1.a(bd1.b);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bd)ch1);
        }

        public void b(dg dg1, bd bd1)
            throws cn
        {
            dg1 = (dm)dg1;
            bd1.a = dg1.w();
            bd1.a(true);
            bd1.b = dg1.x();
            bd1.b(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bd)ch1);
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
        private static final Map c;
        private static final e f[];
        private final short d;
        private final String e;

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
            }
        }

        public static e a(String s)
        {
            return (e)c.get(s);
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
            return (e)Enum.valueOf(u/aly/bd$e, s);
        }

        public static e[] values()
        {
            return (e[])f.clone();
        }

        public short a()
        {
            return d;
        }

        public String b()
        {
            return e;
        }

        static 
        {
            a = new e("LATENCY", 0, (short)1, "latency");
            b = new e("INTERVAL", 1, (short)2, "interval");
            f = (new e[] {
                a, b
            });
            c = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bd$e).iterator(); iterator.hasNext(); c.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s, int i1, short word0, String s1)
        {
            super(s, i1);
            d = word0;
            e = s1;
        }
    }


    public static final Map c;
    private static final dl d = new dl("Latent");
    private static final db e = new db("latency", (byte)8, (short)1);
    private static final db f = new db("interval", (byte)10, (short)2);
    private static final Map g;
    private static final int h = 0;
    private static final int i = 1;
    public int a;
    public long b;
    private byte j;

    public bd()
    {
        j = 0;
    }

    public bd(int i1, long l1)
    {
        this();
        a = i1;
        a(true);
        b = l1;
        b(true);
    }

    public bd(bd bd1)
    {
        j = 0;
        j = bd1.j;
        a = bd1.a;
        b = bd1.b;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            j = 0;
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

    static dl k()
    {
        return d;
    }

    static db l()
    {
        return e;
    }

    static db m()
    {
        return f;
    }

    public bd a()
    {
        return new bd(this);
    }

    public bd a(int i1)
    {
        a = i1;
        a(true);
        return this;
    }

    public bd a(long l1)
    {
        b = l1;
        b(true);
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)g.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        j = ce.a(j, 0, flag);
    }

    public co b(int i1)
    {
        return c(i1);
    }

    public void b()
    {
        a(false);
        a = 0;
        b(false);
        b = 0L;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)g.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        j = ce.a(j, 1, flag);
    }

    public int c()
    {
        return a;
    }

    public e c(int i1)
    {
        return e.a(i1);
    }

    public void d()
    {
        j = ce.b(j, 0);
    }

    public boolean e()
    {
        return ce.a(j, 0);
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
        j = ce.b(j, 1);
    }

    public boolean i()
    {
        return ce.a(j, 1);
    }

    public void j()
        throws cn
    {
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Latent(");
        stringbuilder.append("latency:");
        stringbuilder.append(a);
        stringbuilder.append(", ");
        stringbuilder.append("interval:");
        stringbuilder.append(b);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        g = new HashMap();
        g.put(u/aly/dq, new b());
        g.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bd$e);
        enummap.put(e.a, new ct("latency", (byte)1, new cu((byte)8)));
        enummap.put(e.b, new ct("interval", (byte)1, new cu((byte)10)));
        c = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bd, c);
    }
}
