// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            g, a, c

public class b
    implements g
{

    public String a;
    public ArrayList b;

    public b()
    {
        b = new ArrayList();
    }

    public b(String s, a a1)
    {
        b = new ArrayList();
        a = s;
        b.add(a1);
    }

    private void c(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject.length() == 0)
        {
            return;
        } else
        {
            a = (String)jsonobject.keys().next();
            return;
        }
    }

    private void d(JSONObject jsonobject)
        throws Exception
    {
        if (a != null)
        {
            jsonobject = jsonobject.getJSONArray(a);
            int i = 0;
            while (i < jsonobject.length()) 
            {
                a a1 = new a();
                a1.a(jsonobject.getJSONObject(i));
                b.add(a1);
                i++;
            }
        }
    }

    public void a(b b1)
    {
        b.addAll(b1.b);
    }

    public void a(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject == null)
        {
            return;
        } else
        {
            c(jsonobject);
            d(jsonobject);
            return;
        }
    }

    public boolean a()
    {
        if (a == null || b.size() == 0)
        {
            return false;
        }
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            if (!((a)iterator.next()).a())
            {
                return false;
            }
        }

        return true;
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = b.iterator(); iterator.hasNext(); jsonarray.put(new c(this, (a)iterator.next()))) { }
        jsonobject.put(a, jsonarray);
    }
}
