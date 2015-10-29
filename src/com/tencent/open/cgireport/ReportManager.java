// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open.cgireport;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.common.OpenConfig;
import java.util.ArrayList;
import java.util.Random;

// Referenced classes of package com.tencent.open.cgireport:
//            e, a, c, d

public class ReportManager
{

    public static final String POST = "POST";
    private static ReportManager mInstance = null;
    private e dataModal;
    private long mLastReportTime;
    private Random mRand;
    private int mReportRetryCount;
    private boolean mUploading;
    private ArrayList newItems;
    private ArrayList oldItems;

    public ReportManager()
    {
        mLastReportTime = 0L;
        mReportRetryCount = 3;
        mUploading = false;
        newItems = new ArrayList();
        oldItems = new ArrayList();
        mRand = new Random();
    }

    private boolean availableForCount(Context context)
    {
        int j = OpenConfig.a(context, null).b("Common_CGIReportMaxcount");
        Log.d("OpenConfig_test", (new StringBuilder()).append("config 6:Common_CGIReportMaxcount     config_value:").append(j).toString());
        int i = j;
        if (j == 0)
        {
            i = 20;
        }
        Log.d("OpenConfig_test", (new StringBuilder()).append("config 6:Common_CGIReportMaxcount     result_value:").append(i).toString());
        if (dataModal.e() >= i)
        {
            Log.i("cgi_report_debug", "ReportManager availableForCount = ture");
            return true;
        } else
        {
            Log.i("cgi_report_debug", "ReportManager availableForCount = false");
            return false;
        }
    }

    private boolean availableForFrequency(Context context, int i)
    {
        i = countFrequency(context, i);
        if (mRand.nextInt(100) < i)
        {
            Log.i("cgi_report_debug", "ReportManager availableForFrequency = ture");
            return true;
        } else
        {
            Log.i("cgi_report_debug", "ReportManager availableForFrequency = false");
            return false;
        }
    }

    private boolean availableForTime(Context context)
    {
        long l1 = OpenConfig.a(context, null).c("Common_CGIReportTimeinterval");
        Log.d("OpenConfig_test", (new StringBuilder()).append("config 5:Common_CGIReportTimeinterval     config_value:").append(l1).toString());
        long l = l1;
        if (l1 == 0L)
        {
            l = 1200L;
        }
        Log.d("OpenConfig_test", (new StringBuilder()).append("config 5:Common_CGIReportTimeinterval     result_value:").append(l).toString());
        l1 = System.currentTimeMillis() / 1000L;
        if (mLastReportTime == 0L || l + mLastReportTime <= l1)
        {
            mLastReportTime = l1;
            Log.i("cgi_report_debug", "ReportManager availableForTime = ture");
            return true;
        } else
        {
            Log.i("cgi_report_debug", "ReportManager availableForTime = false");
            return false;
        }
    }

    private int countFrequency(Context context, int i)
    {
        if (i == 0)
        {
            int j = OpenConfig.a(context, null).b("Common_CGIReportFrequencySuccess");
            Log.d("OpenConfig_agent", (new StringBuilder()).append("config 4:Common_CGIReportFrequencySuccess     config_value:").append(j).toString());
            i = j;
            if (j == 0)
            {
                i = 10;
            }
            Log.d("OpenConfig_agent", (new StringBuilder()).append("config 4:Common_CGIReportFrequencySuccess     result_value:").append(i).toString());
            return i;
        }
        int k = OpenConfig.a(context, null).b("Common_CGIReportFrequencyFailed");
        Log.d("OpenConfig_agent", (new StringBuilder()).append("config 4:Common_CGIReportFrequencyFailed     config_value:").append(k).toString());
        i = k;
        if (k == 0)
        {
            i = 100;
        }
        Log.d("OpenConfig_agent", (new StringBuilder()).append("config 4:Common_CGIReportFrequencyFailed     result_value:").append(i).toString());
        return i;
    }

    private void doUpload(Context context, String s)
    {
        Log.i("cgi_report_debug", "ReportManager doUpload start");
        mUploading = true;
        newItems = dataModal.c();
        dataModal.b();
        oldItems = dataModal.d();
        dataModal.a();
        Bundle bundle = new Bundle();
        bundle.putString("appid", s);
        bundle.putString("releaseversion", "QQConnect_SDK_Android_1_7");
        bundle.putString("device", Build.DEVICE);
        bundle.putString("qua", "V1_AND_OpenSDK_2.0_1077_RDM_B");
        bundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,deviceinfo");
        for (int i = 0; i < newItems.size(); i++)
        {
            bundle.putString((new StringBuilder()).append(i).append("_1").toString(), ((a)newItems.get(i)).a());
            bundle.putString((new StringBuilder()).append(i).append("_2").toString(), ((a)newItems.get(i)).b());
            bundle.putString((new StringBuilder()).append(i).append("_3").toString(), ((a)newItems.get(i)).c());
            bundle.putString((new StringBuilder()).append(i).append("_4").toString(), ((a)newItems.get(i)).d());
            bundle.putString((new StringBuilder()).append(i).append("_5").toString(), ((a)newItems.get(i)).e());
            bundle.putString((new StringBuilder()).append(i).append("_6").toString(), ((a)newItems.get(i)).f());
            bundle.putString((new StringBuilder()).append(i).append("_7").toString(), ((a)newItems.get(i)).g());
            bundle.putString((new StringBuilder()).append(i).append("_8").toString(), ((a)newItems.get(i)).h());
            s = (new StringBuilder()).append(c.b(context)).append(((a)newItems.get(i)).i()).toString();
            bundle.putString((new StringBuilder()).append(i).append("_9").toString(), s);
        }

        for (int j = newItems.size(); j < oldItems.size() + newItems.size(); j++)
        {
            int k = j - newItems.size();
            bundle.putString((new StringBuilder()).append(j).append("_1").toString(), ((a)oldItems.get(k)).a());
            bundle.putString((new StringBuilder()).append(j).append("_2").toString(), ((a)oldItems.get(k)).b());
            bundle.putString((new StringBuilder()).append(j).append("_3").toString(), ((a)oldItems.get(k)).c());
            bundle.putString((new StringBuilder()).append(j).append("_4").toString(), ((a)oldItems.get(k)).d());
            bundle.putString((new StringBuilder()).append(j).append("_5").toString(), ((a)oldItems.get(k)).e());
            bundle.putString((new StringBuilder()).append(j).append("_6").toString(), ((a)oldItems.get(k)).f());
            bundle.putString((new StringBuilder()).append(j).append("_7").toString(), ((a)oldItems.get(k)).g());
            bundle.putString((new StringBuilder()).append(j).append("_8").toString(), ((a)newItems.get(k)).h());
            s = (new StringBuilder()).append(c.b(context)).append(((a)newItems.get(k)).i()).toString();
            bundle.putString((new StringBuilder()).append(j).append("_9").toString(), s);
        }

        doUploadItems(context, "http://wspeed.qq.com/w.cgi", "POST", bundle);
    }

    private void doUploadItems(Context context, String s, String s1, Bundle bundle)
    {
        (new d(this, s, context, bundle)).start();
    }

    private String getAPN(Context context)
    {
        try
        {
            context = (ConnectivityManager)context.getSystemService("connectivity");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "unknow";
        }
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        Log.e("cgi_report_debug", "ReportManager getAPN failed:ConnectivityManager == null");
        return "no_net";
        context = context.getActiveNetworkInfo();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        if (context.isAvailable())
        {
            break MISSING_BLOCK_LABEL_57;
        }
        Log.e("cgi_report_debug", "ReportManager getAPN failed:NetworkInfo == null");
        return "no_net";
        if (!context.getTypeName().toUpperCase().equals("WIFI"))
        {
            break MISSING_BLOCK_LABEL_86;
        }
        Log.i("cgi_report_debug", "ReportManager getAPN type = wifi");
        return "wifi";
        context = context.getExtraInfo();
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        Log.e("cgi_report_debug", "ReportManager getAPN failed:extraInfo == null");
        return "mobile_unknow";
        context = context.toLowerCase();
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportManager getAPN type = ").append(context).toString());
        return context;
    }

    public static ReportManager getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new ReportManager();
        }
        return mInstance;
    }

    private void updateDB(Context context, String s, long l, long l1, long l2, int i, String s1, String s2)
    {
        int j;
        l = SystemClock.elapsedRealtime() - l;
        Log.i("cgi_report_debug", (new StringBuilder()).append("ReportManager updateDB url=").append(s).append(",resultCode=").append(i).append(",timeCost=").append(l).append(",reqSize=").append(l1).append(",rspSize=").append(l2).toString());
        j = 100 / countFrequency(context, i);
        if (j > 0) goto _L2; else goto _L1
_L1:
        j = 1;
_L4:
        context = getAPN(context);
        dataModal.a(context, (new StringBuilder()).append(j).append("").toString(), s, i, l, l1, l2, s2);
        return;
_L2:
        if (j > 100)
        {
            j = 100;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void report(Context context, String s, long l, long l1, long l2, int i, String s1)
    {
        report(context, s, l, l1, l2, i, s1, "", null);
    }

    public void report(Context context, String s, long l, long l1, long l2, int i, String s1, String s2, String s3)
    {
        String s4 = s3;
        if (s3 == null)
        {
            s4 = "1000067";
        }
        if (dataModal == null)
        {
            dataModal = new e(context);
        }
        if (availableForFrequency(context, i))
        {
            updateDB(context, s, l, l1, l2, i, s1, s2);
            if (!mUploading)
            {
                if (availableForTime(context))
                {
                    doUpload(context, s4);
                    return;
                }
                if (availableForCount(context))
                {
                    doUpload(context, s4);
                    return;
                }
            }
        }
    }




/*
    static int access$002(ReportManager reportmanager, int i)
    {
        reportmanager.mReportRetryCount = i;
        return i;
    }

*/


/*
    static boolean access$102(ReportManager reportmanager, boolean flag)
    {
        reportmanager.mUploading = flag;
        return flag;
    }

*/


}
