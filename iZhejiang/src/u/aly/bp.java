// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            ch, dl, db, dq, 
//            dr, ct, cu, ci, 
//            cn, da, ds, ce, 
//            dh, dg, dp, do, 
//            co, dj, dm

public class bp
    implements Serializable, Cloneable, ch
{
    private static class a extends dq
    {

        public void a(dg dg1, bp bp1)
            throws cn
        {
            dg1.j();
_L13:
            db db1;
            db1 = dg1.l();
            if (db1.b == 0)
            {
                dg1.k();
                if (!bp1.o())
                {
                    throw new dh((new StringBuilder()).append("Required field 'serial_num' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
                }
                break MISSING_BLOCK_LABEL_491;
            }
            db1.c;
            JVM INSTR tableswitch 1 10: default 116
        //                       1 131
        //                       2 167
        //                       3 203
        //                       4 239
        //                       5 275
        //                       6 311
        //                       7 347
        //                       8 383
        //                       9 419
        //                       10 455;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
            break MISSING_BLOCK_LABEL_455;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            dj.a(dg1, db1.b);
_L14:
            dg1.m();
            if (true) goto _L13; else goto _L12
_L12:
            if (db1.b == 11)
            {
                bp1.a = dg1.z();
                bp1.a(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L3:
            if (db1.b == 11)
            {
                bp1.b = dg1.z();
                bp1.b(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L4:
            if (db1.b == 11)
            {
                bp1.c = dg1.z();
                bp1.c(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L5:
            if (db1.b == 8)
            {
                bp1.d = dg1.w();
                bp1.d(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L6:
            if (db1.b == 8)
            {
                bp1.e = dg1.w();
                bp1.e(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L7:
            if (db1.b == 8)
            {
                bp1.f = dg1.w();
                bp1.f(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L8:
            if (db1.b == 11)
            {
                bp1.g = dg1.A();
                bp1.g(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L9:
            if (db1.b == 11)
            {
                bp1.h = dg1.z();
                bp1.h(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
_L10:
            if (db1.b == 11)
            {
                bp1.i = dg1.z();
                bp1.i(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
            if (db1.b == 8)
            {
                bp1.j = dg1.w();
                bp1.j(true);
            } else
            {
                dj.a(dg1, db1.b);
            }
              goto _L14
            if (!bp1.r())
            {
                throw new dh((new StringBuilder()).append("Required field 'ts_secs' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            }
            if (!bp1.u())
            {
                throw new dh((new StringBuilder()).append("Required field 'length' was not found in serialized data! Struct: ").append(((Object)this).toString()).toString());
            } else
            {
                bp1.I();
                return;
            }
        }

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bp)ch1);
        }

        public void b(dg dg1, bp bp1)
            throws cn
        {
            bp1.I();
            dg1.a(bp.J());
            if (bp1.a != null)
            {
                dg1.a(bp.K());
                dg1.a(bp1.a);
                dg1.c();
            }
            if (bp1.b != null)
            {
                dg1.a(bp.L());
                dg1.a(bp1.b);
                dg1.c();
            }
            if (bp1.c != null)
            {
                dg1.a(bp.M());
                dg1.a(bp1.c);
                dg1.c();
            }
            dg1.a(bp.N());
            dg1.a(bp1.d);
            dg1.c();
            dg1.a(bp.O());
            dg1.a(bp1.e);
            dg1.c();
            dg1.a(bp.P());
            dg1.a(bp1.f);
            dg1.c();
            if (bp1.g != null)
            {
                dg1.a(bp.Q());
                dg1.a(bp1.g);
                dg1.c();
            }
            if (bp1.h != null)
            {
                dg1.a(bp.R());
                dg1.a(bp1.h);
                dg1.c();
            }
            if (bp1.i != null)
            {
                dg1.a(bp.S());
                dg1.a(bp1.i);
                dg1.c();
            }
            if (bp1.H())
            {
                dg1.a(bp.T());
                dg1.a(bp1.j);
                dg1.c();
            }
            dg1.d();
            dg1.b();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bp)ch1);
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

        public void a(dg dg1, bp bp1)
            throws cn
        {
            dg1 = (dm)dg1;
            dg1.a(bp1.a);
            dg1.a(bp1.b);
            dg1.a(bp1.c);
            dg1.a(bp1.d);
            dg1.a(bp1.e);
            dg1.a(bp1.f);
            dg1.a(bp1.g);
            dg1.a(bp1.h);
            dg1.a(bp1.i);
            BitSet bitset = new BitSet();
            if (bp1.H())
            {
                bitset.set(0);
            }
            dg1.a(bitset, 1);
            if (bp1.H())
            {
                dg1.a(bp1.j);
            }
        }

        public volatile void a(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (bp)ch1);
        }

        public void b(dg dg1, bp bp1)
            throws cn
        {
            dg1 = (dm)dg1;
            bp1.a = dg1.z();
            bp1.a(true);
            bp1.b = dg1.z();
            bp1.b(true);
            bp1.c = dg1.z();
            bp1.c(true);
            bp1.d = dg1.w();
            bp1.d(true);
            bp1.e = dg1.w();
            bp1.e(true);
            bp1.f = dg1.w();
            bp1.f(true);
            bp1.g = dg1.A();
            bp1.g(true);
            bp1.h = dg1.z();
            bp1.h(true);
            bp1.i = dg1.z();
            bp1.i(true);
            if (dg1.b(1).get(0))
            {
                bp1.j = dg1.w();
                bp1.j(true);
            }
        }

        public volatile void b(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (bp)ch1);
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
        private static final Map k;
        private static final e n[];
        private final short l;
        private final String m;

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
            }
        }

        public static e a(String s1)
        {
            return (e)k.get(s1);
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
            return (e)Enum.valueOf(u/aly/bp$e, s1);
        }

        public static e[] values()
        {
            return (e[])n.clone();
        }

        public short a()
        {
            return l;
        }

        public String b()
        {
            return m;
        }

        static 
        {
            a = new e("VERSION", 0, (short)1, "version");
            b = new e("ADDRESS", 1, (short)2, "address");
            c = new e("SIGNATURE", 2, (short)3, "signature");
            d = new e("SERIAL_NUM", 3, (short)4, "serial_num");
            e = new e("TS_SECS", 4, (short)5, "ts_secs");
            f = new e("LENGTH", 5, (short)6, "length");
            g = new e("ENTITY", 6, (short)7, "entity");
            h = new e("GUID", 7, (short)8, "guid");
            i = new e("CHECKSUM", 8, (short)9, "checksum");
            j = new e("CODEX", 9, (short)10, "codex");
            n = (new e[] {
                a, b, c, d, e, f, g, h, i, j
            });
            k = new HashMap();
            e e1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bp$e).iterator(); iterator.hasNext(); k.put(e1.b(), e1))
            {
                e1 = (e)iterator.next();
            }

        }

        private e(String s1, int i1, short word0, String s2)
        {
            super(s1, i1);
            l = word0;
            m = s2;
        }
    }


    private static final int A = 3;
    public static final Map k;
    private static final dl l = new dl("UMEnvelope");
    private static final db m = new db("version", (byte)11, (short)1);
    private static final db n = new db("address", (byte)11, (short)2);
    private static final db o = new db("signature", (byte)11, (short)3);
    private static final db p = new db("serial_num", (byte)8, (short)4);
    private static final db q = new db("ts_secs", (byte)8, (short)5);
    private static final db r = new db("length", (byte)8, (short)6);
    private static final db s = new db("entity", (byte)11, (short)7);
    private static final db t = new db("guid", (byte)11, (short)8);
    private static final db u = new db("checksum", (byte)11, (short)9);
    private static final db v = new db("codex", (byte)8, (short)10);
    private static final Map w;
    private static final int x = 0;
    private static final int y = 1;
    private static final int z = 2;
    private byte B;
    private e C[];
    public String a;
    public String b;
    public String c;
    public int d;
    public int e;
    public int f;
    public ByteBuffer g;
    public String h;
    public String i;
    public int j;

    public bp()
    {
        B = 0;
        C = (new e[] {
            e.j
        });
    }

    public bp(String s1, String s2, String s3, int i1, int j1, int k1, ByteBuffer bytebuffer, 
            String s4, String s5)
    {
        this();
        a = s1;
        b = s2;
        c = s3;
        d = i1;
        d(true);
        e = j1;
        e(true);
        f = k1;
        f(true);
        g = bytebuffer;
        h = s4;
        i = s5;
    }

    public bp(bp bp1)
    {
        B = 0;
        C = (new e[] {
            e.j
        });
        B = bp1.B;
        if (bp1.e())
        {
            a = bp1.a;
        }
        if (bp1.i())
        {
            b = bp1.b;
        }
        if (bp1.l())
        {
            c = bp1.c;
        }
        d = bp1.d;
        e = bp1.e;
        f = bp1.f;
        if (bp1.y())
        {
            g = ci.d(bp1.g);
        }
        if (bp1.B())
        {
            h = bp1.h;
        }
        if (bp1.E())
        {
            i = bp1.i;
        }
        j = bp1.j;
    }

    static dl J()
    {
        return l;
    }

    static db K()
    {
        return m;
    }

    static db L()
    {
        return n;
    }

    static db M()
    {
        return o;
    }

    static db N()
    {
        return p;
    }

    static db O()
    {
        return q;
    }

    static db P()
    {
        return r;
    }

    static db Q()
    {
        return s;
    }

    static db R()
    {
        return t;
    }

    static db S()
    {
        return u;
    }

    static db T()
    {
        return v;
    }

    private void a(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        try
        {
            B = 0;
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
        h = null;
    }

    public boolean B()
    {
        return h != null;
    }

    public String C()
    {
        return i;
    }

    public void D()
    {
        i = null;
    }

    public boolean E()
    {
        return i != null;
    }

    public int F()
    {
        return j;
    }

    public void G()
    {
        B = ce.b(B, 3);
    }

    public boolean H()
    {
        return ce.a(B, 3);
    }

    public void I()
        throws cn
    {
        if (a == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'version' was not present! Struct: ").append(toString()).toString());
        }
        if (b == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'address' was not present! Struct: ").append(toString()).toString());
        }
        if (c == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'signature' was not present! Struct: ").append(toString()).toString());
        }
        if (g == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'entity' was not present! Struct: ").append(toString()).toString());
        }
        if (h == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'guid' was not present! Struct: ").append(toString()).toString());
        }
        if (i == null)
        {
            throw new dh((new StringBuilder()).append("Required field 'checksum' was not present! Struct: ").append(toString()).toString());
        } else
        {
            return;
        }
    }

    public bp a()
    {
        return new bp(this);
    }

    public bp a(int i1)
    {
        d = i1;
        d(true);
        return this;
    }

    public bp a(String s1)
    {
        a = s1;
        return this;
    }

    public bp a(ByteBuffer bytebuffer)
    {
        g = bytebuffer;
        return this;
    }

    public bp a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            abyte0 = (ByteBuffer)null;
        } else
        {
            abyte0 = ByteBuffer.wrap(abyte0);
        }
        a(((ByteBuffer) (abyte0)));
        return this;
    }

    public void a(dg dg1)
        throws cn
    {
        ((dp)w.get(dg1.D())).b().b(dg1, this);
    }

    public void a(boolean flag)
    {
        if (!flag)
        {
            a = null;
        }
    }

    public bp b(String s1)
    {
        b = s1;
        return this;
    }

    public co b(int i1)
    {
        return f(i1);
    }

    public void b()
    {
        a = null;
        b = null;
        c = null;
        d(false);
        d = 0;
        e(false);
        e = 0;
        f(false);
        f = 0;
        g = null;
        h = null;
        i = null;
        j(false);
        j = 0;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)w.get(dg1.D())).b().a(dg1, this);
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

    public bp c(int i1)
    {
        e = i1;
        e(true);
        return this;
    }

    public bp c(String s1)
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

    public bp d(int i1)
    {
        f = i1;
        f(true);
        return this;
    }

    public bp d(String s1)
    {
        h = s1;
        return this;
    }

    public void d()
    {
        a = null;
    }

    public void d(boolean flag)
    {
        B = ce.a(B, 0, flag);
    }

    public bp e(int i1)
    {
        j = i1;
        j(true);
        return this;
    }

    public bp e(String s1)
    {
        i = s1;
        return this;
    }

    public void e(boolean flag)
    {
        B = ce.a(B, 1, flag);
    }

    public boolean e()
    {
        return a != null;
    }

    public String f()
    {
        return b;
    }

    public e f(int i1)
    {
        return e.a(i1);
    }

    public void f(boolean flag)
    {
        B = ce.a(B, 2, flag);
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

    public String j()
    {
        return c;
    }

    public void j(boolean flag)
    {
        B = ce.a(B, 3, flag);
    }

    public void k()
    {
        c = null;
    }

    public boolean l()
    {
        return c != null;
    }

    public int m()
    {
        return d;
    }

    public void n()
    {
        B = ce.b(B, 0);
    }

    public boolean o()
    {
        return ce.a(B, 0);
    }

    public int p()
    {
        return e;
    }

    public void q()
    {
        B = ce.b(B, 1);
    }

    public boolean r()
    {
        return ce.a(B, 1);
    }

    public int s()
    {
        return f;
    }

    public void t()
    {
        B = ce.b(B, 2);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("UMEnvelope(");
        stringbuilder.append("version:");
        if (a == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(a);
        }
        stringbuilder.append(", ");
        stringbuilder.append("address:");
        if (b == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(b);
        }
        stringbuilder.append(", ");
        stringbuilder.append("signature:");
        if (c == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(c);
        }
        stringbuilder.append(", ");
        stringbuilder.append("serial_num:");
        stringbuilder.append(d);
        stringbuilder.append(", ");
        stringbuilder.append("ts_secs:");
        stringbuilder.append(e);
        stringbuilder.append(", ");
        stringbuilder.append("length:");
        stringbuilder.append(f);
        stringbuilder.append(", ");
        stringbuilder.append("entity:");
        if (g == null)
        {
            stringbuilder.append("null");
        } else
        {
            ci.a(g, stringbuilder);
        }
        stringbuilder.append(", ");
        stringbuilder.append("guid:");
        if (h == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(h);
        }
        stringbuilder.append(", ");
        stringbuilder.append("checksum:");
        if (i == null)
        {
            stringbuilder.append("null");
        } else
        {
            stringbuilder.append(i);
        }
        if (H())
        {
            stringbuilder.append(", ");
            stringbuilder.append("codex:");
            stringbuilder.append(j);
        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }

    public boolean u()
    {
        return ce.a(B, 2);
    }

    public byte[] v()
    {
        a(ci.c(g));
        if (g == null)
        {
            return null;
        } else
        {
            return g.array();
        }
    }

    public ByteBuffer w()
    {
        return g;
    }

    public void x()
    {
        g = null;
    }

    public boolean y()
    {
        return g != null;
    }

    public String z()
    {
        return h;
    }

    static 
    {
        w = new HashMap();
        w.put(u/aly/dq, new b());
        w.put(u/aly/dr, new d());
        EnumMap enummap = new EnumMap(u/aly/bp$e);
        enummap.put(e.a, new ct("version", (byte)1, new cu((byte)11)));
        enummap.put(e.b, new ct("address", (byte)1, new cu((byte)11)));
        enummap.put(e.c, new ct("signature", (byte)1, new cu((byte)11)));
        enummap.put(e.d, new ct("serial_num", (byte)1, new cu((byte)8)));
        enummap.put(e.e, new ct("ts_secs", (byte)1, new cu((byte)8)));
        enummap.put(e.f, new ct("length", (byte)1, new cu((byte)8)));
        enummap.put(e.g, new ct("entity", (byte)1, new cu((byte)11, true)));
        enummap.put(e.h, new ct("guid", (byte)1, new cu((byte)11)));
        enummap.put(e.i, new ct("checksum", (byte)1, new cu((byte)11)));
        enummap.put(e.j, new ct("codex", (byte)2, new cu((byte)8)));
        k = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bp, k);
    }
}
