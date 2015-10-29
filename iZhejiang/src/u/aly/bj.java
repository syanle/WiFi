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
//            dr, ct, cu, cy, 
//            ba, cn, da, ds, 
//            dg, dp, do, ce, 
//            co, dh, dj, dm

public class bj
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bj bj1)
            throws cn
        {
            dg1.j();
_L5:
            db db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!bj1.e())
                {
                    throw new dh((new StringBuilder()).append("Required field 'resp_code' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                } else
                {
                    bj1.m();
                    return;
                }
            }
            db1.c;
            JVM INSTR tableswitch 1 3: default 88
        //                       1 103
        //                       2 139
        //                       3 175;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_175;
_L1:
            dj.a(dg1, db1.b);
_L6:
            dg1.m();
              goto _L5
_L2:
            if (db1.b == 8)
            {
                bj1.a = dg1.w();
                bj1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L6
_L3:
            if (db1.b == 11)
            {
                bj1.b = dg1.z();
                bj1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L6
            if (db1.b == 12)
            {
                bj1.c = new ba();
                bj1.c.a(dg1);
                bj1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L6
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bj)ch1);
        }

        public void b(dg dg1, bj bj1)
            throws cn
        {
            bj1.m();
            dg1.a(bj.n());
            dg1.a(bj.o());
            dg1.a(bj1.a);
            dg1.c();
            if (bj1.b != null && bj1.i())
            {
                dg1.a(bj.p());
                dg1.a(bj1.b);
                dg1.c();
            }
            if (bj1.c != null && bj1.l())
            {
                dg1.a(bj.q());
                bj1.c.b(dg1);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bj)ch1);
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

        public void a(dg dg1, bj bj1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(bj1.a);
            BitSet bitset = new BitSet();
            if (bj1.i())
            {
                bitset.set(0);
            }
            if (bj1.l())
            {
                bitset.set(1);
            }
            dg1.a(bitset, 2);
            if (bj1.i())
            {
                dg1.a(bj1.b);
            }
            if (bj1.l())
            {
                bj1.c.b(dg1);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bj)ch1);
        }

        public void b(dg dg1, bj bj1)
            throws cn
        {
            dg1 = (dm)dg1;
            bj1.a = dg1.w();
            bj1.a(true);
            BitSet bitset = dg1.b(2);
            if (bitset.get(0))
            {
                bj1.b = dg1.z();
                bj1.b(true);
            }
            if (bitset.get(1))
            {
                bj1.c = new ba();
                bj1.c.a(dg1);
                bj1.c(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bj)ch1);
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
            return (e)Enum.valueOf(u/aly/bj$e, s);
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
            a = new e("RESP_CODE", 0, (short)1, "resp_code");
            b = new e("MSG", 1, (short)2, "msg");
            c = new e("IMPRINT", 2, (short)3, "imprint");
            g = (new e[] {
                a, b, c
            });
            d = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bj$e).iterator(); iterator.hasNext(); d.put(e1.b(), e1))
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
    private static final dl e = new dl("Response");
    private static final db f = new db("resp_code", (byte)8, (short)1);
    private static final db g = new db("msg", (byte)11, (short)2);
    private static final db h = new db("imprint", (byte)12, (short)3);
    private static final Map i;
    private static final int j = 0;
    public int a;
    public String b;
    public ba c;
    private byte k;
    private e l[];

    public bj()
    {
        k = 0;
        l = (new e[] {
            e.b, e.c
        });
    }

    public bj(int i1)
    {
        this();
        a = i1;
        a(true);
    }

    public bj(bj bj1)
    {
        k = 0;
        l = (new e[] {
            e.b, e.c
        });
        k = bj1.k;
        a = bj1.a;
        if (bj1.i())
        {
            b = bj1.b;
        }
        if (bj1.l())
        {
            c = new ba(bj1.c);
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

    public bj a()
    {
        return new bj(this);
    }

    public bj a(int i1)
    {
        a = i1;
        a(true);
        return this;
    }

    public bj a(String s)
    {
        b = s;
        return this;
    }

    public bj a(ba ba1)
    {
        c = ba1;
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)i.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        k = ce.a(k, 0, flag);
    }

    public co b(int i1)
    {
        return c(i1);
    }

    public void b()
    {
        a(false);
        a = 0;
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
        k = ce.b(k, 0);
    }

    public boolean e()
    {
        return ce.a(k, 0);
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

    public ba j()
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

    public void m()
        throws cn
    {
        if (c != null)
        {
            c.n();
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Response(");
        stringbuilder.append("resp_code:");
        stringbuilder.append(a);
        if (i())
        {
            stringbuilder.append(", ");
            stringbuilder.append("msg:");
            if (b == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(b);
            }
        }
        if (l())
        {
            stringbuilder.append(", ");
            stringbuilder.append("imprint:");
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
        EnumMap enummap = new EnumMap(u/aly/bj$e);
        enummap.put(e.a, new ct("resp_code", (byte)1, new cu((byte)8)));
        enummap.put(e.b, new ct("msg", (byte)2, new cu((byte)11)));
        enummap.put(e.c, new ct("imprint", (byte)2, new cy((byte)12, u/aly/ba)));
        d = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bj, d);
    }
}
