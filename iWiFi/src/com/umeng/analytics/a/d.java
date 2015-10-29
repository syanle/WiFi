// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import com.umeng.common.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            n, g

public class d extends n
    implements g
{

    public String a;
    private final String b;

    public d()
    {
        b = "context";
    }

    public d(String s)
    {
        b = "context";
        a = s;
    }

    public d(Throwable throwable)
    {
        b = "context";
        a = a(throwable);
    }

    private String a(Throwable throwable)
    {
        Object obj = null;
        if (throwable == null)
        {
            return null;
        }
        Throwable throwable1 = obj;
        StringWriter stringwriter;
        PrintWriter printwriter;
        try
        {
            stringwriter = new StringWriter();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return throwable1;
        }
        throwable1 = obj;
        printwriter = new PrintWriter(stringwriter);
        throwable1 = obj;
        throwable.printStackTrace(printwriter);
        throwable1 = obj;
        throwable = throwable.getCause();
_L2:
        if (throwable == null)
        {
            break; /* Loop/switch isn't completed */
        }
        throwable1 = obj;
        throwable.printStackTrace(printwriter);
        throwable1 = obj;
        throwable = throwable.getCause();
        if (true) goto _L2; else goto _L1
_L1:
        throwable1 = obj;
        throwable = stringwriter.toString();
        throwable1 = throwable;
        printwriter.close();
        throwable1 = throwable;
        stringwriter.close();
        return throwable;
    }

    public void a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return;
        }
        try
        {
            g = jsonobject.getString("date");
            h = jsonobject.getString("time");
            a = jsonobject.getString("context");
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
        if (a == null)
        {
            Log.b("MobclickAgent", "mContent is not initialized");
            return false;
        } else
        {
            return super.a();
        }
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("date", g);
        jsonobject.put("time", h);
        jsonobject.put("context", a);
    }
}
