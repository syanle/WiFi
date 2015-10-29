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
//            au, cn, da, ds, 
//            dg, dp, do, ce, 
//            dh, co, dj, dm

public class at
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, at at1)
            throws cn
        {
            dg1.j();
_L5:
            db db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!at1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    at1.m();
                    return;
                }
            }
            db1.c;
            JVM INSTR tableswitch 1 3: default 88
        //                       1 103
        //                       2 139
        //                       3 175;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_175;
_L1:
            dj.a(dg1, db1.b);
_L6:
            dg1.m();
              goto _L5
_L2:
            if (db1.b == 10)
            {
                at1.a = dg1.x();
                at1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L6
_L3:
            if (db1.b == 11)
            {
                at1.b = dg1.z();
                at1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L6
            if (db1.b == 8)
            {
                at1.c = au.a(dg1.w());
                at1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L6
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (at)ch1);
        }

        public void b(dg dg1, at at1)
            throws cn
        {
            at1.m();
            dg1.a(at.n());
            dg1.a(at.o());
            dg1.a(at1.a);
            dg1.c();
            if (at1.b != null)
            {
                dg1.a(at.p());
                dg1.a(at1.b);
                dg1.c();
            }
            if (at1.c != null && at1.l())
            {
                dg1.a(at.q());
                dg1.a(at1.c.a());
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (at)ch1);
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

        public void a(dg dg1, at at1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(at1.a);
            dg1.a(at1.b);
            BitSet bitset = new BitSet();
            if (at1.l())
            {
                bitset.set(0);
            }
            dg1.a(bitset, 1);
            if (at1.l())
            {
                dg1.a(at1.c.a());
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (at)ch1);
        }

        public void b(dg dg1, at at1)
            throws cn
        {
            dg1 = (dm)dg1;
            at1.a = dg1.x();
            at1.b(true);
            at1.b = dg1.z();
            at1.c(true);
            if (dg1.b(1).get(0))
            {
                at1.c = au.a(dg1.w());
                at1.d(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (at)ch1);
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
            return (e)Enum.valueOf(u/aly/at$e, s);
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
            a = new e("TS", 0, (short)1, "ts");
            b = new e("CONTEXT", 1, (short)2, "context");
            c = new e("SOURCE", 2, (short)3, "source");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/at$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
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
    private static final dl e = new dl("Error");
    private static final db f = new db("ts", (byte)10, (short)1);
    private static final db g = new db("context", (byte)11, (short)2);
    private static final db h = new db("source", (byte)8, (short)3);
    private static final Map i;
    private static final int j = 0;
    public long a;
    public String b;
    public au c;
    private byte k;
    private e l[];

    public at()
    {
        k = 0;
        l = (new e[] {
            e.c
        });
    }

    public at(long l1, String s)
    {
        this();
        a = l1;
        b(true);
        b = s;
    }

    public at(at at1)
    {
        k = 0;
        l = (new e[] {
            e.c
        });
        k = at1.k;
        a = at1.a;
        if (at1.i())
        {
            b = at1.b;
        }
        if (at1.l())
        {
            c = at1.c;
        }
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            k = 0;
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

    public at a()
    {
        return new at(this);
    }

    public at a(long l1)
    {
        a = l1;
        b(true);
        return this;
    }

    public at a(String s)
    {
        b = s;
        return this;
    }

    public at a(au au1)
    {
        c = au1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().b(dg1, this);
    }

    public co b(int i1)
    {
        return a(i1);
    }

    public void b()
    {
        b(false);
        a = 0L;
        b = null;
        c = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        k = ce.a(k, 0, flag);
    }

    public long c()
    {
        return a;
    }

    public void c(boolean flag)
    {
        if (!flag)
        {
            b = null;
        }
    }

    public void d()
    {
        k = ce.b(k, 0);
    }

    public void d(boolean flag)
    {
        if (!flag)
        {
            c = null;
        }
    }

    public boolean e()
    {
        return ce.a(k, 0);
    }

    public String f()
    {
        return b;
    }

    public ch g()
    {
        return a();
    }

    public void h()
    {
        b = null;
    }

    public boolean i()
    {
        return b != null;
    }

    public au j()
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

    public void m()
        throws cn
    {
        if (b == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'context' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Error(");
        stringbuilder.append("ts:");
        stringbuilder.append(a);
        stringbuilder.append(", ");
        stringbuilder.append("context:");
        if (b == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(b);
        }
        if (l())
        {
            stringbuilder.append(", ");
            stringbuilder.append("source:");
            if (c == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(c);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        i = new HashMap();
        i.put(u/aly/dq, new b());
        i.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/at$e);
        enummap.put(e.a, new ct("ts", (byte)1, new cu((byte)10)));
        enummap.put(e.b, new ct("context", (byte)1, new cu((byte)11)));
        enummap.put(e.c, new ct("source", (byte)2, new cs((byte)16, u/aly/au)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/at, d);
    }
}
