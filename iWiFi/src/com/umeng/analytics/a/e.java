// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import com.umeng.common.Log;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            l, g

public class e extends l
    implements g
{

    public String a;
    public String b;
    public int c;
    public long d;
    private final String k;
    private final String l;
    private final String m;
    private final String n;

    public e()
    {
        k = "tag";
        l = "label";
        m = "acc";
        n = "du";
    }

    public e(String s, String s1, String s2, int i, long l1)
    {
        k = "tag";
        l = "label";
        m = "acc";
        n = "du";
        e = s;
        a = s1;
        b = s2;
        c = i;
        d = l1;
    }

    public void a(JSONObject jsonobject)
    {
        if (jsonobject != null)
        {
            try
            {
                super.a(jsonobject);
                a = jsonobject.getString("tag");
                if (jsonobject.has("label"))
                {
                    b = jsonobject.getString("label");
                }
                c = jsonobject.getInt("acc");
                if (jsonobject.has("du"))
                {
                    d = jsonobject.getLong("du");
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return;
            }
        }
    }

    public boolean a()
    {
        if (a == null)
        {
            Log.b("MobclickAgent", "mTag is not initilized");
            return false;
        }
        if (c <= 0 || c > 10000)
        {
            Log.b("MobclickAgent", (new StringBuilder()).append("mAcc is invalid : ").append(c).toString());
            return false;
        } else
        {
            return super.a();
        }
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("tag", a);
        jsonobject.put("acc", c);
        if (b != null)
        {
            jsonobject.put("label", b);
        }
        if (d > 0L)
        {
            jsonobject.put("du", d);
        }
        super.b(jsonobject);
    }
}
