// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mta;

import android.content.Context;
import android.util.Log;
import com.tencent.common.OpenConfig;
import com.tencent.stat.MtaSDkException;
import com.tencent.stat.StatAppMonitor;
import com.tencent.stat.StatConfig;
import com.tencent.stat.StatReportStrategy;
import com.tencent.stat.StatService;
import com.tencent.tauth.QQToken;
import java.util.Properties;

public class TencentStat
{

    private static final String a = com/tencent/mta/TencentStat.getSimpleName();

    public TencentStat()
    {
    }

    public static transient void a(Context context, QQToken qqtoken, String s, String as[])
    {
        b(context, qqtoken);
        StatService.trackCustomEvent(context, s, as);
    }

    public static void a(Context context, QQToken qqtoken, boolean flag, String s)
    {
        b(context, qqtoken);
        qqtoken = qqtoken.getAppId();
        qqtoken = (new StringBuilder()).append("Aqc").append(qqtoken).toString();
        StatConfig.setAutoExceptionCaught(flag);
        StatConfig.setEnableSmartReporting(true);
        StatConfig.setSendPeriodMinutes(1440);
        StatConfig.setStatSendStrategy(StatReportStrategy.PERIOD);
        StatConfig.setStatReportUrl(s);
        try
        {
            StatService.startStatService(context, qqtoken, "1.0.0");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("DEBUG", "MTA init Failed.");
        }
    }

    public static void a(Context context, String s)
    {
        StatService.reportError(context, s);
    }

    public static void a(Context context, String s, String s1)
    {
        String s2;
        Object obj;
        Object obj1;
        StatAppMonitor statappmonitor;
        Runtime runtime;
        statappmonitor = new StatAppMonitor(s);
        runtime = Runtime.getRuntime();
        obj1 = null;
        obj = null;
        s2 = obj;
        s = obj1;
        long l = System.currentTimeMillis();
        s2 = obj;
        s = obj1;
        s1 = runtime.exec(s1);
        s2 = s1;
        s = s1;
        s1.waitFor();
        s2 = s1;
        s = s1;
        statappmonitor.setMillisecondsConsume(System.currentTimeMillis() - l);
        s2 = s1;
        s = s1;
        int i = s1.waitFor();
        s2 = s1;
        s = s1;
        statappmonitor.setReturnCode(i);
        s2 = s1;
        s = s1;
        statappmonitor.setReqSize(1000L);
        s2 = s1;
        s = s1;
        statappmonitor.setRespSize(2000L);
        s2 = s1;
        s = s1;
        statappmonitor.setSampling(2);
        if (i != 0) goto _L2; else goto _L1
_L1:
        s2 = s1;
        s = s1;
        Log.d(a, "ping\u8FDE\u63A5\u6210\u529F");
        s2 = s1;
        s = s1;
        statappmonitor.setResultType(0);
_L6:
        s1.destroy();
_L4:
        StatService.reportAppMonitorStat(context, statappmonitor);
        return;
_L2:
        s2 = s1;
        s = s1;
        Log.d(a, "ping\u6D4B\u8BD5\u5931\u8D25");
        s2 = s1;
        s = s1;
        try
        {
            statappmonitor.setResultType(2);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s = s2;
        }
        finally
        {
            s.destroy();
            throw context;
        }
        Log.e(a, s1.toString());
        s = s2;
        statappmonitor.setResultType(1);
        s2.destroy();
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void a(Context context, Properties properties, String s)
    {
        StatService.trackCustomKVEvent(context, s, properties);
    }

    public static boolean a(Context context, QQToken qqtoken)
    {
        return OpenConfig.a(context, qqtoken.getAppId()).d("Common_ta_enable");
    }

    public static void b(Context context, QQToken qqtoken)
    {
        if (a(context, qqtoken))
        {
            StatConfig.setEnableStatService(true);
            return;
        } else
        {
            StatConfig.setEnableStatService(false);
            return;
        }
    }

    public static void b(Context context, Properties properties, String s)
    {
        StatService.trackCustomBeginKVEvent(context, s, properties);
    }

    public static void c(Context context, QQToken qqtoken)
    {
        b(context, qqtoken);
        if (qqtoken.getOpenId() != null)
        {
            StatService.reportQQ(context, qqtoken.getOpenId());
        }
    }

    public static void c(Context context, Properties properties, String s)
    {
        StatService.trackCustomEndKVEvent(context, s, properties);
    }

}
