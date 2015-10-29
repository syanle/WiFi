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
//            do, ce, co, dh, 
//            dj, dm

public class ap
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ap ap1)
            throws cn
        {
            dg1.j();
_L6:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!ap1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'successful_requests' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                }
                break MISSING_BLOCK_LABEL_211;
            }
            db1.c;
            JVM INSTR tableswitch 1 3: default 88
        //                       1 103
        //                       2 139
        //                       3 175;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_175;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L7:
            dg1.m();
            if (true) goto _L6; else goto _L5
_L5:
            if (db1.b == 8)
            {
                ap1.a = dg1.w();
                ap1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
_L3:
            if (db1.b == 8)
            {
                ap1.b = dg1.w();
                ap1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (db1.b == 8)
            {
                ap1.c = dg1.w();
                ap1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L7
            if (!ap1.i())
            {
                throw new dh((new StringBuilder()).append("Required field 'failed_requests' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            } else
            {
                ap1.m();
                return;
            }
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ap)ch1);
        }

        public void b(dg dg1, ap ap1)
            throws cn
        {
            ap1.m();
            dg1.a(ap.n());
            dg1.a(ap.o());
            dg1.a(ap1.a);
            dg1.c();
            dg1.a(ap.p());
            dg1.a(ap1.b);
            dg1.c();
            if (ap1.l())
            {
                dg1.a(ap.q());
                dg1.a(ap1.c);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ap)ch1);
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

        public void a(dg dg1, ap ap1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(ap1.a);
            dg1.a(ap1.b);
            BitSet bitset = new BitSet();
            if (ap1.l())
            {
                bitset.set(0);
            }
            dg1.a(bitset, 1);
            if (ap1.l())
            {
                dg1.a(ap1.c);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (ap)ch1);
        }

        public void b(dg dg1, ap ap1)
            throws cn
        {
            dg1 = (dm)dg1;
            ap1.a = dg1.w();
            ap1.a(true);
            ap1.b = dg1.w();
            ap1.b(true);
            if (dg1.b(1).get(0))
            {
                ap1.c = dg1.w();
                ap1.c(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (ap)ch1);
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
            return (e)Enum.valueOf(u/aly/ap$e, s);
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
            a = new e("SUCCESSFUL_REQUESTS", 0, (short)1, "successful_requests");
            b = new e("FAILED_REQUESTS", 1, (short)2, "failed_requests");
            c = new e("LAST_REQUEST_SPENT_MS", 2, (short)3, "last_request_spent_ms");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/ap$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
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
    private static final dl e = new dl("ClientStats");
    private static final db f = new db("successful_requests", (byte)8, (short)1);
    private static final db g = new db("failed_requests", (byte)8, (short)2);
    private static final db h = new db("last_request_spent_ms", (byte)8, (short)3);
    private static final Map i;
    private static final int j = 0;
    private static final int k = 1;
    private static final int l = 2;
    public int a;
    public int b;
    public int c;
    private byte m;
    private e n[];

    public ap()
    {
        m = 0;
        n = (new e[] {
            e.c
        });
        a = 0;
        b = 0;
    }

    public ap(int i1, int j1)
    {
        this();
        a = i1;
        a(true);
        b = j1;
        b(true);
    }

    public ap(ap ap1)
    {
        m = 0;
        n = (new e[] {
            e.c
        });
        m = ap1.m;
        a = ap1.a;
        b = ap1.b;
        c = ap1.c;
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

    static dl n()
    {
        return e;
    }

    static db o()
    {
        return f;
    }

    static db p()
    {
        return g;
    }

    static db q()
    {
        return h;
    }

    public ap a()
    {
        return new ap(this);
    }

    public ap a(int i1)
    {
        a = i1;
        a(true);
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        m = ce.a(m, 0, flag);
    }

    public co b(int i1)
    {
        return e(i1);
    }

    public void b()
    {
        a = 0;
        b = 0;
        c(false);
        c = 0;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        m = ce.a(m, 1, flag);
    }

    public int c()
    {
        return a;
    }

    public ap c(int i1)
    {
        b = i1;
        b(true);
        return this;
    }

    public void c(boolean flag)
    {
        m = ce.a(m, 2, flag);
    }

    public ap d(int i1)
    {
        c = i1;
        c(true);
        return this;
    }

    public void d()
    {
        m = ce.b(m, 0);
    }

    public e e(int i1)
    {
        return e.a(i1);
    }

    public boolean e()
    {
        return ce.a(m, 0);
    }

    public int f()
    {
        return b;
    }

    public ch g()
    {
        return a();
    }

    public void h()
    {
        m = ce.b(m, 1);
    }

    public boolean i()
    {
        return ce.a(m, 1);
    }

    public int j()
    {
        return c;
    }

    public void k()
    {
        m = ce.b(m, 2);
    }

    public boolean l()
    {
        return ce.a(m, 2);
    }

    public void m()
        throws cn
    {
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ClientStats(");
        stringbuilder.append("successful_requests:");
        stringbuilder.append(a);
        stringbuilder.append(", ");
        stringbuilder.append("failed_requests:");
        stringbuilder.append(b);
        if (l())
        {
            stringbuilder.append(", ");
            stringbuilder.append("last_request_spent_ms:");
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
        EnumMap enummap = new EnumMap(u/aly/ap$e);
        enummap.put(e.a, new ct("successful_requests", (byte)1, new cu((byte)8)));
        enummap.put(e.b, new ct("failed_requests", (byte)1, new cu((byte)8)));
        enummap.put(e.c, new ct("last_request_spent_ms", (byte)2, new cu((byte)8)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/ap, d);
    }
}
