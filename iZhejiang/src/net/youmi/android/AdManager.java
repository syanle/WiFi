// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import android.content.Context;
import net.youmi.android.a.a.g.e.l;
import net.youmi.android.a.c.a;
import net.youmi.android.onlineconfig.OnlineConfigCallBack;
import net.youmi.android.onlineconfig.d;
import net.youmi.android.onlineconfig.ntp.NtpResultListener;
import net.youmi.android.onlineconfig.ntp.c;
import net.youmi.android.update.AppUpdateInfo;
import net.youmi.android.update.CheckAppUpdateCallBack;
import net.youmi.android.update.b;

public final class AdManager
{

    private static AdManager b;
    private static boolean c = true;
    private static boolean d = true;
    private Context a;

    private AdManager(Context context)
    {
        a = context.getApplicationContext();
    }

    public static AdManager getInstance(Context context)
    {
        net/youmi/android/AdManager;
        JVM INSTR monitorenter ;
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        throw new NullPointerException("context is null");
        context;
        net/youmi/android/AdManager;
        JVM INSTR monitorexit ;
        throw context;
        b = new AdManager(context);
        context = b;
        net/youmi/android/AdManager;
        JVM INSTR monitorexit ;
        return context;
    }

    public static boolean isDownloadTipsDisplayOnNotification()
    {
        return d;
    }

    public static boolean isInstallationSuccessTipsDisplayOnNotification()
    {
        return c;
    }

    public static void setIsDownloadTipsDisplayOnNotification(boolean flag)
    {
        d = flag;
    }

    public static void setIsInstallationSuccessTipsDisplayOnNotification(boolean flag)
    {
        c = flag;
    }

    public void asyncCheckAppUpdate(CheckAppUpdateCallBack checkappupdatecallback)
    {
        try
        {
            net.youmi.android.a.c.a.a(new b(a, checkappupdatecallback));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (CheckAppUpdateCallBack checkappupdatecallback)
        {
            net.youmi.android.a.c.b.a.a(checkappupdatecallback);
        }
    }

    public void asyncCheckIsReachNtpTime(int i, int j, int k, NtpResultListener ntpresultlistener)
    {
        try
        {
            net.youmi.android.a.c.a.a(new c(i, j, k, ntpresultlistener));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (NtpResultListener ntpresultlistener)
        {
            net.youmi.android.a.c.b.a.a(ntpresultlistener);
        }
    }

    public void asyncGetOnlineConfig(String s, OnlineConfigCallBack onlineconfigcallback)
    {
        try
        {
            net.youmi.android.a.c.a.a(new d(a, onlineconfigcallback, s));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            net.youmi.android.a.c.b.a.a(s);
        }
    }

    public AppUpdateInfo checkAppUpdate()
    {
        AppUpdateInfo appupdateinfo;
        try
        {
            appupdateinfo = net.youmi.android.update.a.a(a);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return null;
        }
        return appupdateinfo;
    }

    public String getOnlineConfig(String s, String s1)
    {
        return syncGetOnlineConfig(s, s1);
    }

    public void init(String s, String s1)
    {
        init(s, s1, false);
    }

    public void init(String s, String s1, boolean flag)
    {
        try
        {
            net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.e.a(a, s, s1, flag));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            net.youmi.android.a.c.b.a.a(s);
        }
    }

    public void setEnableDebugLog(boolean flag)
    {
        net.youmi.android.a.c.b.a.a(flag);
    }

    public void setUserDataCollect(boolean flag)
    {
        try
        {
            net.youmi.android.a.c.a.a(new l(a, flag));
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
    }

    public AppUpdateInfo syncCheckAppUpdate()
    {
        AppUpdateInfo appupdateinfo;
        try
        {
            appupdateinfo = net.youmi.android.update.a.a(a);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return null;
        }
        return appupdateinfo;
    }

    public boolean syncCheckIsReachNtpTime(int i, int j, int k)
    {
        boolean flag;
        try
        {
            flag = (new net.youmi.android.onlineconfig.ntp.a(i, j, k)).a();
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return false;
        }
        return flag;
    }

    public String syncGetOnlineConfig(String s, String s1)
    {
        try
        {
            s = net.youmi.android.onlineconfig.b.a(a, s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            net.youmi.android.a.c.b.a.a(s);
            return s1;
        }
        return s;
    }

    public void testInit(String s, String s1, boolean flag)
    {
        (new net.youmi.android.a.a.g.e.a(a, s, s1, flag)).a();
    }

}
