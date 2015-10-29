// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            ai, x, ab, br

public class ad
{

    private static final String a = "activities";
    private final Map b = new HashMap();
    private final ArrayList c = new ArrayList();

    public ad()
    {
    }

    public static List a(SharedPreferences sharedpreferences)
    {
        String s = sharedpreferences.getString("activities", "");
        if (!"".equals(s)) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        sharedpreferences = new ArrayList();
        String as[] = s.split(";");
        int i = 0;
_L4:
        if (i >= as.length)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s1 = as[i];
        if (TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_89;
        }
        try
        {
            sharedpreferences.add(new ai(s1));
            break MISSING_BLOCK_LABEL_89;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (sharedpreferences.size() <= 0) goto _L1; else goto _L3
_L3:
        return sharedpreferences;
        i++;
          goto _L4
    }

    public void a()
    {
        String s;
        long l;
        s = null;
        l = 0L;
        Map map = b;
        map;
        JVM INSTR monitorenter ;
        Iterator iterator = b.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (((Long)entry.getValue()).longValue() > l)
            {
                l = ((Long)entry.getValue()).longValue();
                s = (String)entry.getKey();
            }
        } while (true);
        map;
        JVM INSTR monitorexit ;
        if (s != null)
        {
            b(s);
        }
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Context context)
    {
        Object obj;
        obj = x.a(context);
        context = ((SharedPreferences) (obj)).edit();
        if (c.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        String s = ((SharedPreferences) (obj)).getString("activities", "");
        obj = new StringBuilder();
        if (!TextUtils.isEmpty(s))
        {
            ((StringBuilder) (obj)).append(s);
            ((StringBuilder) (obj)).append(";");
        }
        ArrayList arraylist = c;
        arraylist;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((StringBuilder) (obj)).append(";"))
        {
            ab ab1 = (ab)iterator.next();
            ((StringBuilder) (obj)).append(String.format("[\"%s\",%d]", new Object[] {
                ab1.a, Long.valueOf(ab1.b)
            }));
        }

        break MISSING_BLOCK_LABEL_147;
        context;
        arraylist;
        JVM INSTR monitorexit ;
        throw context;
        c.clear();
        arraylist;
        JVM INSTR monitorexit ;
        ((StringBuilder) (obj)).deleteCharAt(((StringBuilder) (obj)).length() - 1);
        context.remove("activities");
        context.putString("activities", ((StringBuilder) (obj)).toString());
        context.commit();
        return;
    }

    public void a(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            synchronized (b)
            {
                b.put(s, Long.valueOf(System.currentTimeMillis()));
            }
            return;
        } else
        {
            return;
        }
        s;
        map;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void b(String s)
    {
        Long long1;
        if (!TextUtils.isEmpty(s))
        {
            synchronized (b)
            {
                long1 = (Long)b.remove(s);
            }
            if (long1 != null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            br.e("MobclickAgent", String.format("please call 'onPageStart(%s)' before onPageEnd", new Object[] {
                s
            }));
        }
        return;
        s;
        map;
        JVM INSTR monitorexit ;
        throw s;
        long l = System.currentTimeMillis();
        long l1 = long1.longValue();
        synchronized (c)
        {
            c.add(new ab(s, l - l1));
        }
        return;
        s;
        arraylist;
        JVM INSTR monitorexit ;
        throw s;
    }
}
