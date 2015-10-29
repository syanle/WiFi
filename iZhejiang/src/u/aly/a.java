// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package u.aly:
//            ay, ax, az

public abstract class a
{

    private final int a = 10;
    private final int b = 20;
    private final String c;
    private List d;
    private ay e;

    public a(String s)
    {
        c = s;
    }

    private boolean g()
    {
        boolean flag1 = false;
        Object obj1 = e;
        String s;
        String s1;
        int i;
        boolean flag;
        if (obj1 == null)
        {
            s = null;
        } else
        {
            s = ((ay) (obj1)).c();
        }
        if (obj1 == null)
        {
            i = 0;
        } else
        {
            i = ((ay) (obj1)).j();
        }
        s1 = a(f());
        flag = flag1;
        if (s1 != null)
        {
            flag = flag1;
            if (!s1.equals(s))
            {
                Object obj = obj1;
                if (obj1 == null)
                {
                    obj = new ay();
                }
                ((ay) (obj)).a(s1);
                ((ay) (obj)).a(System.currentTimeMillis());
                ((ay) (obj)).a(i + 1);
                obj1 = new ax();
                ((ax) (obj1)).a(c);
                ((ax) (obj1)).c(s1);
                ((ax) (obj1)).b(s);
                ((ax) (obj1)).a(((ay) (obj)).f());
                if (d == null)
                {
                    d = new ArrayList(2);
                }
                d.add(obj1);
                if (d.size() > 10)
                {
                    d.remove(0);
                }
                e = ((ay) (obj));
                flag = true;
            }
        }
        return flag;
    }

    public String a(String s)
    {
        if (s != null)
        {
            if ((s = s.trim()).length() != 0 && !"0".equals(s) && !"unknown".equals(s.toLowerCase(Locale.US)))
            {
                return s;
            }
        }
        return null;
    }

    public void a(List list)
    {
        d = list;
    }

    public void a(ay ay1)
    {
        e = ay1;
    }

    public void a(az az1)
    {
        e = (ay)az1.d().get(c);
        az1 = az1.j();
        if (az1 != null && az1.size() > 0)
        {
            if (d == null)
            {
                d = new ArrayList();
            }
            az1 = az1.iterator();
            do
            {
                if (!az1.hasNext())
                {
                    break;
                }
                ax ax1 = (ax)az1.next();
                if (c.equals(ax1.a))
                {
                    d.add(ax1);
                }
            } while (true);
        }
    }

    public boolean a()
    {
        return g();
    }

    public String b()
    {
        return c;
    }

    public boolean c()
    {
        return e == null || e.j() <= 20;
    }

    public ay d()
    {
        return e;
    }

    public List e()
    {
        return d;
    }

    public abstract String f();
}
