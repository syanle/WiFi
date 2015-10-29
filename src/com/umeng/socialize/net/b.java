// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import com.umeng.socialize.net.a.e;
import com.umeng.socom.Log;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends e
{

    public int a;
    public int b;
    public int c;
    public String d;
    public String e;
    public int f;
    public int g;
    public String h;
    public String i;
    public int j;

    public b(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        JSONObject jsonobject = l;
        if (jsonobject == null)
        {
            Log.b(e.k, "data json is null....");
        } else
        {
            try
            {
                if (jsonobject.has("cm"))
                {
                    b = jsonobject.getInt("cm");
                }
                if (jsonobject.has("ek"))
                {
                    e = jsonobject.getString("ek");
                }
                if (jsonobject.has("ft"))
                {
                    f = jsonobject.getInt("ft");
                }
                if (jsonobject.has("fr"))
                {
                    g = jsonobject.optInt("fr", 0);
                }
                if (jsonobject.has("lk"))
                {
                    c = jsonobject.getInt("lk");
                }
                if (jsonobject.has("pv"))
                {
                    a = jsonobject.getInt("pv");
                }
                if (jsonobject.has("sid"))
                {
                    d = jsonobject.getString("sid");
                }
                if (jsonobject.has("uid"))
                {
                    h = jsonobject.getString("uid");
                }
                if (jsonobject.has("sn"))
                {
                    j = jsonobject.getInt("sn");
                    return;
                }
            }
            catch (JSONException jsonexception)
            {
                Log.b(k, (new StringBuilder("Parse json error[ ")).append(jsonobject.toString()).append(" ]").toString(), jsonexception);
                return;
            }
        }
    }
}
