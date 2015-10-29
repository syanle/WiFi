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
//            cy, at, av, cn, 
//            da, ds, dg, dp, 
//            do, dh, co, dj, 
//            dc, dm

public class bc
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bc bc1)
            throws cn
        {
            dg1.j();
_L7:
            Object obj;
            obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                bc1.v();
                return;
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 4: default 60
        //                       1 75
        //                       2 111
        //                       3 211
        //                       4 311;
               goto _L1 _L2 _L3 _L4 _L5
_L5:
            break MISSING_BLOCK_LABEL_311;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L8:
            dg1.m();
            if (true) goto _L7; else goto _L6
_L6:
            if (((db) (obj)).b == 11)
            {
                bc1.a = dg1.z();
                bc1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L3:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bc1.b = new ArrayList(((dc) (obj)).b);
                for (int i1 = 0; i1 < ((dc) (obj)).b; i1++)
                {
                    at at1 = new at();
                    at1.a(dg1);
                    bc1.b.add(at1);
                }

                dg1.q();
                bc1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
_L4:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bc1.c = new ArrayList(((dc) (obj)).b);
                for (int j1 = 0; j1 < ((dc) (obj)).b; j1++)
                {
                    av av1 = new av();
                    av1.a(dg1);
                    bc1.c.add(av1);
                }

                dg1.q();
                bc1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bc1.d = new ArrayList(((dc) (obj)).b);
                for (int k1 = 0; k1 < ((dc) (obj)).b; k1++)
                {
                    av av2 = new av();
                    av2.a(dg1);
                    bc1.d.add(av2);
                }

                dg1.q();
                bc1.d(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L8
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bc)ch1);
        }

        public void b(dg dg1, bc bc1)
            throws cn
        {
            bc1.v();
            dg1.a(bc.w());
            if (bc1.a != null)
            {
                dg1.a(bc.x());
                dg1.a(bc1.a);
                dg1.c();
            }
            if (bc1.b != null && bc1.k())
            {
                dg1.a(bc.y());
                dg1.a(new dc((byte)12, bc1.b.size()));
                for (Iterator iterator = bc1.b.iterator(); iterator.hasNext(); ((at)iterator.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (bc1.c != null && bc1.p())
            {
                dg1.a(bc.z());
                dg1.a(new dc((byte)12, bc1.c.size()));
                for (Iterator iterator1 = bc1.c.iterator(); iterator1.hasNext(); ((av)iterator1.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (bc1.d != null && bc1.u())
            {
                dg1.a(bc.A());
                dg1.a(new dc((byte)12, bc1.d.size()));
                for (bc1 = bc1.d.iterator(); bc1.hasNext(); ((av)bc1.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bc)ch1);
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

        public void a(dg dg1, bc bc1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(bc1.a);
            BitSet bitset = new BitSet();
            if (bc1.k())
            {
                bitset.set(0);
            }
            if (bc1.p())
            {
                bitset.set(1);
            }
            if (bc1.u())
            {
                bitset.set(2);
            }
            dg1.a(bitset, 3);
            if (bc1.k())
            {
                dg1.a(bc1.b.size());
                for (Iterator iterator = bc1.b.iterator(); iterator.hasNext(); ((at)iterator.next()).b(dg1)) { }
            }
            if (bc1.p())
            {
                dg1.a(bc1.c.size());
                for (Iterator iterator1 = bc1.c.iterator(); iterator1.hasNext(); ((av)iterator1.next()).b(dg1)) { }
            }
            if (bc1.u())
            {
                dg1.a(bc1.d.size());
                for (bc1 = bc1.d.iterator(); bc1.hasNext(); ((av)bc1.next()).b(dg1)) { }
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bc)ch1);
        }

        public void b(dg dg1, bc bc1)
            throws cn
        {
            boolean flag = false;
            dg1 = (dm)dg1;
            bc1.a = dg1.z();
            bc1.a(true);
            BitSet bitset = dg1.b(3);
            if (bitset.get(0))
            {
                dc dc2 = new dc((byte)12, dg1.w());
                bc1.b = new ArrayList(dc2.b);
                for (int i1 = 0; i1 < dc2.b; i1++)
                {
                    at at1 = new at();
                    at1.a(dg1);
                    bc1.b.add(at1);
                }

                bc1.b(true);
            }
            if (bitset.get(1))
            {
                dc dc3 = new dc((byte)12, dg1.w());
                bc1.c = new ArrayList(dc3.b);
                for (int j1 = 0; j1 < dc3.b; j1++)
                {
                    av av2 = new av();
                    av2.a(dg1);
                    bc1.c.add(av2);
                }

                bc1.c(true);
            }
            if (bitset.get(2))
            {
                dc dc1 = new dc((byte)12, dg1.w());
                bc1.d = new ArrayList(dc1.b);
                for (int k1 = ((flag) ? 1 : 0); k1 < dc1.b; k1++)
                {
                    av av1 = new av();
                    av1.a(dg1);
                    bc1.d.add(av1);
                }

                bc1.d(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bc)ch1);
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
        private static final Map e;
        private static final e h[];
        private final short f;
        private final String g;

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
            }
        }

        public static e a(String s1)
        {
            return (e)e.get(s1);
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
            return (e)Enum.valueOf(u/aly/bc$e, s1);
        }

        public static e[] values()
        {
            return (e[])h.clone();
        }

        public short a()
        {
            return f;
        }

        public String b()
        {
            return g;
        }

        static 
        {
            a = new e("ID", 0, (short)1, "id");
            b = new e("ERRORS", 1, (short)2, "errors");
            c = new e("EVENTS", 2, (short)3, "events");
            d = new e("GAME_EVENTS", 3, (short)4, "game_events");
            h = (new e[] {
                a, b, c, d
            });
            e = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bc$e).iterator(); iterator.hasNext(); e.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            f = word0;
            g = s2;
        }
    }


    public static final Map e;
    private static final dl f = new dl("InstantMsg");
    private static final db g = new db("id", (byte)11, (short)1);
    private static final db h = new db("errors", (byte)15, (short)2);
    private static final db i = new db("events", (byte)15, (short)3);
    private static final db j = new db("game_events", (byte)15, (short)4);
    private static final Map k;
    public String a;
    public List b;
    public List c;
    public List d;
    private e l[];

    public bc()
    {
        l = (new e[] {
            e.b, e.c, e.d
        });
    }

    public bc(String s1)
    {
        this();
        a = s1;
    }

    public bc(bc bc1)
    {
        l = (new e[] {
            e.b, e.c, e.d
        });
        if (bc1.e())
        {
            a = bc1.a;
        }
        if (bc1.k())
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = bc1.b.iterator(); iterator.hasNext(); arraylist.add(new at((at)iterator.next()))) { }
            b = arraylist;
        }
        if (bc1.p())
        {
            ArrayList arraylist1 = new ArrayList();
            for (Iterator iterator1 = bc1.c.iterator(); iterator1.hasNext(); arraylist1.add(new av((av)iterator1.next()))) { }
            c = arraylist1;
        }
        if (bc1.u())
        {
            ArrayList arraylist2 = new ArrayList();
            for (bc1 = bc1.d.iterator(); bc1.hasNext(); arraylist2.add(new av((av)bc1.next()))) { }
            d = arraylist2;
        }
    }

    static db A()
    {
        return j;
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

    static dl w()
    {
        return f;
    }

    static db x()
    {
        return g;
    }

    static db y()
    {
        return h;
    }

    static db z()
    {
        return i;
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public bc a()
    {
        return new bc(this);
    }

    public bc a(String s1)
    {
        a = s1;
        return this;
    }

    public bc a(List list)
    {
        b = list;
        return this;
    }

    public void a(at at1)
    {
        if (b == null)
        {
            b = new ArrayList();
        }
        b.add(at1);
    }

    public void a(av av1)
    {
        if (c == null)
        {
            c = new ArrayList();
        }
        c.add(av1);
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)k.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public bc b(List list)
    {
        c = list;
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
        c = null;
        d = null;
    }

    public void b(av av1)
    {
        if (d == null)
        {
            d = new ArrayList();
        }
        d.add(av1);
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)k.get(dg1.D())).b().a(dg1, this);
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

    public bc c(List list)
    {
        d = list;
        return this;
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
        a = null;
    }

    public void d(boolean flag)
    {
        if (!flag)
        {
            d = null;
        }
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

    public Iterator h()
    {
        if (b == null)
        {
            return null;
        } else
        {
            return b.iterator();
        }
    }

    public List i()
    {
        return b;
    }

    public void j()
    {
        b = null;
    }

    public boolean k()
    {
        return b != null;
    }

    public int l()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.size();
        }
    }

    public Iterator m()
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.iterator();
        }
    }

    public List n()
    {
        return c;
    }

    public void o()
    {
        c = null;
    }

    public boolean p()
    {
        return c != null;
    }

    public int q()
    {
        if (d == null)
        {
            return 0;
        } else
        {
            return d.size();
        }
    }

    public Iterator r()
    {
        if (d == null)
        {
            return null;
        } else
        {
            return d.iterator();
        }
    }

    public List s()
    {
        return d;
    }

    public void t()
    {
        d = null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("InstantMsg(");
        stringbuilder.append("id:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        if (k())
        {
            stringbuilder.append(", ");
            stringbuilder.append("errors:");
            if (b == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(b);
            }
        }
        if (p())
        {
            stringbuilder.append(", ");
            stringbuilder.append("events:");
            if (c == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(c);
            }
        }
        if (u())
        {
            stringbuilder.append(", ");
            stringbuilder.append("game_events:");
            if (d == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(d);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    public boolean u()
    {
        return d != null;
    }

    public void v()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'id' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    static 
    {
        k = new HashMap();
        k.put(u/aly/dq, new b());
        k.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bc$e);
        enummap.put(e.a, new ct("id", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("errors", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/at))));
        enummap.put(e.c, new ct("events", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/av))));
        enummap.put(e.d, new ct("game_events", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/av))));
        e = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bc, e);
    }
}
