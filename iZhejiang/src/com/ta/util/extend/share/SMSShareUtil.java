// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public class SMSShareUtil
{

    public SMSShareUtil()
    {
    }

    public static Boolean sendSms(Context context, String s)
    {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:"));
        intent.putExtra("sms_body", s);
        context.startActivity(intent);
        return null;
    }
}
