// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.capture;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.util.Base64;
import com.qihoo.linker.logcollector.utils.Constants;
import com.qihoo.linker.logcollector.utils.LogCollectorUtility;
import com.qihoo.linker.logcollector.utils.LogHelper;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.qihoo.linker.logcollector.capture:
//            LogFileStorage

public class CrashHandler
    implements Thread.UncaughtExceptionHandler
{

    private static final String CHARSET = "UTF-8";
    private static final String TAG = com/qihoo/linker/logcollector/capture/CrashHandler.getName();
    private static CrashHandler sInstance;
    String OsVer;
    String appVerCode;
    String appVerName;
    private Context mContext;
    private Thread.UncaughtExceptionHandler mDefaultCrashHandler;
    String mid;
    String model;
    String vendor;

    private CrashHandler(Context context)
    {
        mContext = context.getApplicationContext();
        appVerName = (new StringBuilder("appVerName:")).append(LogCollectorUtility.getVerName(mContext)).toString();
        appVerCode = (new StringBuilder("appVerCode:")).append(LogCollectorUtility.getVerCode(mContext)).toString();
        OsVer = (new StringBuilder("OsVer:")).append(android.os.Build.VERSION.RELEASE).toString();
        vendor = (new StringBuilder("vendor:")).append(Build.MANUFACTURER).toString();
        model = (new StringBuilder("model:")).append(Build.MODEL).toString();
        mid = (new StringBuilder("mid:")).append(LogCollectorUtility.getMid(mContext)).toString();
    }

    private String fomatCrashInfo(Throwable throwable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = (new StringBuilder("logTime:")).append(LogCollectorUtility.getCurrentTime()).toString();
        String s1 = (new StringBuilder("exception:")).append(throwable.toString()).toString();
        Object obj = new StringWriter();
        PrintWriter printwriter = new PrintWriter(((java.io.Writer) (obj)));
        throwable.printStackTrace(printwriter);
        obj = obj.toString();
        throwable = (new StringBuilder("crashMD5:")).append(LogCollectorUtility.getMD5Str(((String) (obj)))).toString();
        obj = (new StringBuilder("crashDump:{")).append(((String) (obj))).append("}").toString();
        printwriter.close();
        stringbuilder.append("&start---").append("\r\n");
        stringbuilder.append(s).append("\r\n");
        stringbuilder.append(appVerName).append("\r\n");
        stringbuilder.append(appVerCode).append("\r\n");
        stringbuilder.append(OsVer).append("\r\n");
        stringbuilder.append(vendor).append("\r\n");
        stringbuilder.append(model).append("\r\n");
        stringbuilder.append(mid).append("\r\n");
        stringbuilder.append(s1).append("\r\n");
        stringbuilder.append(throwable).append("\r\n");
        stringbuilder.append(((String) (obj))).append("\r\n");
        stringbuilder.append("&end---").append("\r\n").append("\r\n").append("\r\n");
        return stringbuilder.toString();
    }

    private String fomatCrashInfoEncode(Throwable throwable)
    {
        StringBuilder stringbuilder;
        String s1;
        String s2;
        PrintWriter printwriter;
        String s3;
        stringbuilder = new StringBuilder();
        s1 = (new StringBuilder("logTime:")).append(LogCollectorUtility.getCurrentTime()).toString();
        s2 = (new StringBuilder("exception:")).append(throwable.toString()).toString();
        StringWriter stringwriter = new StringWriter();
        printwriter = new PrintWriter(stringwriter);
        throwable.printStackTrace(printwriter);
        throwable = stringwriter.toString();
        s3 = (new StringBuilder("crashMD5:")).append(LogCollectorUtility.getMD5Str(throwable)).toString();
        String s = URLEncoder.encode(throwable, "UTF-8");
        throwable = s;
_L2:
        throwable = (new StringBuilder("crashDump:{")).append(throwable).append("}").toString();
        printwriter.close();
        stringbuilder.append("&start---").append("\r\n");
        stringbuilder.append(s1).append("\r\n");
        stringbuilder.append(appVerName).append("\r\n");
        stringbuilder.append(appVerCode).append("\r\n");
        stringbuilder.append(OsVer).append("\r\n");
        stringbuilder.append(vendor).append("\r\n");
        stringbuilder.append(model).append("\r\n");
        stringbuilder.append(mid).append("\r\n");
        stringbuilder.append(s2).append("\r\n");
        stringbuilder.append(s3).append("\r\n");
        stringbuilder.append(throwable).append("\r\n");
        stringbuilder.append("&end---").append("\r\n").append("\r\n").append("\r\n");
        return Base64.encodeToString(stringbuilder.toString().getBytes(), 2);
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        unsupportedencodingexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static CrashHandler getInstance(Context context)
    {
        if (context == null)
        {
            LogHelper.e(TAG, "Context is null");
            return null;
        }
        if (sInstance == null)
        {
            sInstance = new CrashHandler(context);
        }
        return sInstance;
    }

    private void handleException(Throwable throwable)
    {
        throwable = fomatCrashInfo(throwable);
        LogHelper.d(TAG, throwable);
        LogFileStorage.getInstance(mContext).saveLogFile2Internal(throwable);
        if (Constants.DEBUG)
        {
            LogFileStorage.getInstance(mContext).saveLogFile2SDcard(throwable, true);
        }
    }

    public void init()
    {
        while (mContext == null || !LogCollectorUtility.hasPermission(mContext)) 
        {
            return;
        }
        mDefaultCrashHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        handleException(throwable);
        throwable.printStackTrace();
        if (mDefaultCrashHandler != null)
        {
            mDefaultCrashHandler.uncaughtException(thread, throwable);
            return;
        } else
        {
            Process.killProcess(Process.myPid());
            return;
        }
    }

}
