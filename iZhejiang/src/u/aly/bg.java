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

public class bg
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bg bg1)
            throws cn
        {
            dg1.j();
_L4:
            db db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!bg1.i())
                {
                    throw new dh((new StringBuilder()).append("Required field 'duration' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    bg1.j();
                    return;
                }
            }
            db1.c;
            JVM INSTR tableswitch 1 2: default 84
        //                       1 99
        //                       2 135;
               goto _L1 _L2 _L3
_L3:
            break MISSING_BLOCK_LABEL_135;
_L1:
            dj.a(dg1, db1.b);
_L5:
            dg1.m();
              goto _L4
_L2:
            if (db1.b == 11)
            {
                bg1.a = dg1.z();
                bg1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L5
            if (db1.b == 10)
            {
                bg1.b = dg1.x();
                bg1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L5
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bg)ch1);
        }

        public void b(dg dg1, bg bg1)
            throws cn
        {
            bg1.j();
            dg1.a(bg.k());
            if (bg1.a != null)
            {
                dg1.a(bg.l());
                dg1.a(bg1.a);
                dg1.c();
            }
            dg1.a(bg.m());
            dg1.a(bg1.b);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bg)ch1);
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

        public void a(dg dg1, bg bg1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(bg1.a);
            dg1.a(bg1.b);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bg)ch1);
        }

        public void b(dg dg1, bg bg1)
            throws cn
        {
            dg1 = (dm)dg1;
            bg1.a = dg1.z();
            bg1.a(true);
            bg1.b = dg1.x();
            bg1.b(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bg)ch1);
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
            return (e)Enum.valueOf(u/aly/bg$e, s);
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
            a = new e("PAGE_NAME", 0, (short)1, "page_name");
            b = new e("DURATION", 1, (short)2, "duration");
            f = (new e[] {
                a, b
            });
            c = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bg$e).iterator(); iterator.hasNext(); c.put(e1.b(), e1))
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
    private static final dl d = new dl("Page");
    private static final db e = new db("page_name", (byte)11, (short)1);
    private static final db f = new db("duration", (byte)10, (short)2);
    private static final Map g;
    private static final int h = 0;
    public String a;
    public long b;
    private byte i;

    public bg()
    {
        i = 0;
    }

    public bg(String s, long l1)
    {
        this();
        a = s;
        b = l1;
        b(true);
    }

    public bg(bg bg1)
    {
        i = 0;
        i = bg1.i;
        if (bg1.e())
        {
            a = bg1.a;
        }
        b = bg1.b;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            i = 0;
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

    public e a(int i1)
    {
        return e.a(i1);
    }

    public bg a()
    {
        return new bg(this);
    }

    public bg a(long l1)
    {
        b = l1;
        b(true);
        return this;
    }

    public bg a(String s)
    {
        a = s;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)g.get(dg1.D())).b().b(dg1, this);
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
        return a(i1);
    }

    public void b()
    {
        a = null;
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
        i = ce.a(i, 0, flag);
    }

    public String c()
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
        i = ce.b(i, 0);
    }

    public boolean i()
    {
        return ce.a(i, 0);
    }

    public void j()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'page_name' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Page(");
        stringbuilder.append("page_name:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("duration:");
        stringbuilder.append(b);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        g = new HashMap();
        g.put(u/aly/dq, new b());
        g.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bg$e);
        enummap.put(e.a, new ct("page_name", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("duration", (byte)1, new cu((byte)10)));
        c = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bg, c);
    }
}
