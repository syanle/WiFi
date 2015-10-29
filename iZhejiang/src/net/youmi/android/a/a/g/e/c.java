// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.format.Time;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.c.a;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            f, d, e, b, 
//            h, j

public class c
{

    public static final void a(Context context)
    {
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.e.f(context));
    }

    public static final void a(Context context, String s)
    {
        net.youmi.android.a.c.a.a(new d(context, s));
    }

    public static final void a(Context context, List list)
    {
        if (list != null && list.size() > 0)
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (int i = 0; i < list.size(); i++)
            {
                stringbuilder.append((String)list.get(i));
                if (i != list.size() - 1)
                {
                    stringbuilder.append("|");
                }
            }

            net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.e.e(context, stringbuilder.toString()));
        }
    }

    public static final void b(Context context)
    {
        int i = 0;
        Object obj;
        obj = new Time();
        ((Time) (obj)).setToNow();
        obj = ((Time) (obj)).format("%Y-%m-%d");
        if (((String) (obj)).equals(f.a(context, "x34knSd6OxP", "")))
        {
            return;
        }
        Throwable throwable;
        ArrayList arraylist;
        StringBuilder stringbuilder;
        List list;
        PackageInfo packageinfo;
        Throwable throwable2;
        String s;
        int k;
        boolean flag;
        try
        {
            f.a(context, "x34knSd6OxP", ((String) (obj)), 0x5265c00L);
        }
        catch (Throwable throwable1) { }
        obj = net.youmi.android.a.a.g.e.b.a(context).a();
        if (obj == null)
        {
            obj = new ArrayList();
        }
        arraylist = new ArrayList();
        stringbuilder = new StringBuilder();
        list = context.getPackageManager().getInstalledPackages(0);
_L1:
        k = list.size();
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        try
        {
            packageinfo = (PackageInfo)list.get(i);
            s = packageinfo.packageName;
            if ((packageinfo.applicationInfo.flags & 1) == 0 && !((List) (obj)).contains(s))
            {
                stringbuilder.append(packageinfo.packageName);
                if (i != list.size() - 1)
                {
                    stringbuilder.append("|");
                }
                arraylist.add(s);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable2) { }
        i++;
          goto _L1
        throwable;
        try
        {
            if (!e.a(stringbuilder.toString()))
            {
                (new h(context, stringbuilder.toString(), 1)).a();
            }
            if (arraylist.size() <= 0)
            {
                break MISSING_BLOCK_LABEL_271;
            }
            flag = net.youmi.android.a.a.g.e.b.a(context).a(arraylist);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (flag)
        {
            return;
        }
    }

    public static void c(Context context)
    {
        try
        {
            (new j(context, d(context))).a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private static String d(Context context)
    {
        StringBuilder stringbuilder;
        int i;
        int k;
        i = 9;
        k = 0;
        stringbuilder = new StringBuilder();
        PackageManager packagemanager;
        ActivityInfo activityinfo;
        int l;
        packagemanager = context.getPackageManager();
        context = ((ActivityManager)context.getSystemService("activity")).getRecentTasks(5, 2);
        activityinfo = (new Intent("android.intent.action.MAIN")).addCategory("android.intent.category.HOME").resolveActivityInfo(packagemanager, 0);
        l = context.size();
        ResolveInfo resolveinfo;
        Intent intent;
        if (l <= 9)
        {
            i = l;
        }
        if (k >= i)
        {
            break MISSING_BLOCK_LABEL_230;
        }
        android.app.ActivityManager.RecentTaskInfo recenttaskinfo = (android.app.ActivityManager.RecentTaskInfo)context.get(k);
        intent = new Intent(recenttaskinfo.baseIntent);
        if (recenttaskinfo.origActivity != null)
        {
            intent.setComponent(recenttaskinfo.origActivity);
        }
        if (activityinfo == null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        if (activityinfo.packageName.equals(intent.getComponent().getPackageName()) && activityinfo.name.equals(intent.getComponent().getClassName()))
        {
            break MISSING_BLOCK_LABEL_235;
        }
        intent.setFlags(intent.getFlags() & 0xffdfffff | 0x10000000);
        resolveinfo = packagemanager.resolveActivity(intent, 0);
        if (resolveinfo == null)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        stringbuilder.append(resolveinfo.activityInfo.packageName);
        if (k == i - 1)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        try
        {
            stringbuilder.append("|");
            break MISSING_BLOCK_LABEL_235;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        return stringbuilder.toString();
        for (k++; false; k++)
        {
        }

        break MISSING_BLOCK_LABEL_70;
    }
}
