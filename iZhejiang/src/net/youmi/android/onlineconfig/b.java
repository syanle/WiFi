// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig;

import android.content.Context;
import java.util.Locale;
import net.youmi.android.a.a.c;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.c.c.a;

// Referenced classes of package net.youmi.android.onlineconfig:
//            c

public class b
{

    private static String a(Context context, String s)
    {
        if (net.youmi.android.a.c.c.a.d(context))
        {
            break MISSING_BLOCK_LABEL_14;
        }
        net.youmi.android.a.c.b.a.b("Appid or AppSecret is Null! Please online AdManager.init(...) before request OnLineParameter");
        return null;
        String s1;
        String s2;
        s1 = net.youmi.android.a.c.c.a.a(context);
        s2 = net.youmi.android.a.c.c.a.b(context);
        context = c.e();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        s2 = g.a((new StringBuilder()).append(s1).append(s).append(s2).toString());
        context = String.format(Locale.US, "%s?app=%s&key=%s&sig=%s&rt=%d", new Object[] {
            context, s1, s, s2, Long.valueOf(System.currentTimeMillis() / 1000L)
        });
        return context;
        context;
        return null;
    }

    public static String a(Context context, String s, String s1)
    {
        Object obj;
        String s2;
        Object obj1;
        long l;
        l = 0L;
        obj1 = null;
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        s2 = s;
        obj = s;
        net.youmi.android.a.c.b.a.b("Get Online Config Failed , context is null");
        long l1;
        Object obj2;
        String s3;
        int i;
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, s1
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        s2 = s;
        obj = s;
        obj2 = context.getApplicationContext();
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        s2 = s;
        obj = s;
        net.youmi.android.a.c.b.a.b("Get Online Config Failed , context is null.");
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, s1
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        s2 = s;
        obj = s;
        net.youmi.android.a.c.b.a.b("Get Online Config Failed , key is null");
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, s1
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        s2 = s;
        obj = s;
        s = s.trim();
        s2 = s;
        obj = s;
        if (s.length() > 0)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        s2 = s;
        obj = s;
        net.youmi.android.a.c.b.a.b("Get Online Config Failed , key is null.");
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, s1
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        s2 = s;
        obj = s;
        if (s.matches("^[0-9A-Za-z_]+$"))
        {
            break MISSING_BLOCK_LABEL_231;
        }
        s2 = s;
        obj = s;
        net.youmi.android.a.c.b.a.b("Get Online Config Failed , key invaild:%s", new Object[] {
            s
        });
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, s1
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        obj = s;
        s2 = net.youmi.android.onlineconfig.c.a(((Context) (obj2))).a(s, null);
        if (s2 != null)
        {
            try
            {
                net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                    s, s2
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            return s2;
        }
        break MISSING_BLOCK_LABEL_272;
        obj;
        s2 = s;
        obj = s;
        s3 = a(((Context) (obj2)), s);
        s2 = s;
        obj = s;
        obj2 = net.youmi.android.a.c.d.c.a(((Context) (obj2)), s3, true);
        s2 = s;
        obj = s;
        net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], request : [ %s ], response : [ %s ]", new Object[] {
            s, s3, obj2
        });
        s2 = s;
        obj = s;
        obj2 = net.youmi.android.a.b.b.b.a(((String) (obj2)));
        if (obj2 == null)
        {
            try
            {
                net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                    s, s1
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return s1;
            }
            return s1;
        }
        s2 = s;
        obj = s;
        i = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj2)), "c", -999);
        if (i != 0)
        {
            try
            {
                net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                    s, s1
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return s1;
            }
            return s1;
        }
        s2 = s;
        obj = s;
        l1 = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj2)), "ct", 0L);
        if (l1 >= 0L)
        {
            l = l1;
        }
        s2 = s;
        obj = s;
        obj2 = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj2)), "d", null), "val", null);
        if (obj2 != null)
        {
            try
            {
                net.youmi.android.onlineconfig.c.a(context).a(s, ((String) (obj2)), l * 1000L);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            finally
            {
                s1 = ((String) (obj2));
            }
            try
            {
                net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                    s, obj2
                });
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            return ((String) (obj2));
        }
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, obj2
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        context;
        obj = s2;
        net.youmi.android.a.c.b.a.a(context);
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s2, null
            });
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return s1;
        context;
        s = ((String) (obj));
        s1 = obj1;
        try
        {
            net.youmi.android.a.c.b.a.c("Get Online Config , key : [%s], value : [ %s ]", new Object[] {
                s, s1
            });
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        throw context;
    }
}
