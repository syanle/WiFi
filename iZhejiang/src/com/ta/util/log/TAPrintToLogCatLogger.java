// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.log;

import android.util.Log;

// Referenced classes of package com.ta.util.log:
//            ILogger

public class TAPrintToLogCatLogger
    implements ILogger
{

    public TAPrintToLogCatLogger()
    {
    }

    public void close()
    {
    }

    public void d(String s, String s1)
    {
        Log.d(s, s1);
    }

    public void e(String s, String s1)
    {
        Log.e(s, s1);
    }

    public void i(String s, String s1)
    {
        Log.i(s, s1);
    }

    public void open()
    {
    }

    public void println(int j, String s, String s1)
    {
        Log.println(j, s, s1);
    }

    public void v(String s, String s1)
    {
        Log.v(s, s1);
    }

    public void w(String s, String s1)
    {
        Log.w(s, s1);
    }
}
