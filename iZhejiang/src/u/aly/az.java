// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cw, cu, 
//            cy, ay, cv, ax, 
//            cn, da, ds, dg, 
//            dp, do, dh, co, 
//            dj, dd, dc, dm

public class az
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, az az1)
            throws cn
        {
            dg1.j();
_L6:
            Object obj;
            obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                az1.p();
                return;
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 3: default 56
        //                       1 71
        //                       2 181
        //                       3 281;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_281;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L7:
            dg1.m();
            if (true) goto _L6; else goto _L5
_L5:
            if (((db) (obj)).b == 13)
            {
                obj = dg1.n();
                az1.a = new HashMap(((dd) (obj)).c * 2);
                for (int i1 = 0; i1 < ((dd) (obj)).c; i1++)
                {
                    String s1 = dg1.z();
                    ay ay1 = new ay();
                    ay1.a(dg1);
                    az1.a.put(s1, ay1);
                }

                dg1.o();
                az1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L7
_L3:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                az1.b = new ArrayList(((dc) (obj)).b);
                for (int j1 = 0; j1 < ((dc) (obj)).b; j1++)
                {
                    ax ax1 = new ax();
                    ax1.a(dg1);
                    az1.b.add(ax1);
                }

                dg1.q();
                az1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L7
            if (((db) (obj)).b == 11)
            {
                az1.c = dg1.z();
                az1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L7
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (az)ch1);
        }

        public void b(dg dg1, az az1)
            throws cn
        {
            az1.p();
            dg1.a(az.q());
            if (az1.a != null)
            {
                dg1.a(az.r());
                dg1.a(new dd((byte)11, (byte)12, az1.a.size()));
                java.util.Map.Entry entry;
                for (Iterator iterator = az1.a.entrySet().iterator(); iterator.hasNext(); ((ay)entry.getValue()).b(dg1))
                {
                    entry = (java.util.Map.Entry)iterator.next();
                    dg1.a((String)entry.getKey());
                }

                dg1.e();
                dg1.c();
            }
            if (az1.b != null && az1.l())
            {
                dg1.a(az.s());
                dg1.a(new dc((byte)12, az1.b.size()));
                for (Iterator iterator1 = az1.b.iterator(); iterator1.hasNext(); ((ax)iterator1.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (az1.c != null && az1.o())
            {
                dg1.a(az.t());
                dg1.a(az1.c);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (az)ch1);
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

        public void a(dg dg1, az az1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(az1.a.size());
            java.util.Map.Entry entry;
            for (Iterator iterator = az1.a.entrySet().iterator(); iterator.hasNext(); ((ay)entry.getValue()).b(dg1))
            {
                entry = (java.util.Map.Entry)iterator.next();
                dg1.a((String)entry.getKey());
            }

            BitSet bitset = new BitSet();
            if (az1.l())
            {
                bitset.set(0);
            }
            if (az1.o())
            {
                bitset.set(1);
            }
            dg1.a(bitset, 2);
            if (az1.l())
            {
                dg1.a(az1.b.size());
                for (Iterator iterator1 = az1.b.iterator(); iterator1.hasNext(); ((ax)iterator1.next()).b(dg1)) { }
            }
            if (az1.o())
            {
                dg1.a(az1.c);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (az)ch1);
        }

        public void b(dg dg1, az az1)
            throws cn
        {
            boolean flag = false;
            dg1 = (dm)dg1;
            Object obj = new dd((byte)11, (byte)12, dg1.w());
            az1.a = new HashMap(((dd) (obj)).c * 2);
            for (int i1 = 0; i1 < ((dd) (obj)).c; i1++)
            {
                String s1 = dg1.z();
                ay ay1 = new ay();
                ay1.a(dg1);
                az1.a.put(s1, ay1);
            }

            az1.a(true);
            obj = dg1.b(2);
            if (((BitSet) (obj)).get(0))
            {
                dc dc1 = new dc((byte)12, dg1.w());
                az1.b = new ArrayList(dc1.b);
                for (int j1 = ((flag) ? 1 : 0); j1 < dc1.b; j1++)
                {
                    ax ax1 = new ax();
                    ax1.a(dg1);
                    az1.b.add(ax1);
                }

                az1.b(true);
            }
            if (((BitSet) (obj)).get(1))
            {
                az1.c = dg1.z();
                az1.c(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (az)ch1);
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

        public static e a(String s1)
        {
            return (e)d.get(s1);
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
            return (e)Enum.valueOf(u/aly/az$e, s1);
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
            a = new e("SNAPSHOTS", 0, (short)1, "snapshots");
            b = new e("JOURNALS", 1, (short)2, "journals");
            c = new e("CHECKSUM", 2, (short)3, "checksum");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/az$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            e = word0;
            f = s2;
        }
    }


    public static final Map d;
    private static final dl e = new dl("IdTracking");
    private static final db f = new db("snapshots", (byte)13, (short)1);
    private static final db g = new db("journals", (byte)15, (short)2);
    private static final db h = new db("checksum", (byte)11, (short)3);
    private static final Map i;
    public Map a;
    public List b;
    public String c;
    private e j[];

    public az()
    {
        j = (new e[] {
            e.b, e.c
        });
    }

    public az(Map map)
    {
        this();
        a = map;
    }

    public az(az az1)
    {
        j = (new e[] {
            e.b, e.c
        });
        if (az1.f())
        {
            HashMap hashmap = new HashMap();
            java.util.Map.Entry entry;
            for (Iterator iterator = az1.a.entrySet().iterator(); iterator.hasNext(); hashmap.put((String)entry.getKey(), new ay((ay)entry.getValue())))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            a = hashmap;
        }
        if (az1.l())
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator1 = az1.b.iterator(); iterator1.hasNext(); arraylist.add(new ax((ax)iterator1.next()))) { }
            b = arraylist;
        }
        if (az1.o())
        {
            c = az1.c;
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

    static dl q()
    {
        return e;
    }

    static db r()
    {
        return f;
    }

    static db s()
    {
        return g;
    }

    static db t()
    {
        return h;
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public az a()
    {
        return new az(this);
    }

    public az a(String s1)
    {
        c = s1;
        return this;
    }

    public az a(List list)
    {
        b = list;
        return this;
    }

    public az a(Map map)
    {
        a = map;
        return this;
    }

    public void a(String s1, ay ay1)
    {
        if (a == null)
        {
            a = new HashMap();
        }
        a.put(s1, ay1);
    }

    public void a(ax ax1)
    {
        if (b == null)
        {
            b = new ArrayList();
        }
        b.add(ax1);
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
        return a(i1);
    }

    public void b()
    {
        a = null;
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
        if (!flag)
        {
            b = null;
        }
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
        if (b == null)
        {
            return 0;
        } else
        {
            return b.size();
        }
    }

    public Iterator i()
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.iterator();
        }
    }

    public List j()
    {
        return b;
    }

    public void k()
    {
        b = null;
    }

    public boolean l()
    {
        return b != null;
    }

    public String m()
    {
        return c;
    }

    public void n()
    {
        c = null;
    }

    public boolean o()
    {
        return c != null;
    }

    public void p()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'snapshots' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("IdTracking(");
        stringbuilder.append("snapshots:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        if (l())
        {
            stringbuilder.append(", ");
            stringbuilder.append("journals:");
            if (b == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(b);
            }
        }
        if (o())
        {
            stringbuilder.append(", ");
            stringbuilder.append("checksum:");
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
        EnumMap enummap = new EnumMap(u/aly/az$e);
        enummap.put(e.a, new ct("snapshots", (byte)1, new cw((byte)13, new cu((byte)11), new cy((byte)12, u/aly/ay))));
        enummap.put(e.b, new ct("journals", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/ax))));
        enummap.put(e.c, new ct("checksum", (byte)2, new cu((byte)11)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/az, d);
    }
}
