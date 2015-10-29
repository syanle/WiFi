// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            ch, dq, dr, ci, 
//            cn, dg, dp, do, 
//            db, co, dl, dh

public abstract class cr
    implements ch
{
    private static class a extends dq
    {

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (cr)ch1);
        }

        public void a(dg dg1, cr cr1)
            throws cn
        {
            cr1.c = null;
            cr1.b = null;
            dg1.j();
            db db1 = dg1.l();
            cr1.b = cr1.a(dg1, db1);
            if (cr1.b != null)
            {
                cr1.c = cr1.b(db1.c);
            }
            dg1.m();
            dg1.l();
            dg1.k();
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (cr)ch1);
        }

        public void b(dg dg1, cr cr1)
            throws cn
        {
            if (cr1.i() == null || cr1.j() == null)
            {
                throw new dh("Cannot write a TUnion with no set value!");
            } else
            {
                dg1.a(cr1.c());
                dg1.a(cr1.a(cr1.c));
                cr1.c(dg1);
                dg1.c();
                dg1.d();
                dg1.b();
                return;
            }
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

        public void a(dg dg1, ch ch1)
            throws cn
        {
            b(dg1, (cr)ch1);
        }

        public void a(dg dg1, cr cr1)
            throws cn
        {
            cr1.c = null;
            cr1.b = null;
            short word0 = dg1.v();
            cr1.b = cr1.a(dg1, word0);
            if (cr1.b != null)
            {
                cr1.c = cr1.b(word0);
            }
        }

        public void b(dg dg1, ch ch1)
            throws cn
        {
            a(dg1, (cr)ch1);
        }

        public void b(dg dg1, cr cr1)
            throws cn
        {
            if (cr1.i() == null || cr1.j() == null)
            {
                throw new dh("Cannot write a TUnion with no set value!");
            } else
            {
                dg1.a(cr1.c.a());
                cr1.d(dg1);
                return;
            }
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


    private static final Map a;
    protected Object b;
    protected co c;

    protected cr()
    {
        c = null;
        b = null;
    }

    protected cr(co co, Object obj)
    {
        b(co, obj);
    }

    protected cr(cr cr1)
    {
        if (!cr1.getClass().equals(getClass()))
        {
            throw new ClassCastException();
        } else
        {
            c = cr1.c;
            b = a(cr1.b);
            return;
        }
    }

    private static Object a(Object obj)
    {
        Object obj1;
        if (obj instanceof ch)
        {
            obj1 = ((ch)obj).g();
        } else
        {
            if (obj instanceof ByteBuffer)
            {
                return ci.d((ByteBuffer)obj);
            }
            if (obj instanceof List)
            {
                return a((List)obj);
            }
            if (obj instanceof Set)
            {
                return a((Set)obj);
            }
            obj1 = obj;
            if (obj instanceof Map)
            {
                return a((Map)obj);
            }
        }
        return obj1;
    }

    private static List a(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        for (list = list.iterator(); list.hasNext(); arraylist.add(a(list.next()))) { }
        return arraylist;
    }

    private static Map a(Map map)
    {
        HashMap hashmap = new HashMap();
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); hashmap.put(a(entry.getKey()), a(entry.getValue())))
        {
            entry = (java.util.Map.Entry)map.next();
        }

        return hashmap;
    }

    private static Set a(Set set)
    {
        HashSet hashset = new HashSet();
        for (set = set.iterator(); set.hasNext(); hashset.add(a(set.next()))) { }
        return hashset;
    }

    protected abstract Object a(dg dg1, db db1)
        throws cn;

    protected abstract Object a(dg dg1, short word0)
        throws cn;

    protected abstract db a(co co);

    public void a(int l, Object obj)
    {
        b(b((short)l), obj);
    }

    protected abstract void a(co co, Object obj)
        throws ClassCastException;

    public void a(dg dg1)
        throws cn
    {
        ((dp)a.get(dg1.D())).b().b(dg1, this);
    }

    public Object b(co co)
    {
        if (co != c)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Cannot get the value of field ").append(co).append(" because union's set field is ").append(c).toString());
        } else
        {
            return j();
        }
    }

    protected abstract co b(short word0);

    public final void b()
    {
        c = null;
        b = null;
    }

    public void b(co co, Object obj)
    {
        a(co, obj);
        c = co;
        b = obj;
    }

    public void b(dg dg1)
        throws cn
    {
        ((dp)a.get(dg1.D())).b().a(dg1, this);
    }

    public Object c(int l)
    {
        return b(b((short)l));
    }

    protected abstract dl c();

    protected abstract void c(dg dg1)
        throws cn;

    public boolean c(co co)
    {
        return c == co;
    }

    protected abstract void d(dg dg1)
        throws cn;

    public boolean d(int l)
    {
        return c(b((short)l));
    }

    public co i()
    {
        return c;
    }

    public Object j()
    {
        return b;
    }

    public boolean k()
    {
        return c != null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<");
        stringbuilder.append(getClass().getSimpleName());
        stringbuilder.append(" ");
        if (i() != null)
        {
            Object obj = j();
            stringbuilder.append(a(i()).a);
            stringbuilder.append(":");
            if (obj instanceof ByteBuffer)
            {
                ci.a((ByteBuffer)obj, stringbuilder);
            } else
            {
                stringbuilder.append(obj.toString());
            }
        }
        stringbuilder.append(">");
        return stringbuilder.toString();
    }

    static 
    {
        a = new HashMap();
        a.put(u/aly/dq, new b());
        a.put(u/aly/dr, new d());
    }
}
