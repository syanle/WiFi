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

public class am
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, am am1)
            throws cn
        {
            dg1.j();
_L1:
            db db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!am1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    am1.f();
                    return;
                }
            }
            switch (db1.c)
            {
            default:
                dj.a(dg1, db1.b);
                break;

            case 1: // '\001'
                break MISSING_BLOCK_LABEL_95;
            }
            dg1.m();
              goto _L1
            if (db1.b == 10)
            {
                am1.a = dg1.x();
                am1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
            break MISSING_BLOCK_LABEL_88;
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (am)ch1);
        }

        public void b(dg dg1, am am1)
            throws cn
        {
            am1.f();
            dg1.a(am.h());
            dg1.a(am.i());
            dg1.a(am1.a);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (am)ch1);
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

        public void a(dg dg1, am am1)
            throws cn
        {
            ((dm)dg1).a(am1.a);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (am)ch1);
        }

        public void b(dg dg1, am am1)
            throws cn
        {
            am1.a = ((dm)dg1).x();
            am1.a(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (am)ch1);
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
            return (e)Enum.valueOf(u/aly/am$e, s);
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
            a = new e("TS", 0, (short)1, "ts");
            e = (new e[] {
                a
            });
            b = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/am$e).iterator(); iterator.hasNext(); b.put(e1.b(), e1))
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
    private static final dl c = new dl("ActivateMsg");
    private static final db d = new db("ts", (byte)10, (short)1);
    private static final Map e;
    private static final int f = 0;
    public long a;
    private byte g;

    public am()
    {
        g = 0;
    }

    public am(long l)
    {
        this();
        a = l;
        a(true);
    }

    public am(am am1)
    {
        g = 0;
        g = am1.g;
        a = am1.a;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            g = 0;
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

    public am a()
    {
        return new am(this);
    }

    public am a(long l)
    {
        a = l;
        a(true);
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)e.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        g = ce.a(g, 0, flag);
    }

    public co b(int j)
    {
        return a(j);
    }

    public void b()
    {
        a(false);
        a = 0L;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)e.get(dg1.D())).b().a(dg1, this);
    }

    public long c()
    {
        return a;
    }

    public void d()
    {
        g = ce.b(g, 0);
    }

    public boolean e()
    {
        return ce.a(g, 0);
    }

    public void f()
        throws cn
    {
    }

    public ch g()
    {
        return a();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ActivateMsg(");
        stringbuilder.append("ts:");
        stringbuilder.append(a);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        e = new HashMap();
        e.put(u/aly/dq, new b());
        e.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/am$e);
        enummap.put(e.a, new ct("ts", (byte)1, new cu((byte)10)));
        b = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/am, b);
    }
}
