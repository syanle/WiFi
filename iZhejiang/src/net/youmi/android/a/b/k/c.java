// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;

public class c
{

    public static boolean a(Context context, Class class1)
    {
        if (class1 == null)
        {
            return false;
        } else
        {
            return a(context, class1.getName());
        }
    }

    public static boolean a(Context context, String s)
    {
        boolean flag = false;
        try
        {
            context = b(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (context != null)
        {
            flag = true;
        }
        return flag;
    }

    public static ActivityInfo b(Context context, String s)
    {
        if (context != null && s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        ActivityInfo activityinfo;
        int i;
        boolean flag;
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        context = ((PackageInfo) (context)).activities;
        if (context == null || context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = 0;
_L4:
        if (i >= context.length)
        {
            continue; /* Loop/switch isn't completed */
        }
        activityinfo = context[i];
        flag = activityinfo.name.equals(s);
        if (flag)
        {
            return activityinfo;
        }
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static boolean b(Context context, Class class1)
    {
        if (class1 == null)
        {
            return false;
        } else
        {
            return c(context, class1.getName());
        }
    }

    public static boolean c(Context context, Class class1)
    {
        if (class1 == null)
        {
            return false;
        } else
        {
            return e(context, class1.getName());
        }
    }

    public static boolean c(Context context, String s)
    {
        boolean flag = false;
        try
        {
            context = d(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (context != null)
        {
            flag = true;
        }
        return flag;
    }

    public static ServiceInfo d(Context context, String s)
    {
        if (context != null && s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        ServiceInfo serviceinfo;
        int i;
        boolean flag;
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 4);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        context = ((PackageInfo) (context)).services;
        if (context == null || context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = 0;
_L4:
        if (i >= context.length)
        {
            continue; /* Loop/switch isn't completed */
        }
        serviceinfo = context[i];
        flag = serviceinfo.name.equals(s);
        if (flag)
        {
            return serviceinfo;
        }
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static boolean e(Context context, String s)
    {
        return f(context, s) != null;
    }

    public static ActivityInfo f(Context context, String s)
    {
        if (context != null && s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        ActivityInfo activityinfo;
        int i;
        boolean flag;
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 2);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        context = ((PackageInfo) (context)).receivers;
        if (context == null || context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = 0;
_L4:
        if (i >= context.length)
        {
            continue; /* Loop/switch isn't completed */
        }
        activityinfo = context[i];
        flag = activityinfo.name.equals(s);
        if (flag)
        {
            return activityinfo;
        }
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }
}
