// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.android.bbalbs.common.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

// Referenced classes of package com.baidu.android.bbalbs.common.util:
//            a

static final class b
{

    public final String a;
    public final boolean b;

    static b a(Context context)
    {
        String s;
        boolean flag;
        flag = false;
        s = "";
        String s1 = android.provider.ings.System.getString(context.getContentResolver(), "bd_setting_i");
        Object obj;
        obj = s1;
        s = s1;
        if (!TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_36;
        }
        s = s1;
        obj = a(context, "");
        s = ((String) (obj));
        boolean flag2;
        try
        {
            android.provider.ings.System.putString(context.getContentResolver(), "bd_setting_i", ((String) (obj)));
        }
        catch (Exception exception)
        {
            Log.e("DeviceId", "Settings.System.getString or putString failed", exception);
            boolean flag1 = true;
            exception = s;
            flag = flag1;
            if (TextUtils.isEmpty(s))
            {
                exception = a(context, "");
                flag = flag1;
            }
        }
        if (flag)
        {
            flag2 = false;
        } else
        {
            flag2 = true;
        }
        return new <init>(((String) (obj)), flag2);
    }

    private static String a(Context context, String s)
    {
        String s1 = null;
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        context = s1;
        if (telephonymanager != null)
        {
            try
            {
                context = telephonymanager.getDeviceId();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("DeviceId", "Read IMEI failed", context);
                context = s1;
            }
        }
        s1 = a(((String) (context)));
        context = s1;
        if (TextUtils.isEmpty(s1))
        {
            context = s;
        }
        return context;
    }

    private static String a(String s)
    {
        String s1 = s;
        if (s != null)
        {
            s1 = s;
            if (s.contains(":"))
            {
                s1 = "";
            }
        }
        return s1;
    }

    private (String s, boolean flag)
    {
        a = s;
        b = flag;
    }
}
