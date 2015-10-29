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
//            cn, da, ds, dg, 
//            dp, do, ce, dh, 
//            co, dj, dd, dm

public class as
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, as as1)
            throws cn
        {
            dg1.j();
_L7:
            Object obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                String s1;
                String s2;
                int i1;
                if (!as1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    as1.t();
                    return;
                }
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 5: default 96
        //                       1 111
        //                       2 147
        //                       3 183
        //                       4 284
        //                       5 320;
               goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
            break MISSING_BLOCK_LABEL_320;
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L8:
            dg1.m();
              goto _L7
_L2:
            if (((db) (obj)).b == 10)
            {
                as1.a = dg1.x();
                as1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L3:
            if (((db) (obj)).b == 11)
            {
                as1.b = dg1.z();
                as1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L4:
            if (((db) (obj)).b == 13)
            {
                obj = dg1.n();
                as1.c = new HashMap(((dd) (obj)).c * 2);
                for (i1 = 0; i1 < ((dd) (obj)).c; i1++)
                {
                    s1 = dg1.z();
                    s2 = dg1.z();
                    as1.c.put(s1, s2);
                }

                dg1.o();
                as1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L5:
            if (((db) (obj)).b == 10)
            {
                as1.d = dg1.x();
                as1.d(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
            if (((db) (obj)).b == 8)
            {
                as1.e = dg1.w();
                as1.e(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (as)ch1);
        }

        public void b(dg dg1, as as1)
            throws cn
        {
            as1.t();
            dg1.a(as.u());
            dg1.a(as.v());
            dg1.a(as1.a);
            dg1.c();
            if (as1.b != null)
            {
                dg1.a(as.w());
                dg1.a(as1.b);
                dg1.c();
            }
            if (as1.c != null)
            {
                dg1.a(as.x());
                dg1.a(new dd((byte)11, (byte)11, as1.c.size()));
                java.util.Map.Entry entry;
                for (Iterator iterator = as1.c.entrySet().iterator(); iterator.hasNext(); dg1.a((String)entry.getValue()))
                {
                    entry = (java.util.Map.Entry)iterator.next();
                    dg1.a((String)entry.getKey());
                }

                dg1.e();
                dg1.c();
            }
            if (as1.p())
            {
                dg1.a(as.y());
                dg1.a(as1.d);
                dg1.c();
            }
            if (as1.s())
            {
                dg1.a(as.z());
                dg1.a(as1.e);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (as)ch1);
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

        public void a(dg dg1, as as1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(as1.a);
            dg1.a(as1.b);
            dg1.a(as1.c.size());
            java.util.Map.Entry entry;
            for (Iterator iterator = as1.c.entrySet().iterator(); iterator.hasNext(); dg1.a((String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
                dg1.a((String)entry.getKey());
            }

            BitSet bitset = new BitSet();
            if (as1.p())
            {
                bitset.set(0);
            }
            if (as1.s())
            {
                bitset.set(1);
            }
            dg1.a(bitset, 2);
            if (as1.p())
            {
                dg1.a(as1.d);
            }
            if (as1.s())
            {
                dg1.a(as1.e);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (as)ch1);
        }

        public void b(dg dg1, as as1)
            throws cn
        {
            dg1 = (dm)dg1;
            as1.a = dg1.x();
            as1.a(true);
            as1.b = dg1.z();
            as1.b(true);
            Object obj = new dd((byte)11, (byte)11, dg1.w());
            as1.c = new HashMap(((dd) (obj)).c * 2);
            for (int i1 = 0; i1 < ((dd) (obj)).c; i1++)
            {
                String s1 = dg1.z();
                String s2 = dg1.z();
                as1.c.put(s1, s2);
            }

            as1.c(true);
            obj = dg1.b(2);
            if (((BitSet) (obj)).get(0))
            {
                as1.d = dg1.x();
                as1.d(true);
            }
            if (((BitSet) (obj)).get(1))
            {
                as1.e = dg1.w();
                as1.e(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (as)ch1);
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
            return (e)Enum.valueOf(u/aly/as$e, s1);
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
            a = new e("TS", 0, (short)1, "ts");
            b = new e("NAME", 1, (short)2, "name");
            c = new e("CKV", 2, (short)3, "ckv");
            d = new e("DURATION", 3, (short)4, "duration");
            e = new e("ACC", 4, (short)5, "acc");
            i = (new e[] {
                a, b, c, d, e
            });
            f = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/as$e).iterator(); iterator.hasNext(); f.put(e1.b(), e1))
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
    private static final dl g = new dl("Ekv");
    private static final db h = new db("ts", (byte)10, (short)1);
    private static final db i = new db("name", (byte)11, (short)2);
    private static final db j = new db("ckv", (byte)13, (short)3);
    private static final db k = new db("duration", (byte)10, (short)4);
    private static final db l = new db("acc", (byte)8, (short)5);
    private static final Map m;
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    public long a;
    public String b;
    public Map c;
    public long d;
    public int e;
    private byte q;
    private e r[];

    public as()
    {
        q = 0;
        r = (new e[] {
            e.d, e.e
        });
    }

    public as(long l1, String s1, Map map)
    {
        this();
        a = l1;
        a(true);
        b = s1;
        c = map;
    }

    public as(as as1)
    {
        q = 0;
        r = (new e[] {
            e.d, e.e
        });
        q = as1.q;
        a = as1.a;
        if (as1.i())
        {
            b = as1.b;
        }
        if (as1.m())
        {
            HashMap hashmap = new HashMap();
            java.util.Map.Entry entry;
            for (Iterator iterator = as1.c.entrySet().iterator(); iterator.hasNext(); hashmap.put((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            c = hashmap;
        }
        d = as1.d;
        e = as1.e;
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

    public as a()
    {
        return new as(this);
    }

    public as a(int i1)
    {
        e = i1;
        e(true);
        return this;
    }

    public as a(long l1)
    {
        a = l1;
        a(true);
        return this;
    }

    public as a(String s1)
    {
        b = s1;
        return this;
    }

    public as a(Map map)
    {
        c = map;
        return this;
    }

    public void a(String s1, String s2)
    {
        if (c == null)
        {
            c = new HashMap();
        }
        c.put(s1, s2);
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)m.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        q = ce.a(q, 0, flag);
    }

    public as b(long l1)
    {
        d = l1;
        d(true);
        return this;
    }

    public co b(int i1)
    {
        return c(i1);
    }

    public void b()
    {
        a(false);
        a = 0L;
        b = null;
        c = null;
        d(false);
        d = 0L;
        e(false);
        e = 0;
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

    public long c()
    {
        return a;
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

    public void d()
    {
        q = ce.b(q, 0);
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
        return ce.a(q, 0);
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

    public int j()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.size();
        }
    }

    public Map k()
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

    public long n()
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

    public int q()
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
        if (b == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'name' was not present! Struct: ").append(toString()).toString());
        }
        if (c == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'ckv' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Ekv(");
        stringbuilder.append("ts:");
        stringbuilder.append(a);
        stringbuilder.append(", ");
        stringbuilder.append("name:");
        if (b == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(b);
        }
        stringbuilder.append(", ");
        stringbuilder.append("ckv:");
        if (c == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(c);
        }
        if (p())
        {
            stringbuilder.append(", ");
            stringbuilder.append("duration:");
            stringbuilder.append(d);
        }
        if (s())
        {
            stringbuilder.append(", ");
            stringbuilder.append("acc:");
            stringbuilder.append(e);
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        m = new HashMap();
        m.put(u/aly/dq, new b());
        m.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/as$e);
        enummap.put(e.a, new ct("ts", (byte)1, new cu((byte)10)));
        enummap.put(e.b, new ct("name", (byte)1, new cu((byte)11)));
        enummap.put(e.c, new ct("ckv", (byte)1, new cw((byte)13, new cu((byte)11), new cu((byte)11))));
        enummap.put(e.d, new ct("duration", (byte)2, new cu((byte)10)));
        enummap.put(e.e, new ct("acc", (byte)2, new cu((byte)8)));
        f = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/as, f);
    }
}
