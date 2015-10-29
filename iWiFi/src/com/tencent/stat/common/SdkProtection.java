// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;

import android.content.Context;

// Referenced classes of package com.tencent.stat.common:
//            StatPreferences

public class SdkProtection
{

    static long valueNotSet = -1L;

    public static boolean beginCheck(Context context)
    {
        long l = getPreferencesValue(context, "1.0.0_begin_protection");
        long l1 = getPreferencesValue(context, "1.0.0_end__protection");
        if (l > 0L && l1 == valueNotSet)
        {
            return false;
        }
        if (l == valueNotSet)
        {
            setPreferencesValue(context, "1.0.0_begin_protection", System.currentTimeMillis());
        }
        return true;
    }

    public static void endCheck(Context context)
    {
        if (getPreferencesValue(context, "1.0.0_end__protection") == valueNotSet)
        {
            setPreferencesValue(context, "1.0.0_end__protection", System.currentTimeMillis());
        }
    }

    static long getPreferencesValue(Context context, String s)
    {
        return StatPreferences.getLong(context, s, valueNotSet);
    }

    static void setPreferencesValue(Context context, String s, long l)
    {
        StatPreferences.putLong(context, s, l);
    }

}
