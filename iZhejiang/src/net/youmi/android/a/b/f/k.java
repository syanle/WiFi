// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

// Referenced classes of package net.youmi.android.a.b.f:
//            j

public class k
{

    private static k d;
    private String a[];
    private j b[];
    private int c;

    public k()
    {
        a = null;
        b = null;
        c = -1;
        break MISSING_BLOCK_LABEL_19;
        if (!d() && !e() && (a == null || b == null))
        {
            System.getProperty("os.name");
            if (System.getProperty("java.vendor").indexOf("Android") != -1)
            {
                f();
                return;
            }
        }
        return;
    }

    private void a(String s, List list)
    {
        if (list.contains(s))
        {
            return;
        } else
        {
            list.add(s);
            return;
        }
    }

    private void a(List list, List list1)
    {
        if (a == null && list.size() > 0)
        {
            a = (String[])(String[])list.toArray(new String[0]);
        }
        if (b == null && list1.size() > 0)
        {
            b = (j[])(j[])list1.toArray(new j[0]);
        }
    }

    public static k b()
    {
        net/youmi/android/a/b/f/k;
        JVM INSTR monitorenter ;
        k k1 = d;
        net/youmi/android/a/b/f/k;
        JVM INSTR monitorexit ;
        return k1;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(String s, List list)
    {
        try
        {
            s = j.a(s, j.a);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        if (list.contains(s))
        {
            return;
        } else
        {
            list.add(s);
            return;
        }
    }

    public static void c()
    {
        k k1 = new k();
        net/youmi/android/a/b/f/k;
        JVM INSTR monitorenter ;
        d = k1;
        net/youmi/android/a/b/f/k;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        net/youmi/android/a/b/f/k;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean d()
    {
        boolean flag1 = false;
        ArrayList arraylist = new ArrayList(0);
        ArrayList arraylist1 = new ArrayList(0);
        Object obj = System.getProperty("dns.server");
        if (obj != null)
        {
            for (obj = new StringTokenizer(((String) (obj)), ","); ((StringTokenizer) (obj)).hasMoreTokens(); a(((StringTokenizer) (obj)).nextToken(), arraylist)) { }
        }
        obj = System.getProperty("dns.search");
        if (obj != null)
        {
            for (obj = new StringTokenizer(((String) (obj)), ","); ((StringTokenizer) (obj)).hasMoreTokens(); b(((StringTokenizer) (obj)).nextToken(), arraylist1)) { }
        }
        a(arraylist, arraylist1);
        boolean flag = flag1;
        if (a != null)
        {
            flag = flag1;
            if (b != null)
            {
                flag = true;
            }
        }
        return flag;
    }

    private boolean e()
    {
        Object obj = new ArrayList(0);
        ArrayList arraylist = new ArrayList(0);
        Object obj1;
        List list;
        try
        {
            Class aclass[] = new Class[0];
            Object aobj[] = new Object[0];
            Class class1 = Class.forName("sun.net.dns.ResolverConfiguration");
            Object obj2 = class1.getDeclaredMethod("open", aclass).invoke(null, aobj);
            obj1 = (List)class1.getMethod("nameservers", aclass).invoke(obj2, aobj);
            list = (List)class1.getMethod("searchlist", aclass).invoke(obj2, aobj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        if (((List) (obj1)).size() == 0)
        {
            return false;
        }
        if (((List) (obj1)).size() > 0)
        {
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); a((String)((Iterator) (obj1)).next(), ((List) (obj)))) { }
        }
        if (list.size() > 0)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext(); b((String)iterator.next(), arraylist)) { }
        }
        a(((List) (obj)), arraylist);
        return true;
    }

    private void f()
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        Method method;
        String as[];
        method = Class.forName("android.os.SystemProperties").getMethod("get", new Class[] {
            java/lang/String
        });
        as = new String[4];
        int i;
        as[0] = "net.dns1";
        as[1] = "net.dns2";
        as[2] = "net.dns3";
        as[3] = "net.dns4";
        i = 0;
_L1:
        String s;
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        s = (String)method.invoke(null, new Object[] {
            as[i]
        });
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        if ((s.matches("^\\d+(\\.\\d+){3}$") || s.matches("^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$")) && !arraylist.contains(s))
        {
            arraylist.add(s);
        }
        i++;
          goto _L1
        Exception exception;
        exception;
        a(arraylist, arraylist1);
        return;
    }

    public String a()
    {
        if (a == null)
        {
            return null;
        } else
        {
            return a[0];
        }
    }

    static 
    {
        c();
    }
}
