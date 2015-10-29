// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.utils;

import android.util.Log;

public class LogHelper
{

    private static final int RETURN_NOLOG = -1;
    public static boolean enableDefaultLog = false;

    public LogHelper()
    {
    }

    public static int d(String s, String s1)
    {
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "";
        }
        if (enableDefaultLog)
        {
            return Log.d(s, s2);
        } else
        {
            return -1;
        }
    }

    public static int e(String s, String s1)
    {
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "";
        }
        if (enableDefaultLog)
        {
            return Log.e(s, s2);
        } else
        {
            return -1;
        }
    }

    public static int i(String s, String s1)
    {
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "";
        }
        if (enableDefaultLog)
        {
            return Log.i(s, s2);
        } else
        {
            return -1;
        }
    }

    public static int w(String s, String s1)
    {
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "";
        }
        if (enableDefaultLog)
        {
            return Log.w(s, s2);
        } else
        {
            return -1;
        }
    }

}
