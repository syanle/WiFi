// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            cr, dl, db, ct, 
//            cu, cn, da, ds, 
//            dg, dj, dh, ci, 
//            co, ch

public class bh extends cr
{
    public static final class a extends Enum
        implements co
    {

        public static final a a;
        public static final a b;
        private static final Map c;
        private static final a f[];
        private final short d;
        private final String e;

        public static a a(int i)
        {
            switch (i)
            {
            default:
                return null;

            case 1: // '\001'
                return a;

            case 2: // '\002'
                return b;
            }
        }

        public static a a(String s)
        {
            return (a)c.get(s);
        }

        public static a b(int i)
        {
            a a1 = a(i);
            if (a1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Field ").append(i).append(" doesn't exist!").toString());
            } else
            {
                return a1;
            }
        }

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(u/aly/bh$a, s);
        }

        public static a[] values()
        {
            return (a[])f.clone();
        }

        public short a()
        {
            return d;
        }

        public String b()
        {
            return e;
        }

        static 
        {
            a = new a("STRING_VALUE", 0, (short)1, "string_value");
            b = new a("LONG_VALUE", 1, (short)2, "long_value");
            f = (new a[] {
                a, b
            });
            c = new HashMap();
            a a1;
            for (Iterator iterator = EnumSet.allOf(u/aly/bh$a).iterator(); iterator.hasNext(); c.put(a1.b(), a1))
            {
                a1 = (a)iterator.next();
            }

        }

        private a(String s, int i, short word0, String s1)
        {
            super(s, i);
            d = word0;
            e = s1;
        }
    }


    public static final Map a;
    private static final dl d = new dl("PropertyValue");
    private static final db e = new db("string_value", (byte)11, (short)1);
    private static final db f = new db("long_value", (byte)10, (short)2);

    public bh()
    {
    }

    public bh(a a1, Object obj)
    {
        super(a1, obj);
    }

    public bh(bh bh1)
    {
        super(bh1);
    }

    public static bh a(long l)
    {
        bh bh1 = new bh();
        bh1.b(l);
        return bh1;
    }

    public static bh a(String s)
    {
        bh bh1 = new bh();
        bh1.b(s);
        return bh1;
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

    protected Object a(dg dg1, db db1)
        throws cn
    {
label0:
        {
label1:
            {
                String s = null;
                a a1 = a.a(db1.c);
                if (a1 != null)
                {
                    static class _cls1
                    {

                        static final int a[];

                        static 
                        {
                            a = new int[a.values().length];
                            try
                            {
                                a[a.a.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                a[a.b.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror)
                            {
                                return;
                            }
                        }
                    }

                    switch (_cls1.a[a1.ordinal()])
                    {
                    default:
                        throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");

                    case 2: // '\002'
                        break label0;

                    case 1: // '\001'
                        break;
                    }
                    if (db1.b != e.b)
                    {
                        break label1;
                    }
                    s = dg1.z();
                }
                return s;
            }
            dj.a(dg1, db1.b);
            return null;
        }
        if (db1.b == f.b)
        {
            return Long.valueOf(dg1.x());
        } else
        {
            dj.a(dg1, db1.b);
            return null;
        }
    }

    protected Object a(dg dg1, short word0)
        throws cn
    {
        a a1 = a.a(word0);
        if (a1 != null)
        {
            switch (_cls1.a[a1.ordinal()])
            {
            default:
                throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");

            case 1: // '\001'
                return dg1.z();

            case 2: // '\002'
                return Long.valueOf(dg1.x());
            }
        } else
        {
            throw new dh((new StringBuilder()).append("Couldn't find a field with field id ").append(word0).toString());
        }
    }

    public a a(int i)
    {
        return a.a(i);
    }

    protected a a(short word0)
    {
        return a.b(word0);
    }

    public bh a()
    {
        return new bh(this);
    }

    protected db a(a a1)
    {
        switch (_cls1.a[a1.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown field id ").append(a1).toString());

        case 1: // '\001'
            return e;

        case 2: // '\002'
            return f;
        }
    }

    protected volatile db a(co co)
    {
        return a((a)co);
    }

    protected void a(a a1, Object obj)
        throws ClassCastException
    {
        _cls1.a[a1.ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 59
    //                   2 100;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown field id ").append(a1).toString());
_L2:
        if (!(obj instanceof String)) goto _L5; else goto _L4
_L4:
        return;
_L5:
        throw new ClassCastException((new StringBuilder()).append("Was expecting value of type String for field 'string_value', but got ").append(obj.getClass().getSimpleName()).toString());
_L3:
        if (!(obj instanceof Long))
        {
            throw new ClassCastException((new StringBuilder()).append("Was expecting value of type Long for field 'long_value', but got ").append(obj.getClass().getSimpleName()).toString());
        }
        if (true) goto _L4; else goto _L6
_L6:
    }

    protected volatile void a(co co, Object obj)
        throws ClassCastException
    {
        a((a)co, obj);
    }

    public boolean a(bh bh1)
    {
        return bh1 != null && i() == bh1.i() && j().equals(bh1.j());
    }

    public int b(bh bh1)
    {
        int j = ci.a((Comparable)i(), (Comparable)bh1.i());
        int i = j;
        if (j == 0)
        {
            i = ci.a(j(), bh1.j());
        }
        return i;
    }

    public co b(int i)
    {
        return a(i);
    }

    protected co b(short word0)
    {
        return a(word0);
    }

    public void b(long l)
    {
        c = a.b;
        b = Long.valueOf(l);
    }

    public void b(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            c = a.a;
            b = s;
            return;
        }
    }

    protected dl c()
    {
        return d;
    }

    protected void c(dg dg1)
        throws cn
    {
        switch (_cls1.a[((a)c).ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Cannot write union with unknown field ").append(c).toString());

        case 1: // '\001'
            dg1.a((String)b);
            return;

        case 2: // '\002'
            dg1.a(((Long)b).longValue());
            break;
        }
    }

    public String d()
    {
        if (i() == a.a)
        {
            return (String)j();
        } else
        {
            throw new RuntimeException((new StringBuilder()).append("Cannot get field 'string_value' because union is currently set to ").append(a((a)i()).a).toString());
        }
    }

    protected void d(dg dg1)
        throws cn
    {
        switch (_cls1.a[((a)c).ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Cannot write union with unknown field ").append(c).toString());

        case 1: // '\001'
            dg1.a((String)b);
            return;

        case 2: // '\002'
            dg1.a(((Long)b).longValue());
            break;
        }
    }

    public long e()
    {
        if (i() == a.b)
        {
            return ((Long)j()).longValue();
        } else
        {
            throw new RuntimeException((new StringBuilder()).append("Cannot get field 'long_value' because union is currently set to ").append(a((a)i()).a).toString());
        }
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof bh)
        {
            return a((bh)obj);
        } else
        {
            return false;
        }
    }

    public boolean f()
    {
        return c == a.a;
    }

    public ch g()
    {
        return a();
    }

    public boolean h()
    {
        return c == a.b;
    }

    public int hashCode()
    {
        return 0;
    }

    static 
    {
        EnumMap enummap = new EnumMap(u/aly/bh$a);
        enummap.put(a.a, new ct("string_value", (byte)3, new cu((byte)11)));
        enummap.put(a.b, new ct("long_value", (byte)3, new cu((byte)10)));
        a = Collections.unmodifiableMap(enummap);
        ct.a(u/aly/bh, a);
    }
}
