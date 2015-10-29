// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import android.content.Context;
import com.umeng.analytics.g;
import com.umeng.common.Log;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            l, g, o

public class h extends l
    implements com.umeng.analytics.a.g
{

    o a;

    public h()
    {
    }

    public h(Context context, String s)
    {
        e = s;
        a = o.a(context);
    }

    public void a(o o1)
    {
        a = o1;
    }

    public void a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return;
        }
        try
        {
            super.a(jsonobject);
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
        if (a == null && g.i)
        {
            Log.c("MobclickAgent", "missing location info in Launch");
        }
        return super.a();
    }

    public JSONObject b()
    {
        JSONObject jsonobject = new JSONObject();
        b(jsonobject);
        return jsonobject;
        Exception exception;
        exception;
        jsonobject = null;
_L2:
        exception.printStackTrace();
        return jsonobject;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        c(jsonobject);
        super.b(jsonobject);
    }

    public void c(JSONObject jsonobject)
        throws Exception
    {
        if (a != null)
        {
            a.b(jsonobject);
        }
    }

    public void d(JSONObject jsonobject)
        throws Exception
    {
        o o1 = new o();
        o1.a(jsonobject);
        if (o1.a())
        {
            a = o1;
        }
    }
}
