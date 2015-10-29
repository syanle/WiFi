// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.util;

import android.util.Log;

public class SDKLogger
{

    private static boolean isOpenErrorLogger = true;
    private static boolean isOpenInfoLogger = false;

    public SDKLogger()
    {
    }

    public static void e(Class class1, String s)
    {
        if (isOpenErrorLogger)
        {
            Log.e((new StringBuilder()).append("Yixin.SDK.").append(class1.getSimpleName()).toString(), s);
        }
    }

    public static void i(Class class1, String s)
    {
        if (isOpenInfoLogger)
        {
            Log.i((new StringBuilder()).append("Yixin.SDK.").append(class1.getSimpleName()).toString(), s);
        }
    }

    public static void setOpenErrorLogger(boolean flag)
    {
        isOpenErrorLogger = flag;
    }

    public static void setOpenInfoLogger(boolean flag)
    {
        isOpenInfoLogger = flag;
    }

}
