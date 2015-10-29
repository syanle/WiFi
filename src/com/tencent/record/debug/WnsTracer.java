// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import android.content.SharedPreferences;
import android.os.Environment;
import com.tencent.record.a.a;
import com.tencent.record.a.b;
import com.tencent.record.a.c;
import com.tencent.record.a.e;
import java.io.File;

// Referenced classes of package com.tencent.record.debug:
//            TraceLevel, e, a, d

public class WnsTracer
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener, TraceLevel
{

    protected static final com.tencent.record.debug.e CLIENT_CONFIG;
    protected static final com.tencent.record.debug.e SERVICE_CONFIG;
    private volatile boolean enabled;
    protected com.tencent.record.debug.a fileTracer;
    private volatile boolean fileTracerEnabled;
    private volatile boolean logcatTracerEnabled;

    public WnsTracer()
    {
        enabled = true;
        fileTracerEnabled = true;
        logcatTracerEnabled = true;
    }

    public static void deleteFile(File file)
    {
        if (file != null && file.exists())
        {
            if (file.isFile())
            {
                file.delete();
                return;
            }
            file = file.listFiles();
            int j = file.length;
            int i = 0;
            while (i < j) 
            {
                deleteFile(file[i]);
                i++;
            }
        }
    }

    public static File getLogFilePath()
    {
        boolean flag1 = false;
        String s = (new StringBuilder()).append(b.a).append(File.separator).append(c.b()).toString();
        e e1 = a.b();
        boolean flag = flag1;
        if (e1 != null)
        {
            flag = flag1;
            if (e1.c() > 0x800000L)
            {
                flag = true;
            }
        }
        if (flag)
        {
            return new File(Environment.getExternalStorageDirectory(), s);
        } else
        {
            return new File(c.c(), s);
        }
    }

    public static void setFileTraceLevel(int i)
    {
    }

    public static void setMaxFolderSize(long l)
    {
        int i = (int)(l / 0x40000L);
    }

    public static void setMaxKeepPeriod(long l)
    {
        if (l >= 0x5265c00L);
    }

    public void flush()
    {
        if (fileTracer != null)
        {
            fileTracer.a();
        }
    }

    public final boolean isEnabled()
    {
        return enabled;
    }

    public final boolean isFileTracerEnabled()
    {
        return fileTracerEnabled;
    }

    public final boolean isLogcatTracerEnabled()
    {
        return logcatTracerEnabled;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s)
    {
        if ("debug.file.tracelevel".equals(s))
        {
            int i = sharedpreferences.getInt("debug.file.tracelevel", 63);
            trace(8, "WnsTracer", (new StringBuilder()).append("File Trace Level Changed = ").append(i).toString(), null);
            fileTracer.a(i);
        }
    }

    public final void setEnabled(boolean flag)
    {
        enabled = flag;
    }

    public final void setFileTracerEnabled(boolean flag)
    {
        fileTracer.a();
        fileTracerEnabled = flag;
    }

    public final void setFileTracerLevel(int i)
    {
        fileTracer.a(i);
    }

    public final void setLogcatTracerEnabled(boolean flag)
    {
        logcatTracerEnabled = flag;
    }

    public void stop()
    {
        if (fileTracer != null)
        {
            fileTracer.a();
            fileTracer.b();
        }
    }

    public void trace(int i, String s, String s1, Throwable throwable)
    {
        if (!isEnabled()) goto _L2; else goto _L1
_L1:
        if (!isFileTracerEnabled()) goto _L4; else goto _L3
_L3:
        if (fileTracer != null) goto _L5; else goto _L2
_L2:
        return;
_L5:
        fileTracer.b(i, Thread.currentThread(), System.currentTimeMillis(), s, s1, throwable);
_L4:
        if (isLogcatTracerEnabled())
        {
            com.tencent.record.debug.d.a.b(i, Thread.currentThread(), System.currentTimeMillis(), s, s1, throwable);
            return;
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    static 
    {
        File file = getLogFilePath();
        CLIENT_CONFIG = new com.tencent.record.debug.e(file, 24, 0x40000, 8192, "OpenSDK.Client.File.Tracer", 10000L, 10, ".app.log", 0x240c8400L);
        SERVICE_CONFIG = new com.tencent.record.debug.e(file, 24, 0x40000, 8192, "OpenSDK.File.Tracer", 10000L, 10, ".OpenSDK.log", 0x240c8400L);
    }
}
