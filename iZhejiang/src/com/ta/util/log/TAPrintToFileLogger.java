// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.log;

import android.content.Context;
import com.ta.TAApplication;
import com.ta.common.AndroidVersionCheckUtils;
import com.ta.util.cache.TAExternalOverFroyoUtils;
import com.ta.util.cache.TAExternalUnderFroyoUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.ta.util.log:
//            ILogger

public class TAPrintToFileLogger
    implements ILogger
{

    public static final int ASSERT = 7;
    private static String BASE_FILENAME = "ta.log";
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    private static String LOG_DIR = "log";
    private static final SimpleDateFormat TIMESTAMP_FMT = new SimpleDateFormat("[yyyy-MM-dd HH:mm:ss] ");
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private String basePath;
    private File logDir;
    private String mPath;
    private Writer mWriter;

    public TAPrintToFileLogger()
    {
        basePath = "";
    }

    private String getCurrentTimeString()
    {
        Date date = new Date();
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(date);
    }

    public void close()
    {
        try
        {
            mWriter.close();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void d(String s, String s1)
    {
        println(3, s, s1);
    }

    public void e(String s, String s1)
    {
        println(6, s, s1);
    }

    public String getPath()
    {
        return mPath;
    }

    public void i(String s, String s1)
    {
        println(4, s, s1);
    }

    public void open()
    {
        if (AndroidVersionCheckUtils.hasFroyo())
        {
            logDir = TAExternalOverFroyoUtils.getDiskCacheDir(TAApplication.getApplication().getApplicationContext(), LOG_DIR);
        } else
        {
            logDir = TAExternalUnderFroyoUtils.getDiskCacheDir(TAApplication.getApplication().getApplicationContext(), LOG_DIR);
        }
        if (!logDir.exists())
        {
            logDir.mkdirs();
            try
            {
                (new File(logDir, ".nomedia")).createNewFile();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        basePath = (new StringBuilder(String.valueOf(logDir.getAbsolutePath()))).append("/").append(BASE_FILENAME).toString();
        try
        {
            mPath = (new File((new StringBuilder(String.valueOf(basePath))).append("-").append(getCurrentTimeString()).toString())).getAbsolutePath();
            mWriter = new BufferedWriter(new FileWriter(mPath), 2048);
            return;
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
    }

    public void println(int j, String s, String s1)
    {
        String s2 = "";
        j;
        JVM INSTR tableswitch 2 6: default 40
    //                   2 49
    //                   3 95
    //                   4 141
    //                   5 187
    //                   6 233;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        s = s2;
_L8:
        println(s);
        return;
_L2:
        s = (new StringBuilder("[V]|")).append(s).append("|").append(TAApplication.getApplication().getApplicationContext().getPackageName()).append("|").append(s1).toString();
        continue; /* Loop/switch isn't completed */
_L3:
        s = (new StringBuilder("[D]|")).append(s).append("|").append(TAApplication.getApplication().getApplicationContext().getPackageName()).append("|").append(s1).toString();
        continue; /* Loop/switch isn't completed */
_L4:
        s = (new StringBuilder("[I]|")).append(s).append("|").append(TAApplication.getApplication().getApplicationContext().getPackageName()).append("|").append(s1).toString();
        continue; /* Loop/switch isn't completed */
_L5:
        s = (new StringBuilder("[W]|")).append(s).append("|").append(TAApplication.getApplication().getApplicationContext().getPackageName()).append("|").append(s1).toString();
        continue; /* Loop/switch isn't completed */
_L6:
        s = (new StringBuilder("[E]|")).append(s).append("|").append(TAApplication.getApplication().getApplicationContext().getPackageName()).append("|").append(s1).toString();
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void println(String s)
    {
        try
        {
            mWriter.write(TIMESTAMP_FMT.format(new Date()));
            mWriter.write(s);
            mWriter.write(10);
            mWriter.flush();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void v(String s, String s1)
    {
        println(2, s, s1);
    }

    public void w(String s, String s1)
    {
        println(5, s, s1);
    }

}
