// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;

public class TelephoneBean
{

    private static String a = null;
    private static TelephoneBean b = null;

    protected TelephoneBean()
    {
    }

    public static TelephoneBean getInstance(TelephonyManager telephonymanager, Context context, String s)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        b = new TelephoneBean();
        a = telephonymanager.getDeviceId();
        telephonymanager = "";
        if (s != null && s.length() > 0) goto _L4; else goto _L3
_L3:
label0:
        {
            s = context.getSharedPreferences("APS_Preferences", 2);
            context = s.getString("imeisalt", "");
            if (context != null && context.length() > 0)
            {
                telephonymanager = context;
                if (!context.equalsIgnoreCase("null"))
                {
                    break label0;
                }
            }
            telephonymanager = String.valueOf((int)(Math.random() * 10000D));
            s.edit().putString("APS_Preferences", a).commit();
        }
_L6:
        a = (new StringBuilder(String.valueOf(a))).append(".").append(telephonymanager).toString();
_L2:
        return b;
_L4:
        if (s.equalsIgnoreCase("lenovodualcard"))
        {
            telephonymanager = String.valueOf(10000);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String getDeviceId()
    {
        return a;
    }

}
