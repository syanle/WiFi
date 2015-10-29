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
//            dr, ct, cu, cn, 
//            da, ds, dg, dp, 
//            do, ce, dh, co, 
//            dj, dm

public class ax
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ax ax1)
            throws cn
        {
            dg1.j();
_L6:
            db db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!ax1.o())
                {
                    throw new dh((new StringBuilder()).append("Required field 'ts' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    ax1.p();
                    return;
                }
            }
            db1.c;
            JVM INSTR tableswitch 1 4: default 92
        //                       1 107
        //                       2 143
        //                       3 179
        //                       4 215;
               goto _L1 _L2 _L3 _L4 _L5
_L5:
            break MISSING_BLOCK_LABEL_215;
_L1:
            dj.a(dg1, db1.b);
_L7:
            dg1.m();
              goto _L6
_L2:
            if (db1.b == 11)
            {
                ax1.a = dg1.z();
                ax1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
_L3:
            if (db1.b == 11)
            {
                ax1.b = dg1.z();
                ax1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
_L4:
            if (db1.b == 11)
            {
                ax1.c = dg1.z();
                ax1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (db1.b == 10)
            {
                ax1.d = dg1.x();
                ax1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ax)ch1);
        }

        public void b(dg dg1, ax ax1)
            throws cn
        {
            ax1.p();
            dg1.a(ax.q());
            if (ax1.a != null)
            {
                dg1.a(ax.r());
                dg1.a(ax1.a);
                dg1.c();
            }
            if (ax1.b != null && ax1.i())
            {
                dg1.a(ax.s());
                dg1.a(ax1.b);
                dg1.c();
            }
            if (ax1.c != null)
            {
                dg1.a(ax.t());
                dg1.a(ax1.c);
                dg1.c();
            }
            dg1.a(ax.u());
            dg1.a(ax1.d);
            dg1.c();
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ax)ch1);
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

        public void a(dg dg1, ax ax1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(ax1.a);
            dg1.a(ax1.c);
            dg1.a(ax1.d);
            BitSet bitset = new BitSet();
            if (ax1.i())
            {
                bitset.set(0);
            }
            dg1.a(bitset, 1);
            if (ax1.i())
            {
                dg1.a(ax1.b);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ax)ch1);
        }

        public void b(dg dg1, ax ax1)
            throws cn
        {
            dg1 = (dm)dg1;
            ax1.a = dg1.z();
            ax1.a(true);
            ax1.c = dg1.z();
            ax1.c(true);
            ax1.d = dg1.x();
            ax1.d(true);
            if (dg1.b(1).get(0))
            {
                ax1.b = dg1.z();
                ax1.b(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ax)ch1);
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
            return (e)Enum.valueOf(u/aly/ax$e, s1);
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
            a = new e("DOMAIN", 0, (short)1, "domain");
            b = new e("OLD_ID", 1, (short)2, "old_id");
            c = new e("NEW_ID", 2, (short)3, "new_id");
            d = new e("TS", 3, (short)4, "ts");
            h = (new e[] {
                a, b, c, d
            });
            e = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/ax$e).iterator(); iterator.hasNext(); e.put(e1.b(), e1))
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
    private static final dl f = new dl("IdJournal");
    private static final db g = new db("domain", (byte)11, (short)1);
    private static final db h = new db("old_id", (byte)11, (short)2);
    private static final db i = new db("new_id", (byte)11, (short)3);
    private static final db j = new db("ts", (byte)10, (short)4);
    private static final Map k;
    private static final int l = 0;
    public String a;
    public String b;
    public String c;
    public long d;
    private byte m;
    private e n[];

    public ax()
    {
        m = 0;
        n = (new e[] {
            e.b
        });
    }

    public ax(String s1, String s2, long l1)
    {
        this();
        a = s1;
        c = s2;
        d = l1;
        d(true);
    }

    public ax(ax ax1)
    {
        m = 0;
        n = (new e[] {
            e.b
        });
        m = ax1.m;
        if (ax1.e())
        {
            a = ax1.a;
        }
        if (ax1.i())
        {
            b = ax1.b;
        }
        if (ax1.l())
        {
            c = ax1.c;
        }
        d = ax1.d;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            m = 0;
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
        return f;
    }

    static db r()
    {
        return g;
    }

    static db s()
    {
        return h;
    }

    static db t()
    {
        return i;
    }

    static db u()
    {
        return j;
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public ax a()
    {
        return new ax(this);
    }

    public ax a(long l1)
    {
        d = l1;
        d(true);
        return this;
    }

    public ax a(String s1)
    {
        a = s1;
        return this;
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

    public ax b(String s1)
    {
        b = s1;
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
        d(false);
        d = 0L;
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

    public ax c(String s1)
    {
        c = s1;
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
        m = ce.a(m, 0, flag);
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

    public String j()
    {
        return c;
    }

    public void k()
    {
        c = null;
    }

    public boolean l()
    {
        return c != null;
    }

    public long m()
    {
        return d;
    }

    public void n()
    {
        m = ce.b(m, 0);
    }

    public boolean o()
    {
        return ce.a(m, 0);
    }

    public void p()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'domain' was not present! Struct: ").append(toString()).toString());
        }
        if (c == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'new_id' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("IdJournal(");
        stringbuilder.append("domain:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        if (i())
        {
            stringbuilder.append(", ");
            stringbuilder.append("old_id:");
            if (b == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(b);
            }
        }
        stringbuilder.append(", ");
        stringbuilder.append("new_id:");
        if (c == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(c);
        }
        stringbuilder.append(", ");
        stringbuilder.append("ts:");
        stringbuilder.append(d);
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    static 
    {
        k = new HashMap();
        k.put(u/aly/dq, new b());
        k.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/ax$e);
        enummap.put(e.a, new ct("domain", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("old_id", (byte)2, new cu((byte)11)));
        enummap.put(e.c, new ct("new_id", (byte)1, new cu((byte)11)));
        enummap.put(e.d, new ct("ts", (byte)1, new cu((byte)10)));
        e = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/ax, e);
    }
}
