// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.update;

import android.content.Context;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.d.j;
import net.youmi.android.a.b.i.k;
import net.youmi.android.a.c.d.c;

// Referenced classes of package net.youmi.android.update:
//            AppUpdateInfo

public class a
{

    public static AppUpdateInfo a(Context context)
    {
        String s = b(context);
        String s2;
        Throwable throwable;
        if (s == null)
        {
            net.youmi.android.a.c.b.a.c("Check for app update , request : [%s] , response : [%s]", new Object[] {
                s, null
            });
            return null;
        }
        String s1;
        Object obj;
        try
        {
            s2 = c.a(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            context = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        if (s2 == null)
        {
            net.youmi.android.a.c.b.a.c("Check for app update , request : [%s] , response : [%s]", new Object[] {
                s, s2
            });
            return null;
        }
        obj = s2;
        s1 = s;
        context = a(context, s2);
        net.youmi.android.a.c.b.a.c("Check for app update , request : [%s] , response : [%s]", new Object[] {
            s, s2
        });
        return context;
        throwable;
        context = null;
        s = null;
_L4:
        obj = context;
        s1 = s;
        net.youmi.android.a.c.b.a.a(throwable);
        net.youmi.android.a.c.b.a.c("Check for app update , request : [%s] , response : [%s]", new Object[] {
            s, context
        });
        return null;
        context;
        obj = null;
        s = null;
_L2:
        net.youmi.android.a.c.b.a.c("Check for app update , request : [%s] , response : [%s]", new Object[] {
            s, obj
        });
        throw context;
        context;
        s = s1;
        if (true) goto _L2; else goto _L1
        throwable;
        context = s2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static AppUpdateInfo a(Context context, String s)
    {
        int i = net.youmi.android.a.c.c.a.f(context);
        if (s == null)
        {
            return null;
        }
        context = net.youmi.android.a.b.b.b.a(s);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        Object obj;
        if (net.youmi.android.a.b.b.b.a(context, "c", 0) != 0)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        obj = net.youmi.android.a.b.b.b.a(context, "d", null);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        context = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "url", null);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        int l = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "vc", 0);
        if (l <= i)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        AppUpdateInfo appupdateinfo;
        s = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "vn", null);
        obj = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj)), "tips", null);
        appupdateinfo = new AppUpdateInfo();
        appupdateinfo.b(((String) (obj)));
        appupdateinfo.c(context);
        appupdateinfo.a(l);
        appupdateinfo.a(s);
        return appupdateinfo;
        context;
        net.youmi.android.a.c.b.a.a(context);
        return null;
    }

    private static String b(Context context)
    {
        String s = net.youmi.android.a.a.c.f();
        if (s == null)
        {
            return null;
        }
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        stringbuilder.append(s);
        net.youmi.android.a.c.c.b b1 = new net.youmi.android.a.c.c.b(context);
        stringbuilder.append("?cid=").append(b1.a());
        stringbuilder.append("&apn=").append(j.a(k.c(context)));
        stringbuilder.append("&chn=").append(net.youmi.android.a.c.c.a.g(context));
        stringbuilder.append("&ver=").append(net.youmi.android.a.c.c.a.f(context));
        stringbuilder.append("&app=").append(j.a(net.youmi.android.a.c.c.a.a(context)));
        stringbuilder.append("&rt=").append(System.currentTimeMillis() / 1000L);
_L1:
        try
        {
            return stringbuilder.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.c.b.a.a(context);
        }
        break MISSING_BLOCK_LABEL_144;
        context;
        net.youmi.android.a.c.b.a.a(context);
          goto _L1
        return null;
    }
}
