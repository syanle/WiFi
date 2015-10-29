// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location.b.a;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

// Referenced classes of package com.baidu.location.b.a:
//            b

static final class a
{

    private static final String _flddo = "bd_setting_i";
    public final boolean a;
    public final String _fldif;

    static a a(Context context)
    {
        Object obj;
        boolean flag1;
        flag1 = true;
        obj = "";
        Object obj1 = android.provider.ings.System.getString(context.getContentResolver(), "bd_setting_i");
        obj = obj1;
        if (!TextUtils.isEmpty(((CharSequence) (obj1)))) goto _L2; else goto _L1
_L1:
        obj = obj1;
        obj1 = a(context, "");
        obj = obj1;
_L7:
        android.provider.ings.System.putString(context.getContentResolver(), "bd_setting_i", ((String) (obj)));
        boolean flag = false;
_L4:
        if (flag)
        {
            flag1 = false;
        }
        return new <init>(((String) (obj)), flag1);
        obj1;
_L5:
        Log.e("DeviceId", "Settings.System.getString or putString failed", ((Throwable) (obj1)));
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            obj = a(context, "");
            flag = true;
        } else
        {
            flag = true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        obj1;
          goto _L5
_L2:
        obj = obj1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static String a(Context context, String s)
    {
        context = (TelephonyManager)context.getSystemService("phone");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        context = context.getDeviceId();
_L1:
        if (TextUtils.isEmpty(context))
        {
            return s;
        } else
        {
            return context;
        }
        context;
        Log.e("DeviceId", "Read IMEI failed", context);
        context = null;
          goto _L1
    }

    private Manager(String s, boolean flag)
    {
        _fldif = s;
        a = flag;
    }
}
