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
//            do, dh, co, dj, 
//            dm

public class an
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, an an1)
            throws cn
        {
            dg1.j();
_L2:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                an1.j();
                return;
            }
            switch (db1.c)
            {
            default:
                dj.a(dg1, db1.b);
                break;

            case 1: // '\001'
                break; /* Loop/switch isn't completed */

            case 2: // '\002'
                break MISSING_BLOCK_LABEL_103;
            }
_L3:
            dg1.m();
            if (true) goto _L2; else goto _L1
_L1:
            if (db1.b == 11)
            {
                an1.a = dg1.z();
                an1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L3
            if (db1.b == 11)
            {
                an1.b = dg1.z();
                an1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L3
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (an)ch1);
        }

        public void b(dg dg1, an an1)
            throws cn
        {
            an1.j();
            dg1.a(an.k());
            if (an1.a != null)
            {
                dg1.a(an.l());
                dg1.a(an1.a);
                dg1.c();
            }
            if (an1.b != null)
            {
                dg1.a(an.m());
                dg1.a(an1.b);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (an)ch1);
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

        public void a(dg dg1, an an1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(an1.a);
            dg1.a(an1.b);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (an)ch1);
        }

        public void b(dg dg1, an an1)
            throws cn
        {
            dg1 = (dm)dg1;
            an1.a = dg1.z();
            an1.a(true);
            an1.b = dg1.z();
            an1.b(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (an)ch1);
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
            return (e)Enum.valueOf(u/aly/an$e, s);
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
            a = new e("PROVIDER", 0, (short)1, "provider");
            b = new e("PUID", 1, (short)2, "puid");
            f = (new e[] {
                a, b
            });
            c = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/an$e).iterator(); iterator.hasNext(); c.put(e1.b(), e1))
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
    private static final dl d = new dl("ActiveUser");
    private static final db e = new db("provider", (byte)11, (short)1);
    private static final db f = new db("puid", (byte)11, (short)2);
    private static final Map g;
    public String a;
    public String b;

    public an()
    {
    }

    public an(String s, String s1)
    {
        this();
        a = s;
        b = s1;
    }

    public an(an an1)
    {
        if (an1.e())
        {
            a = an1.a;
        }
        if (an1.i())
        {
            b = an1.b;
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

    public an a()
    {
        return new an(this);
    }

    public an a(String s)
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

    public an b(String s)
    {
        b = s;
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
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)g.get(dg1.D())).b().a(dg1, this);
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

    public void d()
    {
        a = null;
    }

    public boolean e()
    {
        return a != null;
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

    public void j()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'provider' was not present! Struct: ").append(toString()).toString());
        }
        if (b == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'puid' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ActiveUser(");
        stringbuilder.append("provider:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("puid:");
        if (b == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(b);
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        g = new HashMap();
        g.put(u/aly/dq, new b());
        g.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/an$e);
        enummap.put(e.a, new ct("provider", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("puid", (byte)1, new cu((byte)11)));
        c = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/an, c);
    }
}
