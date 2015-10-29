// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;

import android.util.Log;
import com.tencent.stat.StatConfig;

public final class StatLogger
{

    private boolean debugEnable;
    private int logLevel;
    private String tag;

    public StatLogger()
    {
        tag = "default";
        debugEnable = true;
        logLevel = 2;
    }

    public StatLogger(String s)
    {
        tag = "default";
        debugEnable = true;
        logLevel = 2;
        tag = s;
    }

    private String getLoggerClassInfo()
    {
        StackTraceElement astacktraceelement[] = Thread.currentThread().getStackTrace();
        if (astacktraceelement != null)
        {
            int k = astacktraceelement.length;
            int j = 0;
            while (j < k) 
            {
                StackTraceElement stacktraceelement = astacktraceelement[j];
                if (stacktraceelement.isNativeMethod() || stacktraceelement.getClassName().equals(java/lang/Thread.getName()) || stacktraceelement.getClassName().equals(getClass().getName()))
                {
                    j++;
                } else
                {
                    return (new StringBuilder()).append("[").append(Thread.currentThread().getName()).append("(").append(Thread.currentThread().getId()).append("): ").append(stacktraceelement.getFileName()).append(":").append(stacktraceelement.getLineNumber()).append("]").toString();
                }
            }
        }
        return null;
    }

    public void d(Object obj)
    {
        if (isDebugEnable())
        {
            debug(obj);
        }
    }

    public void debug(Object obj)
    {
        if (logLevel <= 3)
        {
            String s = getLoggerClassInfo();
            if (s == null)
            {
                obj = obj.toString();
            } else
            {
                obj = (new StringBuilder()).append(s).append(" - ").append(obj).toString();
            }
            Log.d(tag, ((String) (obj)));
        }
    }

    public void e(Exception exception)
    {
        if (StatConfig.isDebugEnable())
        {
            error(exception);
        }
    }

    public void e(Object obj)
    {
        if (isDebugEnable())
        {
            error(obj);
        }
    }

    public void error(Exception exception)
    {
        if (logLevel <= 6)
        {
            StringBuffer stringbuffer = new StringBuffer();
            String s = getLoggerClassInfo();
            StackTraceElement astacktraceelement[] = exception.getStackTrace();
            if (s != null)
            {
                stringbuffer.append((new StringBuilder()).append(s).append(" - ").append(exception).append("\r\n").toString());
            } else
            {
                stringbuffer.append((new StringBuilder()).append(exception).append("\r\n").toString());
            }
            if (astacktraceelement != null && astacktraceelement.length > 0)
            {
                int k = astacktraceelement.length;
                for (int j = 0; j < k; j++)
                {
                    exception = astacktraceelement[j];
                    if (exception != null)
                    {
                        stringbuffer.append((new StringBuilder()).append("[ ").append(exception.getFileName()).append(":").append(exception.getLineNumber()).append(" ]\r\n").toString());
                    }
                }

            }
            Log.e(tag, stringbuffer.toString());
        }
    }

    public void error(Object obj)
    {
        if (logLevel <= 6)
        {
            String s = getLoggerClassInfo();
            if (s == null)
            {
                obj = obj.toString();
            } else
            {
                obj = (new StringBuilder()).append(s).append(" - ").append(obj).toString();
            }
            Log.e(tag, ((String) (obj)));
        }
    }

    public int getLogLevel()
    {
        return logLevel;
    }

    public void i(Object obj)
    {
        if (isDebugEnable())
        {
            info(obj);
        }
    }

    public void info(Object obj)
    {
        if (logLevel <= 4)
        {
            String s = getLoggerClassInfo();
            if (s == null)
            {
                obj = obj.toString();
            } else
            {
                obj = (new StringBuilder()).append(s).append(" - ").append(obj).toString();
            }
            Log.i(tag, ((String) (obj)));
        }
    }

    public boolean isDebugEnable()
    {
        return debugEnable;
    }

    public void setDebugEnable(boolean flag)
    {
        debugEnable = flag;
    }

    public void setLogLevel(int j)
    {
        logLevel = j;
    }

    public void setTag(String s)
    {
        tag = s;
    }

    public void v(Object obj)
    {
        if (isDebugEnable())
        {
            verbose(obj);
        }
    }

    public void verbose(Object obj)
    {
        if (logLevel <= 2)
        {
            String s = getLoggerClassInfo();
            if (s == null)
            {
                obj = obj.toString();
            } else
            {
                obj = (new StringBuilder()).append(s).append(" - ").append(obj).toString();
            }
            Log.v(tag, ((String) (obj)));
        }
    }

    public void w(Object obj)
    {
        if (isDebugEnable())
        {
            warn(obj);
        }
    }

    public void warn(Object obj)
    {
        if (logLevel <= 5)
        {
            String s = getLoggerClassInfo();
            if (s == null)
            {
                obj = obj.toString();
            } else
            {
                obj = (new StringBuilder()).append(s).append(" - ").append(obj).toString();
            }
            Log.w(tag, ((String) (obj)));
        }
    }
}
