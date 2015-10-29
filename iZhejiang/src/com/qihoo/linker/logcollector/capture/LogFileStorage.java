// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.capture;

import android.content.Context;
import android.util.Log;
import com.qihoo.linker.logcollector.utils.LogCollectorUtility;
import com.qihoo.linker.logcollector.utils.LogHelper;
import java.io.File;
import java.io.FileOutputStream;

public class LogFileStorage
{

    private static final String CHARSET = "UTF-8";
    public static final String LOG_SUFFIX = ".log";
    private static final String TAG = com/qihoo/linker/logcollector/capture/LogFileStorage.getName();
    private static LogFileStorage sInstance;
    private Context mContext;

    private LogFileStorage(Context context)
    {
        mContext = context.getApplicationContext();
    }

    private File getExternalLogDir()
    {
        File file = LogCollectorUtility.getExternalDir(mContext, "Log");
        LogHelper.d(TAG, file.getPath());
        return file;
    }

    public static LogFileStorage getInstance(Context context)
    {
        com/qihoo/linker/logcollector/capture/LogFileStorage;
        JVM INSTR monitorenter ;
        if (context != null) goto _L2; else goto _L1
_L1:
        LogHelper.e(TAG, "Context is null");
        context = null;
_L4:
        com/qihoo/linker/logcollector/capture/LogFileStorage;
        JVM INSTR monitorexit ;
        return context;
_L2:
        if (sInstance == null)
        {
            sInstance = new LogFileStorage(context);
        }
        context = sInstance;
        if (true) goto _L4; else goto _L3
_L3:
        context;
        throw context;
    }

    public boolean deleteUploadLogFile()
    {
        return (new File(mContext.getFilesDir(), (new StringBuilder(String.valueOf(LogCollectorUtility.getMid(mContext)))).append(".log").toString())).delete();
    }

    public File getUploadLogFile()
    {
        File file = new File(mContext.getFilesDir(), (new StringBuilder(String.valueOf(LogCollectorUtility.getMid(mContext)))).append(".log").toString());
        if (file.exists())
        {
            return file;
        } else
        {
            return null;
        }
    }

    public boolean saveLogFile2Internal(String s)
    {
        try
        {
            Object obj = mContext.getFilesDir();
            if (!((File) (obj)).exists())
            {
                ((File) (obj)).mkdirs();
            }
            obj = new FileOutputStream(new File(((File) (obj)), (new StringBuilder(String.valueOf(LogCollectorUtility.getMid(mContext)))).append(".log").toString()), true);
            ((FileOutputStream) (obj)).write(s.getBytes("UTF-8"));
            ((FileOutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            LogHelper.e(TAG, "saveLogFile2Internal failed!");
            return false;
        }
        return true;
    }

    public boolean saveLogFile2SDcard(String s, boolean flag)
    {
        if (!LogCollectorUtility.isSDcardExsit())
        {
            LogHelper.e(TAG, "sdcard not exist");
            return false;
        }
        try
        {
            Object obj = getExternalLogDir();
            if (!((File) (obj)).exists())
            {
                ((File) (obj)).mkdirs();
            }
            obj = new File(((File) (obj)), (new StringBuilder(String.valueOf(LogCollectorUtility.getMid(mContext)))).append(".log").toString());
            LogHelper.d(TAG, ((File) (obj)).getPath());
            obj = new FileOutputStream(((File) (obj)), flag);
            ((FileOutputStream) (obj)).write(s.getBytes("UTF-8"));
            ((FileOutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            Log.e(TAG, "saveLogFile2SDcard failed!");
            return false;
        }
        return true;
    }

}
