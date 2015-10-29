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
//            dr, ct, cy, ap, 
//            ao, ar, bf, am, 
//            cv, bc, bl, ba, 
//            az, an, aq, cn, 
//            da, ds, dh, dg, 
//            dp, do, co, dj, 
//            dc, dm

public class bn
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bn bn1)
            throws cn
        {
            dg1.j();
_L14:
            Object obj;
            obj = dg1.l();
            if (((db) (obj)).b == 0)
            {
                dg1.k();
                bn1.O();
                return;
            }
            ((db) (obj)).c;
            JVM INSTR tableswitch 1 11: default 88
        //                       1 103
        //                       2 150
        //                       3 197
        //                       4 244
        //                       5 291
        //                       6 338
        //                       7 438
        //                       8 538
        //                       9 585
        //                       10 632
        //                       11 679;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L12:
            break MISSING_BLOCK_LABEL_679;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, ((db) (obj)).b);
_L15:
            dg1.m();
            if (true) goto _L14; else goto _L13
_L13:
            if (((db) (obj)).b == 12)
            {
                bn1.a = new ap();
                bn1.a.a(dg1);
                bn1.a(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L3:
            if (((db) (obj)).b == 12)
            {
                bn1.b = new ao();
                bn1.b.a(dg1);
                bn1.b(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L4:
            if (((db) (obj)).b == 12)
            {
                bn1.c = new ar();
                bn1.c.a(dg1);
                bn1.c(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L5:
            if (((db) (obj)).b == 12)
            {
                bn1.d = new bf();
                bn1.d.a(dg1);
                bn1.d(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L6:
            if (((db) (obj)).b == 12)
            {
                bn1.e = new am();
                bn1.e.a(dg1);
                bn1.e(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L7:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bn1.f = new ArrayList(((dc) (obj)).b);
                for (int i1 = 0; i1 < ((dc) (obj)).b; i1++)
                {
                    bc bc1 = new bc();
                    bc1.a(dg1);
                    bn1.f.add(bc1);
                }

                dg1.q();
                bn1.f(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L8:
            if (((db) (obj)).b == 15)
            {
                obj = dg1.p();
                bn1.g = new ArrayList(((dc) (obj)).b);
                for (int j1 = 0; j1 < ((dc) (obj)).b; j1++)
                {
                    bl bl1 = new bl();
                    bl1.a(dg1);
                    bn1.g.add(bl1);
                }

                dg1.q();
                bn1.g(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L9:
            if (((db) (obj)).b == 12)
            {
                bn1.h = new ba();
                bn1.h.a(dg1);
                bn1.h(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L10:
            if (((db) (obj)).b == 12)
            {
                bn1.i = new az();
                bn1.i.a(dg1);
                bn1.i(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
_L11:
            if (((db) (obj)).b == 12)
            {
                bn1.j = new an();
                bn1.j.a(dg1);
                bn1.j(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
            if (((db) (obj)).b == 12)
            {
                bn1.k = new aq();
                bn1.k.a(dg1);
                bn1.k(true);
            } else
            {
                dj.a(dg1, ((db) (obj)).b);
            }
              goto _L15
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bn)ch1);
        }

        public void b(dg dg1, bn bn1)
            throws cn
        {
            bn1.O();
            dg1.a(bn.P());
            if (bn1.a != null)
            {
                dg1.a(bn.Q());
                bn1.a.b(dg1);
                dg1.c();
            }
            if (bn1.b != null)
            {
                dg1.a(bn.R());
                bn1.b.b(dg1);
                dg1.c();
            }
            if (bn1.c != null)
            {
                dg1.a(bn.S());
                bn1.c.b(dg1);
                dg1.c();
            }
            if (bn1.d != null)
            {
                dg1.a(bn.T());
                bn1.d.b(dg1);
                dg1.c();
            }
            if (bn1.e != null && bn1.r())
            {
                dg1.a(bn.U());
                bn1.e.b(dg1);
                dg1.c();
            }
            if (bn1.f != null && bn1.w())
            {
                dg1.a(bn.V());
                dg1.a(new dc((byte)12, bn1.f.size()));
                for (Iterator iterator = bn1.f.iterator(); iterator.hasNext(); ((bc)iterator.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (bn1.g != null && bn1.B())
            {
                dg1.a(bn.W());
                dg1.a(new dc((byte)12, bn1.g.size()));
                for (Iterator iterator1 = bn1.g.iterator(); iterator1.hasNext(); ((bl)iterator1.next()).b(dg1)) { }
                dg1.f();
                dg1.c();
            }
            if (bn1.h != null && bn1.E())
            {
                dg1.a(bn.X());
                bn1.h.b(dg1);
                dg1.c();
            }
            if (bn1.i != null && bn1.H())
            {
                dg1.a(bn.Y());
                bn1.i.b(dg1);
                dg1.c();
            }
            if (bn1.j != null && bn1.K())
            {
                dg1.a(bn.Z());
                bn1.j.b(dg1);
                dg1.c();
            }
            if (bn1.k != null && bn1.N())
            {
                dg1.a(bn.aa());
                bn1.k.b(dg1);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bn)ch1);
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

        public void a(dg dg1, bn bn1)
            throws cn
        {
            dg1 = (dm)dg1;
            bn1.a.b(dg1);
            bn1.b.b(dg1);
            bn1.c.b(dg1);
            bn1.d.b(dg1);
            BitSet bitset = new BitSet();
            if (bn1.r())
            {
                bitset.set(0);
            }
            if (bn1.w())
            {
                bitset.set(1);
            }
            if (bn1.B())
            {
                bitset.set(2);
            }
            if (bn1.E())
            {
                bitset.set(3);
            }
            if (bn1.H())
            {
                bitset.set(4);
            }
            if (bn1.K())
            {
                bitset.set(5);
            }
            if (bn1.N())
            {
                bitset.set(6);
            }
            dg1.a(bitset, 7);
            if (bn1.r())
            {
                bn1.e.b(dg1);
            }
            if (bn1.w())
            {
                dg1.a(bn1.f.size());
                for (Iterator iterator = bn1.f.iterator(); iterator.hasNext(); ((bc)iterator.next()).b(dg1)) { }
            }
            if (bn1.B())
            {
                dg1.a(bn1.g.size());
                for (Iterator iterator1 = bn1.g.iterator(); iterator1.hasNext(); ((bl)iterator1.next()).b(dg1)) { }
            }
            if (bn1.E())
            {
                bn1.h.b(dg1);
            }
            if (bn1.H())
            {
                bn1.i.b(dg1);
            }
            if (bn1.K())
            {
                bn1.j.b(dg1);
            }
            if (bn1.N())
            {
                bn1.k.b(dg1);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bn)ch1);
        }

        public void b(dg dg1, bn bn1)
            throws cn
        {
            boolean flag = false;
            dg1 = (dm)dg1;
            bn1.a = new ap();
            bn1.a.a(dg1);
            bn1.a(true);
            bn1.b = new ao();
            bn1.b.a(dg1);
            bn1.b(true);
            bn1.c = new ar();
            bn1.c.a(dg1);
            bn1.c(true);
            bn1.d = new bf();
            bn1.d.a(dg1);
            bn1.d(true);
            BitSet bitset = dg1.b(7);
            if (bitset.get(0))
            {
                bn1.e = new am();
                bn1.e.a(dg1);
                bn1.e(true);
            }
            if (bitset.get(1))
            {
                dc dc1 = new dc((byte)12, dg1.w());
                bn1.f = new ArrayList(dc1.b);
                for (int i1 = 0; i1 < dc1.b; i1++)
                {
                    bc bc1 = new bc();
                    bc1.a(dg1);
                    bn1.f.add(bc1);
                }

                bn1.f(true);
            }
            if (bitset.get(2))
            {
                dc dc2 = new dc((byte)12, dg1.w());
                bn1.g = new ArrayList(dc2.b);
                for (int j1 = ((flag) ? 1 : 0); j1 < dc2.b; j1++)
                {
                    bl bl1 = new bl();
                    bl1.a(dg1);
                    bn1.g.add(bl1);
                }

                bn1.g(true);
            }
            if (bitset.get(3))
            {
                bn1.h = new ba();
                bn1.h.a(dg1);
                bn1.h(true);
            }
            if (bitset.get(4))
            {
                bn1.i = new az();
                bn1.i.a(dg1);
                bn1.i(true);
            }
            if (bitset.get(5))
            {
                bn1.j = new an();
                bn1.j.a(dg1);
                bn1.j(true);
            }
            if (bitset.get(6))
            {
                bn1.k = new aq();
                bn1.k.a(dg1);
                bn1.k(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bn)ch1);
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
        public static final e h;
        public static final e i;
        public static final e j;
        public static final e k;
        private static final Map l;
        private static final e o[];
        private final short m;
        private final String n;

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

            case 8: // '\b'
                return h;

            case 9: // '\t'
                return i;

            case 10: // '\n'
                return j;

            case 11: // '\013'
                return k;
            }
        }

        public static e a(String s1)
        {
            return (e)l.get(s1);
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
            return (e)Enum.valueOf(u/aly/bn$e, s1);
        }

        public static e[] values()
        {
            return (e[])o.clone();
        }

        public short a()
        {
            return m;
        }

        public String b()
        {
            return n;
        }

        static 
        {
            a = new e("CLIENT_STATS", 0, (short)1, "client_stats");
            b = new e("APP_INFO", 1, (short)2, "app_info");
            c = new e("DEVICE_INFO", 2, (short)3, "device_info");
            d = new e("MISC_INFO", 3, (short)4, "misc_info");
            e = new e("ACTIVATE_MSG", 4, (short)5, "activate_msg");
            f = new e("INSTANT_MSGS", 5, (short)6, "instant_msgs");
            g = new e("SESSIONS", 6, (short)7, "sessions");
            h = new e("IMPRINT", 7, (short)8, "imprint");
            i = new e("ID_TRACKING", 8, (short)9, "id_tracking");
            j = new e("ACTIVE_USER", 9, (short)10, "active_user");
            k = new e("CONTROL_POLICY", 10, (short)11, "control_policy");
            o = (new e[] {
                a, b, c, d, e, f, g, h, i, j, 
                k
            });
            l = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bn$e).iterator(); iterator.hasNext(); l.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            m = word0;
            n = s2;
        }
    }


    public static final Map l;
    private static final dl m = new dl("UALogEntry");
    private static final db n = new db("client_stats", (byte)12, (short)1);
    private static final db o = new db("app_info", (byte)12, (short)2);
    private static final db p = new db("device_info", (byte)12, (short)3);
    private static final db q = new db("misc_info", (byte)12, (short)4);
    private static final db r = new db("activate_msg", (byte)12, (short)5);
    private static final db s = new db("instant_msgs", (byte)15, (short)6);
    private static final db t = new db("sessions", (byte)15, (short)7);
    private static final db u = new db("imprint", (byte)12, (short)8);
    private static final db v = new db("id_tracking", (byte)12, (short)9);
    private static final db w = new db("active_user", (byte)12, (short)10);
    private static final db x = new db("control_policy", (byte)12, (short)11);
    private static final Map y;
    public ap a;
    public ao b;
    public ar c;
    public bf d;
    public am e;
    public List f;
    public List g;
    public ba h;
    public az i;
    public an j;
    public aq k;
    private e z[];

    public bn()
    {
        z = (new e[] {
            e.e, e.f, e.g, e.h, e.i, e.j, e.k
        });
    }

    public bn(ap ap1, ao ao1, ar ar1, bf bf1)
    {
        this();
        a = ap1;
        b = ao1;
        c = ar1;
        d = bf1;
    }

    public bn(bn bn1)
    {
        z = (new e[] {
            e.e, e.f, e.g, e.h, e.i, e.j, e.k
        });
        if (bn1.e())
        {
            a = new ap(bn1.a);
        }
        if (bn1.i())
        {
            b = new ao(bn1.b);
        }
        if (bn1.l())
        {
            c = new ar(bn1.c);
        }
        if (bn1.o())
        {
            d = new bf(bn1.d);
        }
        if (bn1.r())
        {
            e = new am(bn1.e);
        }
        if (bn1.w())
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = bn1.f.iterator(); iterator.hasNext(); arraylist.add(new bc((bc)iterator.next()))) { }
            f = arraylist;
        }
        if (bn1.B())
        {
            ArrayList arraylist1 = new ArrayList();
            for (Iterator iterator1 = bn1.g.iterator(); iterator1.hasNext(); arraylist1.add(new bl((bl)iterator1.next()))) { }
            g = arraylist1;
        }
        if (bn1.E())
        {
            h = new ba(bn1.h);
        }
        if (bn1.H())
        {
            i = new az(bn1.i);
        }
        if (bn1.K())
        {
            j = new an(bn1.j);
        }
        if (bn1.N())
        {
            k = new aq(bn1.k);
        }
    }

    static dl P()
    {
        return m;
    }

    static db Q()
    {
        return n;
    }

    static db R()
    {
        return o;
    }

    static db S()
    {
        return p;
    }

    static db T()
    {
        return q;
    }

    static db U()
    {
        return r;
    }

    static db V()
    {
        return s;
    }

    static db W()
    {
        return t;
    }

    static db X()
    {
        return u;
    }

    static db Y()
    {
        return v;
    }

    static db Z()
    {
        return w;
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

    static db aa()
    {
        return x;
    }

    public void A()
    {
        g = null;
    }

    public boolean B()
    {
        return g != null;
    }

    public ba C()
    {
        return h;
    }

    public void D()
    {
        h = null;
    }

    public boolean E()
    {
        return h != null;
    }

    public az F()
    {
        return i;
    }

    public void G()
    {
        i = null;
    }

    public boolean H()
    {
        return i != null;
    }

    public an I()
    {
        return j;
    }

    public void J()
    {
        j = null;
    }

    public boolean K()
    {
        return j != null;
    }

    public aq L()
    {
        return k;
    }

    public void M()
    {
        k = null;
    }

    public boolean N()
    {
        return k != null;
    }

    public void O()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'client_stats' was not present! Struct: ").append(toString()).toString());
        }
        if (b == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'app_info' was not present! Struct: ").append(toString()).toString());
        }
        if (c == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'device_info' was not present! Struct: ").append(toString()).toString());
        }
        if (d == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'misc_info' was not present! Struct: ").append(toString()).toString());
        }
        if (a != null)
        {
            a.m();
        }
        if (b != null)
        {
            b.H();
        }
        if (c != null)
        {
            c.ac();
        }
        if (d != null)
        {
            d.H();
        }
        if (e != null)
        {
            e.f();
        }
        if (h != null)
        {
            h.n();
        }
        if (i != null)
        {
            i.p();
        }
        if (j != null)
        {
            j.j();
        }
        if (k != null)
        {
            k.f();
        }
    }

    public e a(int i1)
    {
        return e.a(i1);
    }

    public bn a()
    {
        return new bn(this);
    }

    public bn a(List list)
    {
        f = list;
        return this;
    }

    public bn a(am am1)
    {
        e = am1;
        return this;
    }

    public bn a(an an1)
    {
        j = an1;
        return this;
    }

    public bn a(ao ao1)
    {
        b = ao1;
        return this;
    }

    public bn a(ap ap1)
    {
        a = ap1;
        return this;
    }

    public bn a(aq aq1)
    {
        k = aq1;
        return this;
    }

    public bn a(ar ar1)
    {
        c = ar1;
        return this;
    }

    public bn a(az az1)
    {
        i = az1;
        return this;
    }

    public bn a(ba ba1)
    {
        h = ba1;
        return this;
    }

    public bn a(bf bf1)
    {
        d = bf1;
        return this;
    }

    public void a(bc bc1)
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        f.add(bc1);
    }

    public void a(bl bl1)
    {
        if (g == null)
        {
            g = new ArrayList();
        }
        g.add(bl1);
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)y.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public bn b(List list)
    {
        g = list;
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
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        k = null;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)y.get(dg1.D())).b().a(dg1, this);
    }

    public void b(boolean flag)
    {
        if (!flag)
        {
            b = null;
        }
    }

    public ap c()
    {
        return a;
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

    public ao f()
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
        b = null;
    }

    public void h(boolean flag)
    {
        if (!flag)
        {
            h = null;
        }
    }

    public void i(boolean flag)
    {
        if (!flag)
        {
            i = null;
        }
    }

    public boolean i()
    {
        return b != null;
    }

    public ar j()
    {
        return c;
    }

    public void j(boolean flag)
    {
        if (!flag)
        {
            j = null;
        }
    }

    public void k()
    {
        c = null;
    }

    public void k(boolean flag)
    {
        if (!flag)
        {
            k = null;
        }
    }

    public boolean l()
    {
        return c != null;
    }

    public bf m()
    {
        return d;
    }

    public void n()
    {
        d = null;
    }

    public boolean o()
    {
        return d != null;
    }

    public am p()
    {
        return e;
    }

    public void q()
    {
        e = null;
    }

    public boolean r()
    {
        return e != null;
    }

    public int s()
    {
        if (f == null)
        {
            return 0;
        } else
        {
            return f.size();
        }
    }

    public Iterator t()
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.iterator();
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("UALogEntry(");
        stringbuilder.append("client_stats:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("app_info:");
        if (b == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(b);
        }
        stringbuilder.append(", ");
        stringbuilder.append("device_info:");
        if (c == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(c);
        }
        stringbuilder.append(", ");
        stringbuilder.append("misc_info:");
        if (d == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(d);
        }
        if (r())
        {
            stringbuilder.append(", ");
            stringbuilder.append("activate_msg:");
            if (e == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(e);
            }
        }
        if (w())
        {
            stringbuilder.append(", ");
            stringbuilder.append("instant_msgs:");
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
            stringbuilder.append("sessions:");
            if (g == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(g);
            }
        }
        if (E())
        {
            stringbuilder.append(", ");
            stringbuilder.append("imprint:");
            if (h == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(h);
            }
        }
        if (H())
        {
            stringbuilder.append(", ");
            stringbuilder.append("id_tracking:");
            if (i == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(i);
            }
        }
        if (K())
        {
            stringbuilder.append(", ");
            stringbuilder.append("active_user:");
            if (j == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(j);
            }
        }
        if (N())
        {
            stringbuilder.append(", ");
            stringbuilder.append("control_policy:");
            if (k == null)
            {
                stringbuilder.append("null");
            } else
            {
                stringbuilder.append(k);
            }
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    public List u()
    {
        return f;
    }

    public void v()
    {
        f = null;
    }

    public boolean w()
    {
        return f != null;
    }

    public int x()
    {
        if (g == null)
        {
            return 0;
        } else
        {
            return g.size();
        }
    }

    public Iterator y()
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.iterator();
        }
    }

    public List z()
    {
        return g;
    }

    static 
    {
        y = new HashMap();
        y.put(u/aly/dq, new b());
        y.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bn$e);
        enummap.put(e.a, new ct("client_stats", (byte)1, new cy((byte)12, u/aly/ap)));
        enummap.put(e.b, new ct("app_info", (byte)1, new cy((byte)12, u/aly/ao)));
        enummap.put(e.c, new ct("device_info", (byte)1, new cy((byte)12, u/aly/ar)));
        enummap.put(e.d, new ct("misc_info", (byte)1, new cy((byte)12, u/aly/bf)));
        enummap.put(e.e, new ct("activate_msg", (byte)2, new cy((byte)12, u/aly/am)));
        enummap.put(e.f, new ct("instant_msgs", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/bc))));
        enummap.put(e.g, new ct("sessions", (byte)2, new cv((byte)15, new cy((byte)12, u/aly/bl))));
        enummap.put(e.h, new ct("imprint", (byte)2, new cy((byte)12, u/aly/ba)));
        enummap.put(e.i, new ct("id_tracking", (byte)2, new cy((byte)12, u/aly/az)));
        enummap.put(e.j, new ct("active_user", (byte)2, new cy((byte)12, u/aly/an)));
        enummap.put(e.k, new ct("control_policy", (byte)2, new cy((byte)12, u/aly/aq)));
        l = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bn, l);
    }
}
