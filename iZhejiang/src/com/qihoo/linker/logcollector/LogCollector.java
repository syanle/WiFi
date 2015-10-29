// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector;

import android.content.Context;
import android.util.Log;
import com.qihoo.linker.logcollector.capture.CrashHandler;
import com.qihoo.linker.logcollector.upload.HttpParameters;
import com.qihoo.linker.logcollector.upload.UploadLogManager;
import com.qihoo.linker.logcollector.utils.Constants;
import com.qihoo.linker.logcollector.utils.LogCollectorUtility;
import com.qihoo.linker.logcollector.utils.LogHelper;

public class LogCollector
{

    private static final String TAG = com/qihoo/linker/logcollector/LogCollector.getName();
    private static String Upload_Url;
    private static boolean isInit = false;
    private static Context mContext;
    private static HttpParameters mParams;

    public LogCollector()
    {
    }

    public static void init(Context context, String s, HttpParameters httpparameters)
    {
        while (context == null || isInit) 
        {
            return;
        }
        Upload_Url = s;
        mContext = context;
        mParams = httpparameters;
        CrashHandler.getInstance(context).init();
        isInit = true;
    }

    public static void setDebugMode(boolean flag)
    {
        Constants.DEBUG = flag;
        LogHelper.enableDefaultLog = flag;
    }

    public static void upload(boolean flag)
    {
        if (mContext == null || Upload_Url == null)
        {
            Log.d(TAG, "please check if init() or not");
        } else
        if (LogCollectorUtility.isNetworkConnected(mContext))
        {
            boolean flag1 = LogCollectorUtility.isWifiConnected(mContext);
            if (!flag || flag1)
            {
                UploadLogManager.getInstance(mContext).uploadLogFile(Upload_Url, mParams);
                return;
            }
        }
    }

}
