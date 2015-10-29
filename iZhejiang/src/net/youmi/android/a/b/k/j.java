// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import java.io.File;
import java.util.List;

// Referenced classes of package net.youmi.android.a.b.k:
//            a

public class j
{

    public static int a(Context context, String s, int i)
    {
        double d1;
        int k;
        try
        {
            context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return i;
        }
        k = i;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context = ((ApplicationInfo) (context)).metaData;
        k = i;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context = ((Context) (context.get(s)));
        k = i;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context = context.toString();
        k = i;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        d1 = Double.parseDouble(context.trim());
        k = (int)d1;
        return k;
    }

    public static String a(Context context)
    {
        try
        {
            context = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "";
        }
        return context;
    }

    public static boolean a(Context context, String s)
    {
        if (s != null)
        {
            try
            {
                context = context.getPackageManager().getPackageInfo(s, 0);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                return false;
            }
            if (context != null)
            {
                return true;
            }
        }
        return false;
    }

    public static a b(Context context, String s)
    {
        if (s == null)
        {
            return null;
        }
        Object obj;
        obj = new Intent("android.intent.action.MAIN");
        ((Intent) (obj)).addCategory("android.intent.category.LAUNCHER");
        context = context.getPackageManager();
        obj = context.queryIntentActivities(((Intent) (obj)), 1);
        if (obj == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L10:
        int k = ((List) (obj)).size();
        if (i >= k) goto _L2; else goto _L3
_L3:
        Object obj2 = (ResolveInfo)((List) (obj)).get(i);
        if (obj2 == null) goto _L5; else goto _L4
_L4:
        if (((ResolveInfo) (obj2)).activityInfo.packageName.equals(s)) goto _L6; else goto _L5
_L6:
        Object obj1;
        obj1 = ((ResolveInfo) (obj2)).loadLabel(context).toString();
        k = ((ResolveInfo) (obj2)).activityInfo.applicationInfo.icon;
        obj2 = ((ResolveInfo) (obj2)).activityInfo.name;
        if (obj2 == null) goto _L5; else goto _L7
_L7:
        if ("".equals(((String) (obj2)).trim())) goto _L5; else goto _L8
_L8:
        obj1 = new a(((String) (obj1)), k, ((String) (obj2)));
        return ((a) (obj1));
        Throwable throwable;
        throwable;
          goto _L5
        context;
_L2:
        return null;
_L5:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static PackageInfo c(Context context, String s)
    {
        Object obj = null;
        if (s != null) goto _L2; else goto _L1
_L1:
        context = obj;
_L4:
        return context;
_L2:
        PackageManager packagemanager;
        try
        {
            packagemanager = context.getPackageManager();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        context = obj;
        if (packagemanager == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = packagemanager.getPackageInfo(s, 0);
        context = s;
        if (s == null)
        {
            return s;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Intent d(Context context, String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if (!(context = new File(s)).exists()) goto _L1; else goto _L3
_L3:
        s = new Intent("android.intent.action.VIEW");
        s.setDataAndType(Uri.fromFile(context), "application/vnd.android.package-archive");
        s.addFlags(0x10000000);
        return s;
        context;
        return null;
    }

    public static void e(Context context, String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        try
        {
            s = d(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (s == null) goto _L1; else goto _L3
_L3:
        context.startActivity(s);
        return;
    }
}
