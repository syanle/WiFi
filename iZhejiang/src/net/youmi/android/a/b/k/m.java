// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.os.Handler;
import android.os.Looper;

public class m
{

    private static m a;
    private Handler b;

    private m()
    {
        b = new Handler(Looper.getMainLooper());
    }

    public static m a()
    {
        net/youmi/android/a/b/k/m;
        JVM INSTR monitorenter ;
        m m1;
        Exception exception;
        try
        {
            if (a == null)
            {
                a = new m();
            }
        }
        catch (Throwable throwable) { }
        m1 = a;
        net/youmi/android/a/b/k/m;
        JVM INSTR monitorexit ;
        return m1;
        exception;
        throw exception;
    }

    public static boolean b()
    {
        boolean flag = false;
        Looper looper;
        Looper looper1;
        try
        {
            looper = Looper.myLooper();
            looper1 = Looper.getMainLooper();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (looper == looper1)
        {
            flag = true;
        }
        return flag;
    }

    public boolean a(Runnable runnable)
    {
        if (runnable == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = b.post(runnable);
        }
        // Misplaced declaration of an exception variable
        catch (Runnable runnable)
        {
            return false;
        }
        return flag;
    }

    public boolean a(Runnable runnable, long l)
    {
        if (runnable == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = b.postDelayed(runnable, l);
        }
        // Misplaced declaration of an exception variable
        catch (Runnable runnable)
        {
            return false;
        }
        return flag;
    }
}
