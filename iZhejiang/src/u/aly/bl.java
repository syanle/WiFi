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

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cu, cv, 
//            cy, bg, be, bm, 
//            cn, da, ds, dh, 
//            dg, dp, do, ce, 
//            co, dj, dc, dm

public class bl
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bl bl1)
            throws cn
        {
            dg1.j();
_L10:
            Object obj;
            obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                if (!bl1.i())
                {
                    throw new dh((new StringBuilder()).append("Required field 'start_time' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                }
                break MISSING_BLOCK_LABEL_510;
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 7: default 104
        //                       1 119
        //                       2 155
        //                       3 191
        //                       4 227
        //                       5 263
        //                       6 363
        //                       7 463;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
            break MISSING_BLOCK_LABEL_463;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L11:
            dg1.m();
            if (true) goto _L10; else goto _L9
_L9:
            if (((db) (obj)).b == 11)
            {
                bl1.a = dg1.z();
                bl1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
_L3:
            if (((db) (obj)).b == 10)
            {
                bl1.b = dg1.x();
                bl1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
_L4:
            if (((db) (obj)).b == 10)
            {
                bl1.c = dg1.x();
                bl1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
_L5:
            if (((db) (obj)).b == 10)
            {
                bl1.d = dg1.x();
                bl1.d(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
_L6:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bl1.e = new ArrayList(((dc) (obj)).b);
                for (int i1 = 0; i1 < ((dc) (obj)).b; i1++)
                {
                    bg bg1 = new bg();
                    bg1.a(dg1);
                    bl1.e.add(bg1);
                }

                dg1.q();
                bl1.e(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
_L7:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bl1.f = new ArrayList(((dc) (obj)).b);
                for (int j1 = 0; j1 < ((dc) (obj)).b; j1++)
                {
                    be be1 = new be();
                    be1.a(dg1);
                    bl1.f.add(be1);
                }

                dg1.q();
                bl1.f(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
            if (((db) (obj)).b == 12)
            {
                bl1.g = new bm();
                bl1.g.a(dg1);
                bl1.g(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L11
            if (!bl1.l())
            {
                throw new dh((new StringBuilder()).append("Required field 'end_time' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            }
            if (!bl1.o())
            {
                throw new dh((new StringBuilder()).append("Required field 'duration' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            } else
            {
                bl1.C();
                return;
            }
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bl)ch1);
        }

        public void b(dg dg1, bl bl1)
            throws cn
        {
            bl1.C();
            dg1.a(bl.D());
            if (bl1.a != null)
            {
                dg1.a(bl.E());
                dg1.a(bl1.a);
                dg1.c();
            }
            dg1.a(bl.F());
            dg1.a(bl1.b);
            dg1.c();
            dg1.a(bl.G());
            dg1.a(bl1.c);
            dg1.c();
            dg1.a(bl.H());
            dg1.a(bl1.d);
            dg1.c();
            if (bl1.e != null && bl1.t())
            {
                dg1.a(bl.I());
                dg1.a(new dc((byte)12, bl1.e.size()));
                for (Iterator iterator = bl1.e.iterator(); iterator.hasNext(); ((bg)iterator.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (bl1.f != null && bl1.y())
            {
                dg1.a(bl.J());
                dg1.a(new dc((byte)12, bl1.f.size()));
                for (Iterator iterator1 = bl1.f.iterator(); iterator1.hasNext(); ((be)iterator1.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (bl1.g != null && bl1.B())
            {
                dg1.a(bl.K());
                bl1.g.b(dg1);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bl)ch1);
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

        public void a(dg dg1, bl bl1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(bl1.a);
            dg1.a(bl1.b);
            dg1.a(bl1.c);
            dg1.a(bl1.d);
            BitSet bitset = new BitSet();
            if (bl1.t())
            {
                bitset.set(0);
            }
            if (bl1.y())
            {
                bitset.set(1);
            }
            if (bl1.B())
            {
                bitset.set(2);
            }
            dg1.a(bitset, 3);
            if (bl1.t())
            {
                dg1.a(bl1.e.size());
                for (Iterator iterator = bl1.e.iterator(); iterator.hasNext(); ((bg)iterator.next()).b(dg1)) { }
            }
            if (bl1.y())
            {
                dg1.a(bl1.f.size());
                for (Iterator iterator1 = bl1.f.iterator(); iterator1.hasNext(); ((be)iterator1.next()).b(dg1)) { }
            }
            if (bl1.B())
            {
                bl1.g.b(dg1);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bl)ch1);
        }

        public void b(dg dg1, bl bl1)
            throws cn
        {
            boolean flag = false;
            dg1 = (dm)dg1;
            bl1.a = dg1.z();
            bl1.a(true);
            bl1.b = dg1.x();
            bl1.b(true);
            bl1.c = dg1.x();
            bl1.c(true);
            bl1.d = dg1.x();
            bl1.d(true);
            BitSet bitset = dg1.b(3);
            if (bitset.get(0))
            {
                dc dc1 = new dc((byte)12, dg1.w());
                bl1.e = new ArrayList(dc1.b);
                for (int i1 = 0; i1 < dc1.b; i1++)
                {
                    bg bg1 = new bg();
                    bg1.a(dg1);
                    bl1.e.add(bg1);
                }

                bl1.e(true);
            }
            if (bitset.get(1))
            {
                dc dc2 = new dc((byte)12, dg1.w());
                bl1.f = new ArrayList(dc2.b);
                for (int j1 = ((flag) ? 1 : 0); j1 < dc2.b; j1++)
                {
                    be be1 = new be();
                    be1.a(dg1);
                    bl1.f.add(be1);
                }

                bl1.f(true);
            }
            if (bitset.get(2))
            {
                bl1.g = new bm();
                bl1.g.a(dg1);
                bl1.g(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bl)ch1);
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
        public static final e f;
        public static final e g;
        private static final Map h;
        private static final e k[];
        private final short i;
        private final String j;

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

            case 6: // '\006'
                return f;

            case 7: // '\007'
                return g;
            }
        }

        public static e a(String s1)
        {
            return (e)h.get(s1);
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
            return (e)Enum.valueOf(u/aly/bl$e, s1);
        }

        public static e[] values()
        {
            return (e[])k.clone();
        }

        public short a()
        {
            return i;
        }

        public String b()
        {
            return j;
        }

        static 
        {
            a = new e("ID", 0, (short)1, "id");
            b = new e("START_TIME", 1, (short)2, "start_time");
            c = new e("END_TIME", 2, (short)3, "end_time");
            d = new e("DURATION", 3, (short)4, "duration");
            e = new e("PAGES", 4, (short)5, "pages");
            f = new e("LOCATIONS", 5, (short)6, "locations");
            g = new e("TRAFFIC", 6, (short)7, "traffic");
            k = (new e[] {
                a, b, c, d, e, f, g
            });
            h = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bl$e).iterator(); iterator.hasNext(); h.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            i = word0;
            j = s2;
        }
    }


    public static final Map h;
    private static final dl i = new dl("Session");
    private static final db j = new db("id", (byte)11, (short)1);
    private static final db k = new db("start_time", (byte)10, (short)2);
    private static final db l = new db("end_time", (byte)10, (short)3);
    private static final db m = new db("duration", (byte)10, (short)4);
    private static final db n = new db("pages", (byte)15, (short)5);
    private static final db o = new db("locations", (byte)15, (short)6);
    private static final db p = new db("traffic", (byte)12, (short)7);
    private static final Map q;
    private static final int r = 0;
    private static final int s = 1;
    private static final int t = 2;
    public String a;
    public long b;
    public long c;
    public long d;
    public List e;
    public List f;
    public bm g;
    private byte u;
    private e v[];

    public bl()
    {
        u = 0;
        v = (new e[] {
            e.e, e.f, e.g
        });
    }

    public bl(String s1, long l1, long l2, long l3)
    {
        this();
        a = s1;
        b = l1;
        b(true);
        c = l2;
        c(true);
        d = l3;
        d(true);
    }

    public bl(bl bl1)
    {
        u = 0;
        v = (new e[] {
            e.e, e.f, e.g
        });
        u = bl1.u;
        if (bl1.e())
        {
            a = bl1.a;
        }
        b = bl1.b;
        c = bl1.c;
        d = bl1.d;
        if (bl1.t())
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = bl1.e.iterator(); iterator.hasNext(); arraylist.add(new bg((bg)iterator.next()))) { }
            e = arraylist;
        }
        if (bl1.y())
        {
            ArrayList arraylist1 = new ArrayList();
            for (Iterator iterator1 = bl1.f.iterator(); iterator1.hasNext(); arraylist1.add(new be((be)iterator1.next()))) { }
            f = arraylist1;
        }
        if (bl1.B())
        {
            g = new bm(bl1.g);
        }
    }

    static dl D()
    {
        return i;
    }

    static db E()
    {
        return j;
    }

    static db F()
    {
        return k;
    }

    static db G()
    {
        return l;
    }

    static db H()
    {
        return m;
    }

    static db I()
    {
        return n;
    }

    static db J()
    {
        return o;
    }

    static db K()
    {
        return p;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            u = 0;
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

    public void A()
    {
        g = null;
    }

    public boolean B()
    {
        return g != null;
    }

    public void C()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'id' was not present! Struct: ").append(toString()).toString());
        }
        if (g != null)
        {
            g.j();
        }
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public bl a()
    {
        return new bl(this);
    }

    public bl a(long l1)
    {
        b = l1;
        b(true);
        return this;
    }

    public bl a(String s1)
    {
        a = s1;
        return this;
    }

    public bl a(List list)
    {
        e = list;
        return this;
    }

    public bl a(bm bm1)
    {
        g = bm1;
        return this;
    }

    public void a(be be1)
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        f.add(be1);
    }

    public void a(bg bg1)
    {
        if (e == null)
        {
            e = new ArrayList();
        }
        e.add(bg1);
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)q.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public bl b(long l1)
    {
        c = l1;
        c(true);
        return this;
    }

    public bl b(List list)
    {
        f = list;
        return this;
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
        c(false);
        c = 0L;
        d(false);
        d = 0L;
        e = null;
        f = null;
        g = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)q.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        u = ce.a(u, 0, flag);
    }

    public String c()
    {
        return a;
    }

    public bl c(long l1)
    {
        d = l1;
        d(true);
        return this;
    }

    public void c(boolean flag)
    {
        u = ce.a(u, 1, flag);
    }

    public void d()
    {
        a = null;
    }

    public void d(boolean flag)
    {
        u = ce.a(u, 2, flag);
    }

    public void e(boolean flag)
    {
        if (!flag)
        {
            e = null;
        }
    }

    public boolean e()
    {
        return a != null;
    }

    public long f()
    {
        return b;
    }

    public void f(boolean flag)
    {
        if (!flag)
        {
            f = null;
        }
    }

    public ch g()
    {
        return a();
    }

    public void g(boolean flag)
    {
        if (!flag)
        {
            g = null;
        }
    }

    public void h()
    {
        u = ce.b(u, 0);
    }

    public boolean i()
    {
        return ce.a(u, 0);
    }

    public long j()
    {
        return c;
    }

    public void k()
    {
        u = ce.b(u, 1);
    }

    public boolean l()
    {
        return ce.a(u, 1);
    }

    public long m()
    {
        return d;
    }

    public void n()
    {
        u = ce.b(u, 2);
    }

    public boolean o()
    {
        return ce.a(u, 2);
    }

    public int p()
    {
        if (e == null)
        {
            return 0;
        } else
        {
            return e.size();
        }
    }

    public Iterator q()
    {
        if (e == null)
        {
            return null;
        } else
        {
            return e.iterator();
        }
    }

    public List r()
    {
        return e;
    }

    public void s()
    {
        e = null;
    }

    public boolean t()
    {
        return e != null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Session(");
        stringbuilder.append("id:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("start_time:");
        stringbuilder.append(b);
        stringbuilder.append(", ");
        stringbuilder.append("end_time:");
        stringbuilder.append(c);
        stringbuilder.append(", ");
        stringbuilder.append("duration:");
        stringbuilder.append(d);
        if (t())
        {
            stringbuilder.append(", ");
            stringbuilder.append("pages:");
            if (e == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(e);
            }
        }
        if (y())
        {
            stringbuilder.append(", ");
            stringbuilder.append("locations:");
            if (f == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(f);
            }
        }
        if (B())
        {
            stringbuilder.append(", ");
            stringbuilder.append("traffic:");
            if (g == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(g);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    public int u()
    {
        if (f == null)
        {
            return 0;
        } else
        {
            return f.size();
        }
    }

    public Iterator v()
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.iterator();
        }
    }

    public List w()
    {
        return f;
    }

    public void x()
    {
        f = null;
    }

    public boolean y()
    {
        return f != null;
    }

    public bm z()
    {
        return g;
    }

    static 
    {
        q = new HashMap();
        q.put(u/aly/dq, new b());
        q.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bl$e);
        enummap.put(e.a, new ct("id", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("start_time", (byte)1, new cu((byte)10)));
        enummap.put(e.c, new ct("end_time", (byte)1, new cu((byte)10)));
        enummap.put(e.d, new ct("duration", (byte)1, new cu((byte)10)));
        enummap.put(e.e, new ct("pages", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/bg))));
        enummap.put(e.f, new ct("locations", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/be))));
        enummap.put(e.g, new ct("traffic", (byte)2, new cy((byte)12, u/aly/bm)));
        h = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bl, h);
    }
}
