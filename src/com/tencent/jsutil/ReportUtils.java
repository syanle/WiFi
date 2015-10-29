// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.mta.TencentStat;
import com.tencent.open.cgireport.ReportManager;
import com.tencent.stat.StatConfig;
import com.tencent.tauth.QQToken;
import java.util.Properties;

public class ReportUtils
{

    private static final String BERNOULLI_REPORT_URL = "http://cgi.qplus.com/report/report";
    private static final int REPORT_BERNOULLI = 2;
    private static final int REPORT_QQ = 0;
    private static final int REPORT_TRACKCUSTOMEVENT = 1;
    private static final String REPORT_URL = "http://cgi.connect.qq.com/qqconnectutil/sdk";
    Context mContext;
    String mEvent;
    Handler mHandler;
    Properties mProperties;
    QQToken mQqToken;

    public ReportUtils(Context context, QQToken qqtoken)
    {
        mContext = null;
        mQqToken = null;
        mProperties = null;
        mEvent = null;
        mHandler = new _cls1();
        mContext = context;
        mQqToken = qqtoken;
    }

    public static void reportBernoulli(final Context context, String s, long l, String s1)
    {
        final Bundle params = new Bundle();
        params.putString("appid_for_getting_config", s1);
        params.putString("strValue", s1);
        params.putString("nValue", s);
        params.putString("qver", "2.0");
        if (l != 0L)
        {
            params.putLong("elt", l);
        }
        (new _cls2()).start();
    }

    public void cgiReport(String s, long l, long l1, long l2, 
            int i, String s1, String s2, String s3)
    {
        ReportManager.getInstance().report(mContext, s, l, l1, l2, i, s1, s2, s3);
    }

    public Properties getProperties(String s, String s1)
    {
        Properties properties = new Properties();
        properties.setProperty(s, s1);
        return properties;
    }

    public void reportBernoulli(String s, long l, String s1)
    {
        Message message = new Message();
        message.what = 2;
        Bundle bundle = new Bundle();
        bundle.putString("reportId", s);
        bundle.putString("appId", s1);
        bundle.putLong("costTime", l);
        message.setData(bundle);
        mHandler.sendMessage(message);
    }

    public void reportError(String s)
    {
        TencentStat.a(mContext, s);
    }

    public void reportQQ(String s)
    {
        mHandler.sendEmptyMessage(0);
    }

    public void setSessionTimoutMillis(int i)
    {
        StatConfig.setSessionTimoutMillis(i);
    }

    public void startMonitor(String s, String s1)
    {
        TencentStat.a(mContext, s, s1);
    }

    public void startQQ4Connect(String s)
    {
        boolean flag;
        if (s.equals("true"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        TencentStat.a(mContext, mQqToken, flag, "http://cgi.connect.qq.com/qqconnectutil/sdk");
    }

    public void trackCustomBeginKVEvent(String s, String s1, String s2)
    {
        s = getProperties(s, s1);
        mProperties = s;
        mEvent = s2;
        TencentStat.b(mContext, s, s2);
    }

    public void trackCustomEndKVEvent()
    {
        if (mProperties != null && mEvent != null)
        {
            TencentStat.c(mContext, mProperties, mEvent);
            mProperties = null;
            mEvent = null;
        }
    }

    public void trackCustomEvent(String s, String s1)
    {
        Message message = new Message();
        message.what = 1;
        Bundle bundle = new Bundle();
        bundle.putString("eventId", s);
        bundle.putString("array", s1);
        message.setData(bundle);
        mHandler.sendMessage(message);
    }

    public void trackCustomKVEvent(String s, String s1, String s2)
    {
        TencentStat.a(mContext, getProperties(s, s1), s2);
    }

    private class _cls1 extends Handler
    {

        final ReportUtils this$0;

        public void handleMessage(Message message)
        {
            Object obj;
            switch (message.what)
            {
            default:
                return;

            case 0: // '\0'
                TencentStat.c(mContext, mQqToken);
                return;

            case 1: // '\001'
                Bundle bundle = message.getData();
                message = bundle.getString("eventId");
                String as[] = bundle.getString("array").split(",");
                TencentStat.a(mContext, mQqToken, message, as);
                return;

            case 2: // '\002'
                obj = message.getData();
                break;
            }
            long l = ((Bundle) (obj)).getLong("costTime");
            message = ((Bundle) (obj)).getString("reportId");
            obj = ((Bundle) (obj)).getString("appId");
            ReportUtils.reportBernoulli(mContext, message, l, ((String) (obj)));
        }

        _cls1()
        {
            this$0 = ReportUtils.this;
            super();
        }
    }


    private class _cls2 extends Thread
    {

        final Context val$context;
        final Bundle val$params;

        public void run()
        {
            try
            {
                HttpUtils.openUrl(context, "http://cgi.qplus.com/report/report", "GET", params);
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        _cls2()
        {
            context = context1;
            params = bundle;
            super();
        }
    }

}
