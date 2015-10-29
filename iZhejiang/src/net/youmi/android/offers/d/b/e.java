// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.b.d.a;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.d.h;
import net.youmi.android.a.b.k.n;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.offers.d.b:
//            d, b

public class e
{

    private static e a;
    private static String g;
    private static String h;
    private static String i;
    private Context b;
    private int c;
    private int d;
    private int e;
    private String f;

    e(Context context)
    {
        c = 0;
        d = 0;
        e = 0;
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            b = context.getApplicationContext();
            return;
        }
    }

    private String a(String s, String s1)
    {
        try
        {
            String s2 = b.getPackageName();
            String s3 = net.youmi.android.a.b.h.e.b(b);
            s = net.youmi.android.a.b.d.g.a((new StringBuilder()).append(s2).append(s3).append(s).toString()).substring(12, 20);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return s1;
        }
        return s;
    }

    public static e a(Context context)
    {
        net/youmi/android/offers/d/b/e;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new e(context);
        }
        context = a;
        net/youmi/android/offers/d/b/e;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    private boolean a(Context context, int i1)
    {
        boolean flag;
        try
        {
            byte abyte0[] = net.youmi.android.a.b.d.h.a();
            String s = new String(net.youmi.android.a.b.d.a.a(abyte0));
            context = net.youmi.android.a.b.d.h.a(Integer.toString(i1), context.getPackageName().trim(), abyte0);
            flag = a(b, ((String) (context)), s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }

    private boolean a(Context context, String s, String s1)
    {
        "c";
        JVM INSTR monitorenter ;
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag = net.youmi.android.a.b.c.f.a(b, l(), s1, -1L);
        flag1 = net.youmi.android.a.b.c.f.a(b, k(), s, -1L);
        context = (new StringBuilder()).append(System.currentTimeMillis()).append("").toString();
        flag2 = net.youmi.android.a.b.c.f.a(b, m(), context, -1L);
        if (!flag || !flag1 || !flag2)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        a(b, s, s1, ((String) (context)));
        "c";
        JVM INSTR monitorexit ;
        return true;
_L2:
        "c";
        JVM INSTR monitorexit ;
        return false;
        context;
        "c";
        JVM INSTR monitorexit ;
        throw context;
        context;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean a(Context context, String s, String s1, String s2)
    {
        "b";
        JVM INSTR monitorenter ;
        context = new JSONObject();
        boolean flag;
        try
        {
            context.put(k(), s);
            context.put(l(), s1);
            context.put(m(), s2);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        flag = net.youmi.android.offers.d.b.d.a(b, i(), g(), context.toString(), net.youmi.android.a.b.d.g.a(b.getPackageName()).substring(12, 20));
        "b";
        JVM INSTR monitorexit ;
        return flag;
        context;
        "b";
        JVM INSTR monitorexit ;
        throw context;
    }

    private int b(Context context)
    {
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        Object obj = context.getSharedPreferences(net.youmi.android.offers.b.a.h(), 0);
        int i1 = ((flag) ? 1 : 0);
        if (obj == null) goto _L2; else goto _L1
_L1:
        String s = ((SharedPreferences) (obj)).getString(net.youmi.android.offers.b.a.i(), null);
        if (s != null) goto _L4; else goto _L3
_L3:
        i1 = ((flag) ? 1 : 0);
_L2:
        this;
        JVM INSTR monitorexit ;
        return i1;
_L4:
        obj = ((SharedPreferences) (obj)).getString(net.youmi.android.offers.b.a.j(), null);
        i1 = ((flag) ? 1 : 0);
        if (obj != null)
        {
            try
            {
                i1 = Integer.parseInt(net.youmi.android.a.b.d.h.b(s, context.getPackageName().trim(), net.youmi.android.a.b.d.a.b(((String) (obj)).getBytes())));
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                i1 = ((flag) ? 1 : 0);
            }
            finally
            {
                this;
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
        JVM INSTR monitorexit ;
        throw context;
    }

    private void b()
    {
label0:
        {
            boolean flag;
            try
            {
                Object obj = b.getSharedPreferences(net.youmi.android.offers.b.a.h(), 0).edit();
                ((android.content.SharedPreferences.Editor) (obj)).clear();
                ((android.content.SharedPreferences.Editor) (obj)).commit();
                obj = new File((new StringBuilder()).append("/data/data/").append(b.getPackageName()).append("/shared_prefs").toString(), (new StringBuilder()).append(net.youmi.android.offers.b.a.h()).append(".xml").toString());
                if (!((File) (obj)).exists())
                {
                    break label0;
                }
                flag = ((File) (obj)).delete();
            }
            catch (Throwable throwable)
            {
                return;
            }
            if (!flag);
        }
    }

    private int c(Context context)
    {
        c();
        return d(context);
    }

    private void c()
    {
        Object obj;
        String s1;
        s1 = net.youmi.android.a.b.c.f.a(b, m(), "0");
        if (!"0".equals(s1))
        {
            break MISSING_BLOCK_LABEL_61;
        }
        obj = new File(net.youmi.android.a.b.c.f.a(b));
        s1 = (new StringBuilder()).append(((File) (obj)).lastModified()).append("").toString();
        "b";
        JVM INSTR monitorenter ;
        String s2;
        Object obj1;
        s2 = "";
        obj1 = "";
        Object obj2 = net.youmi.android.offers.d.b.d.a(b, i(), g(), net.youmi.android.a.b.d.g.a(b.getPackageName()).substring(12, 20));
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        "b";
        JVM INSTR monitorexit ;
        return;
        String s;
        obj = obj1;
        s = s2;
        obj2 = net.youmi.android.a.b.b.b.a(((String) (obj2)));
        obj = obj1;
        s = s2;
        s2 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), k(), "");
        obj = obj1;
        s = s2;
        obj1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), l(), "");
        obj = obj1;
        s = s2;
        obj2 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj2)), m(), "");
        obj = obj2;
        s = s2;
_L2:
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        boolean flag = "".equals(s1);
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        "b";
        JVM INSTR monitorexit ;
        return;
        obj;
        "b";
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
        Throwable throwable1;
        throwable1;
        obj1 = obj;
        obj = "";
        if (true) goto _L2; else goto _L1
_L1:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        flag = "".equals(obj);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        "b";
        JVM INSTR monitorexit ;
        return;
        try
        {
            if (!s1.equals(obj))
            {
                long l1 = Long.parseLong(net.youmi.android.a.b.b.e.c(s1));
                if (Long.parseLong(net.youmi.android.a.b.b.e.c(((String) (obj)))) > l1)
                {
                    a(b, s, ((String) (obj1)));
                }
            }
        }
        catch (Throwable throwable) { }
        "b";
        JVM INSTR monitorexit ;
    }

    private int d()
    {
        int i1;
        try
        {
            if (e())
            {
                a(b, b(b));
                if (f())
                {
                    b();
                }
            }
            i1 = c(b);
        }
        catch (Throwable throwable)
        {
            return 0;
        }
        return i1;
    }

    private int d(Context context)
    {
        int i1 = 0;
        "c";
        JVM INSTR monitorenter ;
        String s;
        String s1;
        s = net.youmi.android.a.b.c.f.a(b, k(), "0");
        s1 = net.youmi.android.a.b.c.f.a(b, l(), "0");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        boolean flag = "0".equals(s);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        "c";
        JVM INSTR monitorexit ;
        return 0;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        flag = "0".equals(s1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        "c";
        JVM INSTR monitorexit ;
        return 0;
        context;
        "c";
        JVM INSTR monitorexit ;
        throw context;
        int j1 = Integer.parseInt(net.youmi.android.a.b.d.h.b(s, context.getPackageName().trim(), net.youmi.android.a.b.d.a.b(s1.getBytes())));
        i1 = j1;
_L2:
        "c";
        JVM INSTR monitorexit ;
        return i1;
        context;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean e()
    {
        boolean flag = true;
        "f";
        JVM INSTR monitorenter ;
        if (c == 0)
        {
            if (!"true".equals(net.youmi.android.offers.d.b.d.a(b, i(), h(), net.youmi.android.a.b.d.g.a(b.getPackageName()).substring(12, 20))))
            {
                break MISSING_BLOCK_LABEL_99;
            }
            c = 2;
        }
_L1:
        if (1 == c)
        {
            d = 0;
        }
        if (2 == c)
        {
            d = 1;
        }
        Exception exception;
        if (c != 1)
        {
            flag = false;
        }
        "f";
        JVM INSTR monitorexit ;
        return flag;
        c = 1;
          goto _L1
        exception;
        "f";
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean f()
    {
        boolean flag = true;
        "f";
        JVM INSTR monitorenter ;
        if (d == 0)
        {
            if (!net.youmi.android.offers.d.b.d.a(b, i(), h(), "true", net.youmi.android.a.b.d.g.a(b.getPackageName()).substring(12, 20)))
            {
                break MISSING_BLOCK_LABEL_96;
            }
            d = 1;
        }
_L1:
        if (1 == d)
        {
            c = 2;
        }
        if (2 == d)
        {
            c = 0;
        }
        Exception exception;
        if (d != 1)
        {
            flag = false;
        }
        "f";
        JVM INSTR monitorexit ;
        return flag;
        d = 2;
          goto _L1
        exception;
        "f";
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String g()
    {
        return (new StringBuilder()).append(h()).append("b").toString();
    }

    private String h()
    {
        String s = b.getPackageName();
        String s1 = net.youmi.android.a.b.h.e.b(b);
        return net.youmi.android.a.b.d.g.a((new StringBuilder()).append(s).append(s1).append("points").toString());
    }

    private String i()
    {
        return (new StringBuilder()).append(n.c()).append(j()).toString();
    }

    private String j()
    {
        if (f == null)
        {
            f = net.youmi.android.offers.b.a.k();
        }
        return f;
    }

    private String k()
    {
        if (g == null)
        {
            g = a("p", "tpsss");
        }
        return g;
    }

    private String l()
    {
        if (h == null)
        {
            h = a("s", "salt");
        }
        return h;
    }

    private String m()
    {
        if (i == null)
        {
            i = a("t", "lput");
        }
        return i;
    }

    public int a()
    {
        int i1 = 0;
        this;
        JVM INSTR monitorenter ;
        int j1 = d();
        i1 = j1;
_L2:
        this;
        JVM INSTR monitorexit ;
        return i1;
        Object obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a(int i1)
    {
        boolean flag;
        boolean flag2;
        flag = false;
        flag2 = false;
        if (i1 > 0) goto _L2; else goto _L1
_L1:
        return flag2;
_L2:
        boolean flag1 = flag;
        i1 = a() + i1;
        flag1 = flag;
        flag = a(b, i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        flag1 = flag;
        net.youmi.android.a.a.j.a.b.a().b(i1);
        flag2 = flag;
        if (flag)
        {
            try
            {
                net.youmi.android.offers.d.b.b.a(b).a();
            }
            catch (Throwable throwable)
            {
                return flag;
            }
            return flag;
        }
          goto _L1
        Object obj;
        obj;
        flag2 = flag1;
        if (!flag1) goto _L1; else goto _L3
_L3:
        try
        {
            net.youmi.android.offers.d.b.b.a(b).a();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return flag1;
        }
        return flag1;
        obj;
        flag = false;
_L5:
        if (flag)
        {
            try
            {
                net.youmi.android.offers.d.b.b.a(b).a();
            }
            catch (Throwable throwable1) { }
        }
        throw obj;
        obj;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean b(int i1)
    {
        boolean flag;
        boolean flag2;
        flag = false;
        flag2 = false;
        if (i1 > 0) goto _L2; else goto _L1
_L1:
        return flag2;
_L2:
        boolean flag1 = flag;
        int j1 = a();
        if (j1 - i1 < 0) goto _L1; else goto _L3
_L3:
        i1 = j1 - i1;
        flag1 = flag;
        flag = a(b, i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        flag1 = flag;
        net.youmi.android.a.a.j.a.b.a().b(i1);
        flag2 = flag;
        if (flag)
        {
            try
            {
                net.youmi.android.offers.d.b.b.a(b).a();
            }
            catch (Throwable throwable)
            {
                return flag;
            }
            return flag;
        }
          goto _L1
        Object obj;
        obj;
        flag2 = flag1;
        if (!flag1) goto _L1; else goto _L4
_L4:
        try
        {
            net.youmi.android.offers.d.b.b.a(b).a();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return flag1;
        }
        return flag1;
        obj;
        flag = false;
_L6:
        if (flag)
        {
            try
            {
                net.youmi.android.offers.d.b.b.a(b).a();
            }
            catch (Throwable throwable1) { }
        }
        throw obj;
        obj;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
