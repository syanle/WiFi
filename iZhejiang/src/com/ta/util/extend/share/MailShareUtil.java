// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend.share;

import android.content.Context;
import android.content.Intent;

public class MailShareUtil
{

    public MailShareUtil()
    {
    }

    public static Boolean sendMail(Context context, String s, String s1)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.EMAIL", "");
        intent.putExtra("android.intent.extra.SUBJECT", s);
        intent.putExtra("android.intent.extra.TEXT", s1);
        context.startActivity(Intent.createChooser(intent, "Choose Email Client"));
        return null;
    }
}
