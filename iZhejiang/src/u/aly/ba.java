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
import java.util.Set;

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cw, cu, 
//            cy, bb, cn, da, 
//            ds, dg, dp, do, 
//            ce, dh, co, dj, 
//            dd, dm

public class ba
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ba ba1)
            throws cn
        {
            dg1.j();
_L5:
            Object obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                String s;
                bb bb1;
                int i1;
                if (!ba1.j())
                {
                    throw new dh((new StringBuilder()).append("Required field 'version' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    ba1.n();
                    return;
                }
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 3: default 88
        //                       1 103
        //                       2 213
        //                       3 249;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_249;
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L6:
            dg1.m();
              goto _L5
_L2:
            if (((db) (obj)).b == 13)
            {
                obj = dg1.n();
                ba1.a = new HashMap(((dd) (obj)).c * 2);
                for (i1 = 0; i1 < ((dd) (obj)).c; i1++)
                {
                    s = dg1.z();
                    bb1 = new bb();
                    bb1.a(dg1);
                    ba1.a.put(s, bb1);
                }

                dg1.o();
                ba1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L6
_L3:
            if (((db) (obj)).b == 8)
            {
                ba1.b = dg1.w();
                ba1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L6
            if (((db) (obj)).b == 11)
            {
                ba1.c = dg1.z();
                ba1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L6
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ba)ch1);
        }

        public void b(dg dg1, ba ba1)
            throws cn
        {
            ba1.n();
            dg1.a(ba.o());
            if (ba1.a != null)
            {
                dg1.a(ba.p());
                dg1.a(new dd((byte)11, (byte)12, ba1.a.size()));
                java.util.Map.Entry entry;
                for (Iterator iterator = ba1.a.entrySet().iterator(); iterator.hasNext(); ((bb)entry.getValue()).b(dg1))
                {
                    entry = (java.util.Map.Entry)iterator.next();
                    dg1.a((String)entry.getKey());
                }

                dg1.e();
                dg1.c();
            }
            dg1.a(ba.q());
            dg1.a(ba1.b);
            dg1.c();
            if (ba1.c != null)
            {
                dg1.a(ba.r());
                dg1.a(ba1.c);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ba)ch1);
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

        public void a(dg dg1, ba ba1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(ba1.a.size());
            java.util.Map.Entry entry;
            for (Iterator iterator = ba1.a.entrySet().iterator(); iterator.hasNext(); ((bb)entry.getValue()).b(dg1))
            {
                entry = (java.util.Map.Entry)iterator.next();
                dg1.a((String)entry.getKey());
            }

            dg1.a(ba1.b);
            dg1.a(ba1.c);
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ba)ch1);
        }

        public void b(dg dg1, ba ba1)
            throws cn
        {
            dg1 = (dm)dg1;
            dd dd1 = new dd((byte)11, (byte)12, dg1.w());
            ba1.a = new HashMap(dd1.c * 2);
            for (int i1 = 0; i1 < dd1.c; i1++)
            {
                String s = dg1.z();
                bb bb1 = new bb();
                bb1.a(dg1);
                ba1.a.put(s, bb1);
            }

            ba1.a(true);
            ba1.b = dg1.w();
            ba1.b(true);
            ba1.c = dg1.z();
            ba1.c(true);
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ba)ch1);
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
            return (e)Enum.valueOf(u/aly/ba$e, s);
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
            a = new e("PROPERTY", 0, (short)1, "property");
            b = new e("VERSION", 1, (short)2, "version");
            c = new e("CHECKSUM", 2, (short)3, "checksum");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/ba$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
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
    private static final dl e = new dl("Imprint");
    private static final db f = new db("property", (byte)13, (short)1);
    private static final db g = new db("version", (byte)8, (short)2);
    private static final db h = new db("checksum", (byte)11, (short)3);
    private static final Map i;
    private static final int j = 0;
    public Map a;
    public int b;
    public String c;
    private byte k;

    public ba()
    {
        k = 0;
    }

    public ba(Map map, int i1, String s)
    {
        this();
        a = map;
        b = i1;
        b(true);
        c = s;
    }

    public ba(ba ba1)
    {
        k = 0;
        k = ba1.k;
        if (ba1.f())
        {
            HashMap hashmap = new HashMap();
            java.util.Map.Entry entry;
            for (Iterator iterator = ba1.a.entrySet().iterator(); iterator.hasNext(); hashmap.put((String)entry.getKey(), new bb((bb)entry.getValue())))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            a = hashmap;
        }
        b = ba1.b;
        if (ba1.m())
        {
            c = ba1.c;
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

    static dl o()
    {
        return e;
    }

    static db p()
    {
        return f;
    }

    static db q()
    {
        return g;
    }

    static db r()
    {
        return h;
    }

    public ba a()
    {
        return new ba(this);
    }

    public ba a(int i1)
    {
        b = i1;
        b(true);
        return this;
    }

    public ba a(String s)
    {
        c = s;
        return this;
    }

    public ba a(Map map)
    {
        a = map;
        return this;
    }

    public void a(String s, bb bb1)
    {
        if (a == null)
        {
            a = new HashMap();
        }
        a.put(s, bb1);
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
        b = 0;
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

    public int c()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.size();
        }
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

    public Map d()
    {
        return a;
    }

    public void e()
    {
        a = null;
    }

    public boolean f()
    {
        return a != null;
    }

    public ch g()
    {
        return a();
    }

    public int h()
    {
        return b;
    }

    public void i()
    {
        k = ce.b(k, 0);
    }

    public boolean j()
    {
        return ce.a(k, 0);
    }

    public String k()
    {
        return c;
    }

    public void l()
    {
        c = null;
    }

    public boolean m()
    {
        return c != null;
    }

    public void n()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'property' was not present! Struct: ").append(toString()).toString());
        }
        if (c == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'checksum' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Imprint(");
        stringbuilder.append("property:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("version:");
        stringbuilder.append(b);
        stringbuilder.append(", ");
        stringbuilder.append("checksum:");
        if (c == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(c);
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        i = new HashMap();
        i.put(u/aly/dq, new b());
        i.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/ba$e);
        enummap.put(e.a, new ct("property", (byte)1, new cw((byte)13, new cu((byte)11), new cy((byte)12, u/aly/bb))));
        enummap.put(e.b, new ct("version", (byte)1, new cu((byte)8)));
        enummap.put(e.c, new ct("checksum", (byte)1, new cu((byte)11)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/ba, d);
    }
}
