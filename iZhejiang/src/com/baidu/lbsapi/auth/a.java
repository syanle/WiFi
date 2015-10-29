// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import android.util.Log;

class a
{

    public static boolean a = false;

    public static String a()
    {
        StackTraceElement stacktraceelement = (new Throwable()).getStackTrace()[2];
        return (new StringBuilder()).append(stacktraceelement.getFileName()).append("[").append(stacktraceelement.getLineNumber()).append("]").toString();
    }

    public static void a(String s)
    {
        if (Thread.currentThread().getStackTrace().length == 0)
        {
            return;
        } else
        {
            Log.d(a(), s);
            return;
        }
    }

}
