// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;

public class i
{

    public static Intent a(Context context, String s, String s1, String s2)
    {
        Object obj = null;
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s1 == null) goto _L4; else goto _L3
_L3:
        if (context.getPackageManager().getPackageInfo(s, 0) == null) goto _L6; else goto _L5
_L5:
        context = new Intent();
        try
        {
            context.setAction("android.intent.action.VIEW");
            context.setClassName(s, s1);
            context.addCategory("android.intent.category.DEFAULT");
            context.setData(Uri.parse(s2));
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
_L8:
        s = context;
        if (context == null)
        {
            try
            {
                s = new Intent("android.intent.action.VIEW", Uri.parse(s2));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return context;
            }
        }
        context = s;
        s.addFlags(0x10000000);
        return s;
_L4:
        s1 = obj;
        context = context.getPackageManager().getLaunchIntentForPackage(s);
        s1 = context;
        context.setAction("android.intent.action.VIEW");
        s1 = context;
        context.addCategory("android.intent.category.DEFAULT");
        s1 = context;
        try
        {
            context.setData(Uri.parse(s2));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = s1;
        }
        continue; /* Loop/switch isn't completed */
        context;
        context = null;
        continue; /* Loop/switch isn't completed */
_L6:
        context = null;
        continue; /* Loop/switch isn't completed */
_L2:
        context = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static void a(Context context)
    {
        try
        {
            context.startActivity((new Intent("android.settings.WIRELESS_SETTINGS")).addFlags(0x10000000));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
