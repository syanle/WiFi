// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            e, g, b, j, 
//            i, h, cq, cd, 
//            az, a, ck, x

public class d
{
    public static class a
    {

        private Context a;
        private Set b;

        public void a()
        {
            if (!b.isEmpty())
            {
                StringBuilder stringbuilder = new StringBuilder();
                for (Iterator iterator = b.iterator(); iterator.hasNext(); stringbuilder.append(','))
                {
                    stringbuilder.append((String)iterator.next());
                }

                stringbuilder.deleteCharAt(stringbuilder.length() - 1);
                x.a(a).edit().putString("invld_id", stringbuilder.toString()).commit();
            }
        }

        public boolean a(String s)
        {
            return !b.contains(s);
        }

        public void b()
        {
            String s = x.a(a).getString("invld_id", null);
            if (!TextUtils.isEmpty(s))
            {
                String as[] = s.split(",");
                if (as != null)
                {
                    int l = as.length;
                    for (int k = 0; k < l; k++)
                    {
                        String s1 = as[k];
                        if (!TextUtils.isEmpty(s1))
                        {
                            b.add(s1);
                        }
                    }

                }
            }
        }

        public void b(String s)
        {
            b.add(s);
        }

        public void c(String s)
        {
            b.remove(s);
        }

        public a(Context context)
        {
            b = new HashSet();
            a = context;
        }
    }


    public static d a;
    private final String b = "umeng_it.cache";
    private File c;
    private az d;
    private long e;
    private long f;
    private Set g;
    private a h;

    d(Context context)
    {
        d = null;
        g = new HashSet();
        h = null;
        c = new File(context.getFilesDir(), "umeng_it.cache");
        f = 0x5265c00L;
        h = new a(context);
        h.b();
    }

    public static d a(Context context)
    {
        u/aly/d;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new d(context);
            a.a(((u.aly.a) (new e(context))));
            a.a(((u.aly.a) (new g(context))));
            a.a(((u.aly.a) (new b(context))));
            a.a(((u.aly.a) (new j(context))));
            a.a(((u.aly.a) (new i(context))));
            a.a(((u.aly.a) (new h())));
            a.e();
        }
        context = a;
        u/aly/d;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private void a(az az1)
    {
        if (az1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        this;
        JVM INSTR monitorenter ;
        az1 = (new cq()).a(az1);
        this;
        JVM INSTR monitorexit ;
        if (az1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        cd.a(c, az1);
        return;
        az1;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw az1;
        }
        // Misplaced declaration of an exception variable
        catch (az az1)
        {
            az1.printStackTrace();
        }
        return;
    }

    private void g()
    {
        az az1;
        az1 = new az();
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        Iterator iterator = g.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            u.aly.a a1 = (u.aly.a)iterator.next();
            if (a1.c())
            {
                if (a1.d() != null)
                {
                    hashmap.put(a1.b(), a1.d());
                }
                if (a1.e() != null && !a1.e().isEmpty())
                {
                    arraylist.addAll(a1.e());
                }
            }
        } while (true);
        az1.a(arraylist);
        az1.a(hashmap);
        this;
        JVM INSTR monitorenter ;
        d = az1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private az h()
    {
        if (!c.exists())
        {
            return null;
        }
        Object obj1 = new FileInputStream(c);
        Object obj = obj1;
        byte abyte0[] = cd.b(((java.io.InputStream) (obj1)));
        obj = obj1;
        az az1 = new az();
        obj = obj1;
        (new ck()).a(az1, abyte0);
        cd.c(((java.io.InputStream) (obj1)));
        return az1;
        Object obj2;
        obj2;
        obj1 = null;
_L4:
        obj = obj1;
        ((Exception) (obj2)).printStackTrace();
        cd.c(((java.io.InputStream) (obj1)));
        return null;
        obj;
        java.io.InputStream inputstream;
        inputstream = null;
        obj1 = obj;
_L2:
        cd.c(inputstream);
        throw obj1;
        obj1;
        inputstream = ((java.io.InputStream) (obj));
        if (true) goto _L2; else goto _L1
_L1:
        inputstream;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a()
    {
        long l = System.currentTimeMillis();
        if (l - e >= f)
        {
            Iterator iterator = g.iterator();
            boolean flag = false;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                u.aly.a a1 = (u.aly.a)iterator.next();
                if (a1.c() && a1.a())
                {
                    boolean flag1 = true;
                    flag = flag1;
                    if (!a1.c())
                    {
                        h.b(a1.b());
                        flag = flag1;
                    }
                }
            } while (true);
            if (flag)
            {
                g();
                h.a();
                f();
            }
            e = l;
        }
    }

    public void a(long l)
    {
        f = l;
    }

    public boolean a(u.aly.a a1)
    {
        if (h.a(a1.b()))
        {
            return g.add(a1);
        } else
        {
            return false;
        }
    }

    public az b()
    {
        return d;
    }

    public String c()
    {
        return null;
    }

    public void d()
    {
        Iterator iterator = g.iterator();
        boolean flag = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            u.aly.a a1 = (u.aly.a)iterator.next();
            if (a1.c() && (a1.e() != null && !a1.e().isEmpty()))
            {
                a1.a(null);
                flag = true;
            }
        } while (true);
        if (flag)
        {
            d.b(false);
            f();
        }
    }

    public void e()
    {
        Object obj1;
        obj1 = h();
        if (obj1 == null)
        {
            return;
        }
        Object obj = new ArrayList(g.size());
        this;
        JVM INSTR monitorenter ;
        d = ((az) (obj1));
        obj1 = g.iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            u.aly.a a2 = (u.aly.a)((Iterator) (obj1)).next();
            a2.a(d);
            if (!a2.c())
            {
                ((List) (obj)).add(a2);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_94;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        u.aly.a a1;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); g.remove(a1))
        {
            a1 = (u.aly.a)((Iterator) (obj)).next();
        }

        this;
        JVM INSTR monitorexit ;
        g();
        return;
    }

    public void f()
    {
        if (d != null)
        {
            a(d);
        }
    }
}
