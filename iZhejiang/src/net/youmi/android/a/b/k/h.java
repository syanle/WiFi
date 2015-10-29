// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.util.List;

// Referenced classes of package net.youmi.android.a.b.k:
//            k, j, a

public class h
{

    public static Intent a(Context context, String s)
    {
        context = context.getPackageManager();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        context = context.getLaunchIntentForPackage(s);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        context.addFlags(0x10000000);
        return context;
        context;
        return null;
    }

    public static boolean a(Context context, String s, int i)
    {
        s = Intent.parseUri(s, i);
        if (s == null)
        {
            return false;
        }
        List list = context.getPackageManager().queryIntentActivities(s, 0);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        if (list.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        s.addFlags(0x10000000);
        context.startActivity(s);
        return true;
        context;
        return false;
    }

    public static boolean a(Context context, String s, int i, String s1)
    {
        try
        {
            s = Intent.parseUri(s, i);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (s == null)
        {
            return false;
        }
        s.addFlags(0x10000000);
        s = Intent.createChooser(s, s1);
        s.addFlags(0x10000000);
        context.startActivity(s);
        return true;
    }

    public static boolean b(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        if (packagemanager == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        s = packagemanager.getLaunchIntentForPackage(s);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        s.addFlags(0x10000000);
        context.startActivity(s);
        return true;
        context;
        return false;
    }

    public static boolean b(Context context, String s, int i)
    {
        try
        {
            s = Intent.parseUri(s, i);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (s == null)
        {
            return false;
        }
        context.startService(s);
        return true;
    }

    public static boolean b(Context context, String s, int i, String s1)
    {
        s = Intent.parseUri(s, i);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        context.sendBroadcast(s, s1);
        return true;
        context.sendBroadcast(s);
        return true;
        context;
        return false;
    }

    public static boolean c(Context context, String s)
    {
        if (context != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        Object obj2;
        if (!k.h(context) || (obj2 = j.b(context, s)) == null) goto _L1; else goto _L3
_L3:
        Object obj1;
        int i;
        try
        {
            Object obj = ((a) (obj2)).a();
            i = ((a) (obj2)).c();
            String s1 = ((a) (obj2)).b();
            obj2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            ((Intent) (obj2)).putExtra("android.intent.extra.shortcut.NAME", ((String) (obj)));
            ((Intent) (obj2)).putExtra("duplicate", false);
            obj = new ComponentName(s, s1);
            ((Intent) (obj2)).putExtra("android.intent.extra.shortcut.INTENT", (new Intent("android.intent.action.MAIN")).setComponent(((ComponentName) (obj))));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        obj1 = null;
        if (context.getPackageName().equals(s))
        {
            s = context;
        } else
        {
            try
            {
                s = context.createPackageContext(s, 3);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s = obj1;
            }
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        ((Intent) (obj2)).putExtra("android.intent.extra.shortcut.ICON_RESOURCE", android.content.Intent.ShortcutIconResource.fromContext(s, i));
        context.sendBroadcast(((Intent) (obj2)));
        return true;
    }

    public static boolean c(Context context, String s, int i)
    {
        boolean flag;
        try
        {
            s = Intent.parseUri(s, i);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (s == null)
        {
            return false;
        }
        flag = context.stopService(s);
        return flag;
    }

    public static boolean d(Context context, String s, int i)
    {
        PackageManager packagemanager = context.getPackageManager();
        if (packagemanager == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        s = packagemanager.getLaunchIntentForPackage(s);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        s.addFlags(i);
        s.addFlags(0x10000000);
        context.startActivity(s);
        return true;
        context;
        return false;
    }
}
