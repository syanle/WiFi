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
import java.util.Set;

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cu, cw, 
//            cy, bh, cn, da, 
//            ds, dg, dp, do, 
//            ce, dh, co, dj, 
//            dd, dm

public class av
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, av av1)
            throws cn
        {
            dg1.j();
_L7:
            Object obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                String s1;
                bh bh1;
                int i1;
                if (!av1.s())
                {
                    throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    av1.t();
                    return;
                }
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 5: default 96
        //                       1 111
        //                       2 147
        //                       3 257
        //                       4 293
        //                       5 329;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
            break MISSING_BLOCK_LABEL_329;
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L8:
            dg1.m();
              goto _L7
_L2:
            if (((db) (obj)).b == 11)
            {
                av1.a = dg1.z();
                av1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L3:
            if (((db) (obj)).b == 13)
            {
                obj = dg1.n();
                av1.b = new HashMap(((dd) (obj)).c * 2);
                for (i1 = 0; i1 < ((dd) (obj)).c; i1++)
                {
                    s1 = dg1.z();
                    bh1 = new bh();
                    bh1.a(dg1);
                    av1.b.put(s1, bh1);
                }

                dg1.o();
                av1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L4:
            if (((db) (obj)).b == 10)
            {
                av1.c = dg1.x();
                av1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L5:
            if (((db) (obj)).b == 8)
            {
                av1.d = dg1.w();
                av1.d(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
            if (((db) (obj)).b == 10)
            {
                av1.e = dg1.x();
                av1.e(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (av)ch1);
        }

        public void b(dg dg1, av av1)
            throws cn
        {
            av1.t();
            dg1.a(av.u());
            if (av1.a != null)
            {
                dg1.a(av.v());
                dg1.a(av1.a);
                dg1.c();
            }
            if (av1.b != null)
            {
                dg1.a(av.w());
                dg1.a(new dd((byte)11, (byte)12, av1.b.size()));
                java.util.Map.Entry entry;
                for (Iterator iterator = av1.b.entrySet().iterator(); iterator.hasNext(); ((bh)entry.getValue()).b(dg1))
                {
                    entry = (java.util.Map.Entry)iterator.next();
                    dg1.a((String)entry.getKey());
                }

                dg1.e();
                dg1.c();
            }
            if (av1.m())
            {
                dg1.a(av.x());
                dg1.a(av1.c);
                dg1.c();
            }
            if (av1.p())
            {
                dg1.a(av.y());
                dg1.a(av1.d);
                dg1.c();
            }
            dg1.a(av.z());
            dg1.a(av1.e);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (av)ch1);
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

        public void a(dg dg1, av av1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(av1.a);
            dg1.a(av1.b.size());
            java.util.Map.Entry entry;
            for (Iterator iterator = av1.b.entrySet().iterator(); iterator.hasNext(); ((bh)entry.getValue()).b(dg1))
            {
                entry = (java.util.Map.Entry)iterator.next();
                dg1.a((String)entry.getKey());
            }

            dg1.a(av1.e);
            BitSet bitset = new BitSet();
            if (av1.m())
            {
                bitset.set(0);
            }
            if (av1.p())
            {
                bitset.set(1);
            }
            dg1.a(bitset, 2);
            if (av1.m())
            {
                dg1.a(av1.c);
            }
            if (av1.p())
            {
                dg1.a(av1.d);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (av)ch1);
        }

        public void b(dg dg1, av av1)
            throws cn
        {
            dg1 = (dm)dg1;
            av1.a = dg1.z();
            av1.a(true);
            Object obj = new dd((byte)11, (byte)12, dg1.w());
            av1.b = new HashMap(((dd) (obj)).c * 2);
            for (int i1 = 0; i1 < ((dd) (obj)).c; i1++)
            {
                String s1 = dg1.z();
                bh bh1 = new bh();
                bh1.a(dg1);
                av1.b.put(s1, bh1);
            }

            av1.b(true);
            av1.e = dg1.x();
            av1.e(true);
            obj = dg1.b(2);
            if (((BitSet) (obj)).get(0))
            {
                av1.c = dg1.x();
                av1.c(true);
            }
            if (((BitSet) (obj)).get(1))
            {
                av1.d = dg1.w();
                av1.d(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (av)ch1);
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
        public static final e e;
        private static final Map f;
        private static final e i[];
        private final short g;
        private final String h;

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

            case 5: // '\005'
                return e;
            }
        }

        public static e a(String s1)
        {
            return (e)f.get(s1);
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
            return (e)Enum.valueOf(u/aly/av$e, s1);
        }

        public static e[] values()
        {
            return (e[])i.clone();
        }

        public short a()
        {
            return g;
        }

        public String b()
        {
            return h;
        }

        static 
        {
            a = new e("NAME", 0, (short)1, "name");
            b = new e("PROPERTIES", 1, (short)2, "properties");
            c = new e("DURATION", 2, (short)3, "duration");
            d = new e("ACC", 3, (short)4, "acc");
            e = new e("TS", 4, (short)5, "ts");
            i = (new e[] {
                a, b, c, d, e
            });
            f = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/av$e).iterator(); iterator.hasNext(); f.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            g = word0;
            h = s2;
        }
    }


    public static final Map f;
    private static final dl g = new dl("Event");
    private static final db h = new db("name", (byte)11, (short)1);
    private static final db i = new db("properties", (byte)13, (short)2);
    private static final db j = new db("duration", (byte)10, (short)3);
    private static final db k = new db("acc", (byte)8, (short)4);
    private static final db l = new db("ts", (byte)10, (short)5);
    private static final Map m;
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    public String a;
    public Map b;
    public long c;
    public int d;
    public long e;
    private byte q;
    private e r[];

    public av()
    {
        q = 0;
        r = (new e[] {
            e.c, e.d
        });
    }

    public av(String s1, Map map, long l1)
    {
        this();
        a = s1;
        b = map;
        e = l1;
        e(true);
    }

    public av(av av1)
    {
        q = 0;
        r = (new e[] {
            e.c, e.d
        });
        q = av1.q;
        if (av1.e())
        {
            a = av1.a;
        }
        if (av1.j())
        {
            HashMap hashmap = new HashMap();
            java.util.Map.Entry entry;
            for (Iterator iterator = av1.b.entrySet().iterator(); iterator.hasNext(); hashmap.put((String)entry.getKey(), new bh((bh)entry.getValue())))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            b = hashmap;
        }
        c = av1.c;
        d = av1.d;
        e = av1.e;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            q = 0;
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

    static dl u()
    {
        return g;
    }

    static db v()
    {
        return h;
    }

    static db w()
    {
        return i;
    }

    static db x()
    {
        return j;
    }

    static db y()
    {
        return k;
    }

    static db z()
    {
        return l;
    }

    public av a()
    {
        return new av(this);
    }

    public av a(int i1)
    {
        d = i1;
        d(true);
        return this;
    }

    public av a(long l1)
    {
        c = l1;
        c(true);
        return this;
    }

    public av a(String s1)
    {
        a = s1;
        return this;
    }

    public av a(Map map)
    {
        b = map;
        return this;
    }

    public void a(String s1, bh bh1)
    {
        if (b == null)
        {
            b = new HashMap();
        }
        b.put(s1, bh1);
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)m.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public av b(long l1)
    {
        e = l1;
        e(true);
        return this;
    }

    public co b(int i1)
    {
        return c(i1);
    }

    public void b()
    {
        a = null;
        b = null;
        c(false);
        c = 0L;
        d(false);
        d = 0;
        e(false);
        e = 0L;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)m.get(dg1.D())).b().a(dg1, this);
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

    public e c(int i1)
    {
        return e.a(i1);
    }

    public void c(boolean flag)
    {
        q = ce.a(q, 0, flag);
    }

    public void d()
    {
        a = null;
    }

    public void d(boolean flag)
    {
        q = ce.a(q, 1, flag);
    }

    public void e(boolean flag)
    {
        q = ce.a(q, 2, flag);
    }

    public boolean e()
    {
        return a != null;
    }

    public int f()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.size();
        }
    }

    public ch g()
    {
        return a();
    }

    public Map h()
    {
        return b;
    }

    public void i()
    {
        b = null;
    }

    public boolean j()
    {
        return b != null;
    }

    public long k()
    {
        return c;
    }

    public void l()
    {
        q = ce.b(q, 0);
    }

    public boolean m()
    {
        return ce.a(q, 0);
    }

    public int n()
    {
        return d;
    }

    public void o()
    {
        q = ce.b(q, 1);
    }

    public boolean p()
    {
        return ce.a(q, 1);
    }

    public long q()
    {
        return e;
    }

    public void r()
    {
        q = ce.b(q, 2);
    }

    public boolean s()
    {
        return ce.a(q, 2);
    }

    public void t()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'name' was not present! Struct: ").append(toString()).toString());
        }
        if (b == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'properties' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Event(");
        stringbuilder.append("name:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("properties:");
        if (b == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(b);
        }
        if (m())
        {
            stringbuilder.append(", ");
            stringbuilder.append("duration:");
            stringbuilder.append(c);
        }
        if (p())
        {
            stringbuilder.append(", ");
            stringbuilder.append("acc:");
            stringbuilder.append(d);
        }
        stringbuilder.append(", ");
        stringbuilder.append("ts:");
        stringbuilder.append(e);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        m = new HashMap();
        m.put(u/aly/dq, new b());
        m.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/av$e);
        enummap.put(e.a, new ct("name", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("properties", (byte)1, new cw((byte)13, new cu((byte)11), new cy((byte)12, u/aly/bh))));
        enummap.put(e.c, new ct("duration", (byte)2, new cu((byte)10)));
        enummap.put(e.d, new ct("acc", (byte)2, new cu((byte)8)));
        enummap.put(e.e, new ct("ts", (byte)1, new cu((byte)10)));
        f = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/av, f);
    }
}
