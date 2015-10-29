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
//            dr, ct, cy, bd, 
//            cn, da, ds, dg, 
//            dp, do, co, dj, 
//            dm

public class aq
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, aq aq1)
            throws cn
        {
            dg1.j();
_L2:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                aq1.f();
                return;
            }
            switch (db1.c)
            {
            default:
                dj.a(dg1, db1.b);
                break;

            case 1: // '\001'
                break; /* Loop/switch isn't completed */
            }
_L3:
            dg1.m();
            if (true) goto _L2; else goto _L1
_L1:
            if (db1.b == 12)
            {
                aq1.a = new bd();
                aq1.a.a(dg1);
                aq1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L3
            if (true) goto _L2; else goto _L4
_L4:
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (aq)ch1);
        }

        public void b(dg dg1, aq aq1)
            throws cn
        {
            aq1.f();
            dg1.a(aq.h());
            if (aq1.a != null && aq1.e())
            {
                dg1.a(aq.i());
                aq1.a.b(dg1);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (aq)ch1);
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

        public void a(dg dg1, aq aq1)
            throws cn
        {
            dg1 = (dm)dg1;
            BitSet bitset = new BitSet();
            if (aq1.e())
            {
                bitset.set(0);
            }
            dg1.a(bitset, 1);
            if (aq1.e())
            {
                aq1.a.b(dg1);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (aq)ch1);
        }

        public void b(dg dg1, aq aq1)
            throws cn
        {
            dg1 = (dm)dg1;
            if (dg1.b(1).get(0))
            {
                aq1.a = new bd();
                aq1.a.a(dg1);
                aq1.a(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (aq)ch1);
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
        private static final Map b;
        private static final e e[];
        private final short c;
        private final String d;

        public static e a(int j)
        {
            switch (j)
            {
            default:
                return null;

            case 1: // '\001'
                return a;
            }
        }

        public static e a(String s)
        {
            return (e)b.get(s);
        }

        public static e b(int j)
        {
            e e1 = a(j);
            if (e1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Field ").append(j).append(" doesn't exist!").toString());
            } else
            {
                return e1;
            }
        }

        public static e valueOf(String s)
        {
            return (e)Enum.valueOf(u/aly/aq$e, s);
        }

        public static e[] values()
        {
            return (e[])e.clone();
        }

        public short a()
        {
            return c;
        }

        public String b()
        {
            return d;
        }

        static 
        {
            a = new e("LATENT", 0, (short)1, "latent");
            e = (new e[] {
                a
            });
            b = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/aq$e).iterator(); iterator.hasNext(); b.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s, int j, short word0, String s1)
        {
            super(s, j);
            c = word0;
            d = s1;
        }
    }


    public static final Map b;
    private static final dl c = new dl("ControlPolicy");
    private static final db d = new db("latent", (byte)12, (short)1);
    private static final Map e;
    public bd a;
    private e f[];

    public aq()
    {
        f = (new e[] {
            e.a
        });
    }

    public aq(aq aq1)
    {
        f = (new e[] {
            e.a
        });
        if (aq1.e())
        {
            a = new bd(aq1.a);
        }
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
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

    static dl h()
    {
        return c;
    }

    static db i()
    {
        return d;
    }

    public e a(int j)
    {
        return e.a(j);
    }

    public aq a()
    {
        return new aq(this);
    }

    public aq a(bd bd1)
    {
        a = bd1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)e.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public co b(int j)
    {
        return a(j);
    }

    public void b()
    {
        a = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)e.get(dg1.D())).b().a(dg1, this);
    }

    public bd c()
    {
        return a;
    }

    public void d()
    {
        a = null;
    }

    public boolean e()
    {
        return a != null;
    }

    public void f()
        throws cn
    {
        if (a != null)
        {
            a.j();
        }
    }

    public ch g()
    {
        return a();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ControlPolicy(");
        if (e())
        {
            stringbuilder.append("latent:");
            if (a == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(a);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        e = new HashMap();
        e.put(u/aly/dq, new b());
        e.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/aq$e);
        enummap.put(e.a, new ct("latent", (byte)2, new cy((byte)12, u/aly/bd)));
        b = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/aq, b);
    }
}
