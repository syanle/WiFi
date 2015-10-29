// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.upload;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.qihoo.linker.logcollector.capture.LogFileStorage;
import java.io.IOException;

// Referenced classes of package com.qihoo.linker.logcollector.upload:
//            HttpParameters, HttpManager

public class UploadLogManager
{
    private final class MyHandler extends Handler
    {

        final UploadLogManager this$0;

        public void handleMessage(Message message)
        {
            message = LogFileStorage.getInstance(mContext).getUploadLogFile();
            if (message == null)
            {
                isRunning = false;
                return;
            }
            if (HttpManager.uploadFile(url, params, message) != null)
            {
                LogFileStorage.getInstance(mContext).deleteUploadLogFile();
            }
            isRunning = false;
            return;
            message;
            message.printStackTrace();
            isRunning = false;
            return;
            message;
            isRunning = false;
            throw message;
        }

        public MyHandler(Looper looper)
        {
            this$0 = UploadLogManager.this;
            super(looper);
        }
    }


    private static final String TAG = com/qihoo/linker/logcollector/upload/UploadLogManager.getName();
    private static volatile MyHandler mHandler;
    private static UploadLogManager sInstance;
    private volatile boolean isRunning;
    private Context mContext;
    private HandlerThread mHandlerThread;
    private volatile Looper mLooper;
    private HttpParameters params;
    private String url;

    private UploadLogManager(Context context)
    {
        isRunning = false;
        mContext = context.getApplicationContext();
        mHandlerThread = new HandlerThread((new StringBuilder(String.valueOf(TAG))).append(":HandlerThread").toString());
        mHandlerThread.start();
    }

    public static UploadLogManager getInstance(Context context)
    {
        com/qihoo/linker/logcollector/upload/UploadLogManager;
        JVM INSTR monitorenter ;
        if (sInstance == null)
        {
            sInstance = new UploadLogManager(context);
        }
        context = sInstance;
        com/qihoo/linker/logcollector/upload/UploadLogManager;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public void uploadLogFile(String s, HttpParameters httpparameters)
    {
        url = s;
        params = httpparameters;
        mLooper = mHandlerThread.getLooper();
        for (mHandler = new MyHandler(mLooper); mHandlerThread == null || isRunning;)
        {
            return;
        }

        mHandler.sendMessage(mHandler.obtainMessage());
        isRunning = true;
    }





}
