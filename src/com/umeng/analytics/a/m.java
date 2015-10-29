// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.f;
import com.umeng.analytics.g;
import com.umeng.analytics.j;
import com.umeng.common.Log;
import com.umeng.common.b;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            l, g, o, p, 
//            k

public class m extends l
    implements com.umeng.analytics.a.g
{

    private static final String k = "duration";
    private static final String l = "activities";
    private static final String m = "terminate_time";
    public o a;
    public p b;
    public long c;
    private ArrayList d;

    public m()
    {
        c = 0L;
        d = new ArrayList();
    }

    public m(String s)
    {
        c = 0L;
        d = new ArrayList();
        e = s;
    }

    public static android.content.SharedPreferences.Editor a(SharedPreferences sharedpreferences, String s, long l1, long l2)
    {
        l1 = l2 - l1;
        long l3 = sharedpreferences.getLong("duration", 0L);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        if (g.j)
        {
            String s1 = sharedpreferences.getString("activities", "");
            sharedpreferences = s1;
            if (!"".equals(s1))
            {
                sharedpreferences = (new StringBuilder()).append(s1).append(";").toString();
            }
            sharedpreferences = (new StringBuilder()).append(sharedpreferences).append(String.format("[\"%s\",%d]", new Object[] {
                s, Long.valueOf(l1 / 1000L)
            })).toString();
            editor.remove("activities");
            editor.putString("activities", sharedpreferences);
        }
        editor.putLong("duration", l1 + l3);
        editor.putLong("terminate_time", l2);
        editor.commit();
        return editor;
    }

    public static android.content.SharedPreferences.Editor a(SharedPreferences sharedpreferences, ArrayList arraylist, long l1, long l2)
    {
        long l3 = sharedpreferences.getLong("duration", 0L);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        if (arraylist.size() > 0)
        {
            String s = sharedpreferences.getString("activities", "");
            sharedpreferences = new StringBuilder();
            if (!TextUtils.isEmpty(s))
            {
                sharedpreferences.append(s);
                sharedpreferences.append(";");
            }
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); sharedpreferences.append(";"))
            {
                f f1 = (f)arraylist.next();
                sharedpreferences.append(String.format("[\"%s\",%d]", new Object[] {
                    f1.a, Long.valueOf(f1.b / 1000L)
                }));
            }

            sharedpreferences.deleteCharAt(sharedpreferences.length() - 1);
            editor.remove("activities");
            editor.putString("activities", sharedpreferences.toString());
        }
        editor.putLong("duration", (l2 - l1) + l3);
        editor.putLong("terminate_time", l2);
        editor.commit();
        return editor;
    }

    public static m a(Context context)
    {
        SharedPreferences sharedpreferences = j.e(context);
        Object obj = sharedpreferences.getString("session_id", null);
        if (obj == null)
        {
            return null;
        }
        obj = new m(((String) (obj)));
        o o1 = com.umeng.analytics.a.o.b(context);
        if (o1 != null && o1.a())
        {
            obj.a = o1;
        }
        context = p.a(context);
        if (context != null && context.a())
        {
            obj.b = context;
        }
        obj.d = c(sharedpreferences);
        obj.c = d(sharedpreferences);
        context = b(sharedpreferences);
        if (context != null && context.length == 2)
        {
            obj.g = context[0];
            obj.h = context[1];
        }
        a(sharedpreferences);
        return ((m) (obj));
    }

    private static void a(SharedPreferences sharedpreferences)
    {
        sharedpreferences = sharedpreferences.edit();
        sharedpreferences.putLong("duration", 0L);
        sharedpreferences.putString("activities", "");
        sharedpreferences.commit();
    }

    private static String[] b(SharedPreferences sharedpreferences)
    {
        long l1 = sharedpreferences.getLong("terminate_time", 0L);
        if (l1 <= 0L)
        {
            return null;
        } else
        {
            return com.umeng.common.b.a(new Date(l1)).split(" ");
        }
    }

    private static ArrayList c(SharedPreferences sharedpreferences)
    {
        String s;
        s = sharedpreferences.getString("activities", "");
        if ("".equals(s))
        {
            break MISSING_BLOCK_LABEL_86;
        }
        sharedpreferences = new ArrayList();
        String as[] = s.split(";");
        int i = 0;
_L2:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        sharedpreferences.add(new k(new JSONArray(as[i])));
        i++;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
_L1:
        if (sharedpreferences.size() > 0)
        {
            return sharedpreferences;
        }
        return null;
    }

    private void c(JSONObject jsonobject)
        throws Exception
    {
        if (b != null)
        {
            b.b(jsonobject);
        }
    }

    private static long d(SharedPreferences sharedpreferences)
    {
        return sharedpreferences.getLong("duration", 0L) / 1000L;
    }

    private void d(JSONObject jsonobject)
        throws Exception
    {
        if (a != null)
        {
            a.b(jsonobject);
        }
    }

    private void e(JSONObject jsonobject)
        throws Exception
    {
        o o1 = new o();
        o1.a(jsonobject);
        if (o1.a())
        {
            a = o1;
        }
    }

    private void f(JSONObject jsonobject)
        throws Exception
    {
        p p1 = new p();
        p1.a(jsonobject);
        if (p1.a())
        {
            b = p1;
        }
    }

    private void g(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.has("activities"))
        {
            jsonobject = jsonobject.getJSONArray("activities");
            for (int i = 0; i < jsonobject.length(); i++)
            {
                k k1 = new k(jsonobject.getJSONArray(i));
                d.add(k1);
            }

        }
    }

    private void h(JSONObject jsonobject)
        throws Exception
    {
        if (d.size() == 0)
        {
            return;
        }
        JSONArray jsonarray = new JSONArray();
        JSONArray jsonarray1;
        for (Iterator iterator = d.iterator(); iterator.hasNext(); jsonarray.put(jsonarray1))
        {
            k k1 = (k)iterator.next();
            jsonarray1 = new JSONArray();
            jsonarray1.put(k1.a);
            jsonarray1.put(k1.b);
        }

        jsonobject.put("activities", jsonarray);
    }

    public void a(JSONObject jsonobject)
    {
        try
        {
            super.a(jsonobject);
            c = jsonobject.getLong("duration");
            f(jsonobject);
            e(jsonobject);
            g(jsonobject);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
        }
    }

    public boolean a()
    {
        if (a == null && g.i)
        {
            Log.c("MobclickAgent", "missing location info in Terminate");
        }
        if (b == null)
        {
            Log.e("MobclickAgent", "missing receive and transport Traffic in Terminate ");
        }
        if (c <= 0L)
        {
            Log.b("MobclickAgent", "missing Duration info in Terminate");
            return false;
        }
        if (d == null || d.size() == 0)
        {
            Log.e("MobclickAgent", "missing Activities info in Terminate");
        }
        return super.a();
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        super.b(jsonobject);
        if (c > 0L)
        {
            jsonobject.put("duration", c);
        }
        c(jsonobject);
        d(jsonobject);
        h(jsonobject);
    }
}
