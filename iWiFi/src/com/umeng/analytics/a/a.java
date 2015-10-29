// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import com.umeng.common.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            g

public class a
    implements g
{

    public final HashMap a;
    public String b;
    public long c;
    public long d;
    private final String e;
    private final String f;
    private final String g;

    public a()
    {
        c = 0L;
        d = 0L;
        e = "id";
        f = "ts";
        g = "du";
        a = new HashMap();
    }

    public a(String s, HashMap hashmap, long l)
    {
        c = 0L;
        d = 0L;
        e = "id";
        f = "ts";
        g = "du";
        b = s;
        a = a(hashmap);
        d = l;
        c = b();
    }

    private HashMap a(HashMap hashmap)
    {
        boolean flag = false;
        if (hashmap.size() > 10)
        {
            int j = hashmap.size() - 10;
            String as[] = new String[j];
            Iterator iterator = hashmap.keySet().iterator();
            int i = 0;
label0:
            do
            {
                String s;
label1:
                {
                    if (iterator.hasNext())
                    {
                        s = (String)iterator.next();
                        if (i < j)
                        {
                            break label1;
                        }
                    }
                    j = as.length;
                    for (i = ((flag) ? 1 : 0); i < j; i++)
                    {
                        hashmap.remove(as[i]);
                    }

                    break label0;
                }
                as[i] = s;
                i++;
            } while (true);
        }
        return hashmap;
    }

    private long b()
    {
        return System.currentTimeMillis() / 1000L;
    }

    private void c(JSONObject jsonobject)
        throws JSONException
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); jsonobject.put((String)entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    private void d(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.remove("id");
        jsonobject.remove("ts");
        jsonobject.remove("du");
        String s;
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); a.put(s, jsonobject.getString(s)))
        {
            s = (String)iterator.next();
        }

    }

    public void a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return;
        }
        try
        {
            b = jsonobject.getString("id");
            c = jsonobject.getLong("ts");
            if (jsonobject.has("du"))
            {
                d = jsonobject.getLong("du");
            }
            d(jsonobject);
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
        if (b == null || c <= 0L)
        {
            Log.b("MobclickAgent", "mId or mTs is not initialized");
            return false;
        }
        if (a.isEmpty())
        {
            Log.b("MobclickAgent", "mCustomKV is not initialized");
            return false;
        } else
        {
            return true;
        }
    }

    public void b(JSONObject jsonobject)
        throws JSONException
    {
        try
        {
            jsonobject.put("id", b);
            jsonobject.put("ts", c);
            if (d > 0L)
            {
                jsonobject.put("du", d);
            }
            c(jsonobject);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
        }
    }
}
