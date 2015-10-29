// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.h;

import android.content.Context;
import android.content.SharedPreferences;
import net.youmi.android.a.b.d.a;

public class h
{

    public static boolean a(Context context, String s, String s1, String s2, String s3)
    {
        if (context != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        String s4;
        boolean flag;
        try
        {
            String s5 = context.getPackageName();
            byte abyte0[] = net.youmi.android.a.b.d.h.a();
            s4 = new String(net.youmi.android.a.b.d.a.a(abyte0));
            s2 = net.youmi.android.a.b.d.h.a(s2, s5, abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (s2 == null || s4 == null) goto _L1; else goto _L3
_L3:
        context = context.getSharedPreferences(s, 0).edit();
        context.putString(s3, s4);
        context.putString(s1, s2);
        flag = context.commit();
        return flag;
    }

    public static String b(Context context, String s, String s1, String s2, String s3)
    {
        if (context != null) goto _L2; else goto _L1
_L1:
        return s3;
_L2:
        SharedPreferences sharedpreferences;
        int i;
        try
        {
            sharedpreferences = context.getSharedPreferences(s, 0);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s3;
        }
        if (sharedpreferences == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = sharedpreferences.getString(s1, null);
        if (s == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        s1 = sharedpreferences.getString(s2, null);
        if (s1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        s1 = net.youmi.android.a.b.d.a.b(s1.getBytes());
        if (s1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        context = net.youmi.android.a.b.d.h.b(s, context.getPackageName(), s1);
        if (context == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        context = context.trim();
        i = context.length();
        if (i > 0)
        {
            return context;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
