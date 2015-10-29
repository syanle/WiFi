// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.telephony.TelephonyManager;

public class l
{

    public static boolean a(Context context)
    {
        context = (TelephonyManager)context.getSystemService("phone");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        int i = context.getNetworkType();
        if (i != 0)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_26;
        context;
        return false;
    }
}
