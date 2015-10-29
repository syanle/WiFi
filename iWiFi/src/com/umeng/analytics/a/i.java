// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import com.umeng.common.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            g, j, b, h, 
//            m, e, d, a

public class i
    implements g
{

    public ArrayList a;
    public ArrayList b;
    public ArrayList c;
    public ArrayList d;
    public ArrayList e;
    private final String f = "launch";
    private final String g = "terminate";
    private final String h = "error";
    private final String i = "event";
    private final String j = "ekv";

    public i()
    {
        a = new ArrayList();
        b = new ArrayList();
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
    }

    private JSONArray a(ArrayList arraylist)
    {
        if (arraylist.size() <= 0) goto _L2; else goto _L1
_L1:
        JSONArray jsonarray;
        Iterator iterator;
        jsonarray = new JSONArray();
        iterator = arraylist.iterator();
        arraylist = null;
_L5:
        Object obj;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (g)iterator.next();
        obj = new j(this, ((g) (obj)));
        arraylist = ((ArrayList) (obj));
_L3:
        Exception exception;
        if (arraylist != null)
        {
            jsonarray.put(arraylist);
        }
        continue; /* Loop/switch isn't completed */
        exception;
        Log.a("MobclickAgent", "Fail to write json ...", exception);
          goto _L3
        if (true) goto _L5; else goto _L4
_L4:
        arraylist = jsonarray;
_L7:
        if (arraylist == null || arraylist.length() == 0)
        {
            return null;
        } else
        {
            return arraylist;
        }
_L2:
        arraylist = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void b(ArrayList arraylist)
    {
        if (!arraylist.isEmpty())
        {
            HashMap hashmap = new HashMap();
            for (arraylist = arraylist.iterator(); arraylist.hasNext();)
            {
                b b2 = (b)(g)arraylist.next();
                if (hashmap.containsKey(b2.a))
                {
                    ((b)hashmap.get(b2.a)).a(b2);
                } else
                {
                    hashmap.put(b2.a, b2);
                }
            }

            for (arraylist = e.iterator(); arraylist.hasNext();)
            {
                b b3 = (b)(g)arraylist.next();
                if (hashmap.containsKey(b3.a))
                {
                    ((b)hashmap.get(b3.a)).a(b3);
                } else
                {
                    hashmap.put(b3.a, b3);
                }
            }

            e.clear();
            arraylist = hashmap.values().iterator();
            while (arraylist.hasNext()) 
            {
                b b1 = (b)arraylist.next();
                e.add(b1);
            }
        }
    }

    private void c(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.has("launch"))
        {
            jsonobject = jsonobject.getJSONArray("launch");
            for (int k = 0; k < jsonobject.length(); k++)
            {
                h h1 = new h();
                h1.a(jsonobject.getJSONObject(k));
                a(h1);
            }

        }
    }

    private void d(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.has("terminate"))
        {
            jsonobject = jsonobject.getJSONArray("terminate");
            for (int k = 0; k < jsonobject.length(); k++)
            {
                m m1 = new m();
                m1.a(jsonobject.getJSONObject(k));
                a(m1);
            }

        }
    }

    private void e(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.has("event"))
        {
            jsonobject = jsonobject.getJSONArray("event");
            for (int k = 0; k < jsonobject.length(); k++)
            {
                e e1 = new e();
                e1.a(jsonobject.getJSONObject(k));
                a(e1);
            }

        }
    }

    private void f(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.has("ekv"))
        {
            jsonobject = jsonobject.getJSONArray("ekv");
            for (int k = 0; k < jsonobject.length(); k++)
            {
                b b1 = new b();
                b1.a(jsonobject.getJSONObject(k));
                a(b1);
            }

        }
    }

    private void g(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.has("error"))
        {
            jsonobject = jsonobject.getJSONArray("error");
            for (int k = 0; k < jsonobject.length(); k++)
            {
                d d1 = new d();
                d1.a(jsonobject.getJSONObject(k));
                a(d1);
            }

        }
    }

    public void a(b b1)
    {
        if (b1 != null && b1.a())
        {
            e.add(b1);
        }
    }

    public void a(d d1)
    {
        if (d1 != null && d1.a())
        {
            c.add(d1);
        }
    }

    public void a(e e1)
    {
        if (e1 != null && e1.a())
        {
            d.add(e1);
        }
    }

    public void a(h h1)
    {
        if (h1 != null && h1.a())
        {
            a.add(h1);
        }
    }

    public void a(i k)
    {
        a.addAll(k.a);
        b.addAll(k.b);
        d.addAll(k.d);
        c.addAll(k.c);
        b(k.e);
    }

    public void a(m m1)
    {
        if (m1 != null && m1.a())
        {
            b.add(m1);
        }
    }

    public void a(String s, a a1)
    {
label0:
        {
            if (a1 != null && a1.a())
            {
                Iterator iterator = e.iterator();
                b b1;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    b1 = (b)(g)iterator.next();
                } while (!b1.a.equals(s));
                b1.b.add(a1);
            }
            return;
        }
        e.add(new b(s, a1));
    }

    public void a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return;
        }
        try
        {
            c(jsonobject);
            d(jsonobject);
            e(jsonobject);
            f(jsonobject);
            g(jsonobject);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            Log.b("MobclickAgent", "merge log body eror", jsonobject);
        }
    }

    public boolean a()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            if (!((g)iterator.next()).a())
            {
                return false;
            }
        }

        for (Iterator iterator1 = b.iterator(); iterator1.hasNext();)
        {
            if (!((g)iterator1.next()).a())
            {
                return false;
            }
        }

        for (Iterator iterator2 = d.iterator(); iterator2.hasNext();)
        {
            if (!((g)iterator2.next()).a())
            {
                return false;
            }
        }

        for (Iterator iterator3 = e.iterator(); iterator3.hasNext();)
        {
            if (!((g)iterator3.next()).a())
            {
                return false;
            }
        }

        for (Iterator iterator4 = c.iterator(); iterator4.hasNext();)
        {
            if (!((g)iterator4.next()).a())
            {
                return false;
            }
        }

        return a.size() != 0 || b.size() != 0 || d.size() != 0 || e.size() != 0 || c.size() != 0;
    }

    public int b()
    {
        Iterator iterator = e.iterator();
        int k;
        for (k = 0; iterator.hasNext(); k = ((b)(g)iterator.next()).b.size() + k) { }
        return a.size() + k + b.size() + d.size() + c.size();
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        JSONArray jsonarray = a(a);
        JSONArray jsonarray1 = a(b);
        JSONArray jsonarray2 = a(d);
        JSONArray jsonarray3 = a(c);
        JSONArray jsonarray4 = a(e);
        if (jsonarray != null)
        {
            jsonobject.put("launch", jsonarray);
        }
        if (jsonarray1 != null)
        {
            jsonobject.put("terminate", jsonarray1);
        }
        if (jsonarray2 != null)
        {
            jsonobject.put("event", jsonarray2);
        }
        if (jsonarray3 != null)
        {
            jsonobject.put("error", jsonarray3);
        }
        if (jsonarray4 != null)
        {
            jsonobject.put("ekv", jsonarray4);
        }
    }

    public void c()
    {
        a.clear();
        b.clear();
        d.clear();
        e.clear();
        c.clear();
    }
}
