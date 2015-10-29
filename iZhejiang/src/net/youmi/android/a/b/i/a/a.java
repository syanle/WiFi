// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.i.a;

import android.content.Context;
import java.util.List;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.b.i.b;
import net.youmi.android.a.b.i.c;
import net.youmi.android.a.b.i.f;
import net.youmi.android.a.b.i.k;
import org.apache.http.Header;
import org.apache.http.NameValuePair;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.b.i.a:
//            b

public abstract class a
    implements Runnable
{

    protected JSONObject a;
    protected Context b;

    public a(Context context, c c1, b b1, net.youmi.android.a.b.i.a a1, net.youmi.android.a.b.i.a.b b2)
    {
        b = context;
        String s;
        a = new JSONObject();
        a.put("rt", System.currentTimeMillis());
        a.put("code", b1.a());
        a.put("ert", a1.a());
        a.put("sv", b2.a());
        a.put("apn", k.c(context));
        a.put("rhost", c1.g());
        a.put("rpath", c1.h());
        a.put("rquery", c1.i());
        a.put("response", b1.e());
        a.put("process", b1.d());
        a.put("caller", "SDK");
        a.put("product", b2.b());
        s = c1.f();
        context = s;
        if (s == null)
        {
            context = "-1";
        }
        a.put("service-ip", context);
        a.put("pid", 3);
        a.put("tag", b2.c());
        a.put("sysv", e.c());
        a.put("pm", (new StringBuilder()).append(e.b()).append(" ").append(e.d()).toString());
        a.put("req_type", c1.l());
        a.put("bl", a1.d());
        context = new JSONObject();
        int i = 0;
_L1:
        if (i >= b1.b().length)
        {
            break MISSING_BLOCK_LABEL_386;
        }
        a1 = b1.b()[i];
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_375;
        }
        context.put(a1.getName(), a1.getValue());
        i++;
          goto _L1
        a1;
        a.put("req-header", context.toString());
        context = new JSONObject();
        i = 0;
_L2:
        if (i >= b1.g().length)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        a1 = b1.g()[i];
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_454;
        }
        context.put(a1.getName(), a1.getValue());
        i++;
          goto _L2
        a1;
        a.put("rsp-header", context);
        a.put("exception", b1.c());
        context = c1.b();
        c1 = c1.k();
        if (context == null || c1 == null)
        {
            break MISSING_BLOCK_LABEL_627;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_596;
        }
        if (context.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_596;
        }
        c1 = new JSONObject();
        i = 0;
_L4:
        if (i >= context.size())
        {
            break; /* Loop/switch isn't completed */
        }
        b1 = (NameValuePair)context.get(i);
        c1.put(b1.getName(), b1.getValue());
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            a.put("post-data", c1.toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        break MISSING_BLOCK_LABEL_627;
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_627;
        }
        if (c1.length >= 0)
        {
            a.put("post-data", new String(c1, "UTF-8"));
            return;
        }
    }

    public void run()
    {
        f.a(b, a);
    }
}
