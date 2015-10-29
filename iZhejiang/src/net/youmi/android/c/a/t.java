// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;

public class t
{

    public static boolean a(Context context, String s)
    {
        Object obj;
        obj = new Intent("android.intent.action.VIEW", Uri.parse(s));
        obj = context.getPackageManager().resolveActivity(((Intent) (obj)), 0);
        if (!((ResolveInfo) (obj)).activityInfo.packageName.equals("android") && !((ResolveInfo) (obj)).activityInfo.name.equals("com.android.internal.app.ResolverActivity"))
        {
            break MISSING_BLOCK_LABEL_82;
        }
        s = new Intent("android.intent.action.VIEW", Uri.parse(s));
        s.addFlags(0x10000000);
        context.startActivity(s);
        return true;
        try
        {
            s = new Intent("android.intent.action.VIEW", Uri.parse(s));
            s.addFlags(0x10000000);
            s.setComponent(new ComponentName(((ResolveInfo) (obj)).activityInfo.packageName, ((ResolveInfo) (obj)).activityInfo.name));
            context.startActivity(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return true;
    }
}
