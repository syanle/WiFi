// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

public class Ln
{
    private static class BaseConfig
    {

        public int minimumLogLevel;
        public String packageName;
        public String scope;

        public void setContext(Context context)
        {
            if (context == null)
            {
                return;
            }
            packageName = context.getPackageName();
            if (TextUtils.isEmpty(packageName))
            {
                packageName = "";
                return;
            } else
            {
                scope = packageName.toUpperCase();
                return;
            }
        }

        public BaseConfig()
        {
            minimumLogLevel = 2;
            packageName = "";
            scope = "";
        }
    }

    private static class Print
    {

        public Context context;
        public String packageName;

        protected static String getScope(int j)
        {
label0:
            {
label1:
                {
                    if (Ln.config.minimumLogLevel > 3)
                    {
                        break label0;
                    }
                    StackTraceElement astacktraceelement[] = Thread.currentThread().getStackTrace();
                    if (j < 0 || j >= astacktraceelement.length)
                    {
                        break label0;
                    }
                    Object obj = astacktraceelement[j];
                    String s = ((StackTraceElement) (obj)).getFileName();
                    String s1;
                    if (s == null || s.length() <= 0)
                    {
                        s1 = ((StackTraceElement) (obj)).getClassName();
                    } else
                    {
                        s1 = (new StringBuilder()).append(Ln.config.scope).append("/").append(s).toString();
                    }
                    j = ((StackTraceElement) (obj)).getLineNumber();
                    s = String.valueOf(j);
                    if (j >= 0)
                    {
                        break label1;
                    }
                    obj = ((StackTraceElement) (obj)).getMethodName();
                    if (obj != null)
                    {
                        s = ((String) (obj));
                        if (((String) (obj)).length() > 0)
                        {
                            break label1;
                        }
                    }
                    s = "Unknown Source";
                }
                return (new StringBuilder()).append(s1).append("(").append(s).append(")").toString();
            }
            return Ln.config.scope;
        }

        public int broadcast(int j, String s)
        {
            if (context != null)
            {
                try
                {
                    Intent intent = new Intent();
                    intent.setAction("cn.sharesdk.log");
                    intent.putExtra("package", packageName);
                    intent.putExtra("priority", j);
                    intent.putExtra("msg", s);
                    context.sendBroadcast(intent);
                }
                // Misplaced declaration of an exception variable
                catch (String s) { }
            }
            return 0;
        }

        public int println(int j, String s)
        {
            return Log.println(j, getScope(5), processMessage(s));
        }

        protected String processMessage(String s)
        {
            String s1 = s;
            if (Ln.config.minimumLogLevel <= 3)
            {
                s1 = String.format("%s %s", new Object[] {
                    Thread.currentThread().getName(), s
                });
            }
            return s1;
        }

        public void setContext(Context context1)
        {
            if (context1 != null)
            {
                context = context1;
                packageName = context1.getPackageName();
                if (TextUtils.isEmpty(packageName))
                {
                    packageName = "";
                    return;
                }
            }
        }

        public Print()
        {
            packageName = "";
        }
    }


    private static BaseConfig config = new BaseConfig();
    private static Print print = new Print();

    private Ln()
    {
    }

    public static void close()
    {
        config.minimumLogLevel = 7;
    }

    public static transient int d(Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 3)
        {
            String s = obj.toString();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            return print.broadcast(3, ((String) (obj)));
        }
        String s1 = obj.toString();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        return print.println(3, ((String) (obj)));
    }

    public static int d(Throwable throwable)
    {
        if (config.minimumLogLevel <= 3)
        {
            return print.println(3, Log.getStackTraceString(throwable));
        } else
        {
            return print.broadcast(3, Log.getStackTraceString(throwable));
        }
    }

    public static transient int d(Throwable throwable, Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 3)
        {
            String s = obj.toString();
            StringBuilder stringbuilder = new StringBuilder();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            throwable = stringbuilder.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
            return print.broadcast(3, throwable);
        }
        String s1 = obj.toString();
        StringBuilder stringbuilder1 = new StringBuilder();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        throwable = stringbuilder1.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
        return print.println(3, throwable);
    }

    public static transient int e(Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 6)
        {
            String s = obj.toString();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            return print.broadcast(6, ((String) (obj)));
        }
        String s1 = obj.toString();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        return print.println(6, ((String) (obj)));
    }

    public static int e(Throwable throwable)
    {
        if (config.minimumLogLevel <= 6)
        {
            return print.println(6, Log.getStackTraceString(throwable));
        } else
        {
            return print.broadcast(6, Log.getStackTraceString(throwable));
        }
    }

    public static transient int e(Throwable throwable, Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 6)
        {
            String s = obj.toString();
            StringBuilder stringbuilder = new StringBuilder();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            throwable = stringbuilder.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
            return print.broadcast(6, throwable);
        }
        String s1 = obj.toString();
        StringBuilder stringbuilder1 = new StringBuilder();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        throwable = stringbuilder1.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
        return print.println(6, throwable);
    }

    public static transient int i(Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 4)
        {
            String s = obj.toString();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            return print.broadcast(4, ((String) (obj)));
        }
        String s1 = obj.toString();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        return print.println(4, ((String) (obj)));
    }

    public static int i(Throwable throwable)
    {
        if (config.minimumLogLevel <= 4)
        {
            return print.println(4, Log.getStackTraceString(throwable));
        } else
        {
            return print.broadcast(4, Log.getStackTraceString(throwable));
        }
    }

    public static transient int i(Throwable throwable, Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 4)
        {
            String s = obj.toString();
            StringBuilder stringbuilder = new StringBuilder();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            throwable = stringbuilder.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
            return print.broadcast(4, throwable);
        }
        String s1 = obj.toString();
        StringBuilder stringbuilder1 = new StringBuilder();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        throwable = stringbuilder1.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
        return print.println(4, throwable);
    }

    public static boolean isDebugEnabled()
    {
        return config.minimumLogLevel <= 3;
    }

    public static boolean isVerboseEnabled()
    {
        return config.minimumLogLevel <= 2;
    }

    public static String logLevelToString(int j)
    {
        switch (j)
        {
        default:
            return "UNKNOWN";

        case 2: // '\002'
            return "VERBOSE";

        case 3: // '\003'
            return "DEBUG";

        case 4: // '\004'
            return "INFO";

        case 5: // '\005'
            return "WARN";

        case 6: // '\006'
            return "ERROR";

        case 7: // '\007'
            return "ASSERT";
        }
    }

    public static void setContext(Context context)
    {
        config.setContext(context.getApplicationContext());
        print.setContext(context.getApplicationContext());
    }

    public static transient int v(Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 2)
        {
            return 0;
        }
        String s = obj.toString();
        obj = s;
        if (aobj.length > 0)
        {
            obj = String.format(s, aobj);
        }
        return print.println(2, ((String) (obj)));
    }

    public static int v(Throwable throwable)
    {
        if (config.minimumLogLevel <= 2)
        {
            return print.println(2, Log.getStackTraceString(throwable));
        } else
        {
            return 0;
        }
    }

    public static transient int v(Throwable throwable, Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 2)
        {
            return 0;
        }
        String s = obj.toString();
        StringBuilder stringbuilder = new StringBuilder();
        obj = s;
        if (aobj.length > 0)
        {
            obj = String.format(s, aobj);
        }
        throwable = stringbuilder.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
        return print.println(2, throwable);
    }

    public static transient int w(Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 5)
        {
            return 0;
        }
        String s = obj.toString();
        obj = s;
        if (aobj.length > 0)
        {
            obj = String.format(s, aobj);
        }
        return print.println(5, ((String) (obj)));
    }

    public static int w(Throwable throwable)
    {
        if (config.minimumLogLevel <= 5)
        {
            return print.println(5, Log.getStackTraceString(throwable));
        } else
        {
            return 0;
        }
    }

    public static transient int w(Throwable throwable, Object obj, Object aobj[])
    {
        if (config.minimumLogLevel > 5)
        {
            return 0;
        }
        String s = obj.toString();
        StringBuilder stringbuilder = new StringBuilder();
        obj = s;
        if (aobj.length > 0)
        {
            obj = String.format(s, aobj);
        }
        throwable = stringbuilder.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
        return print.println(5, throwable);
    }


}
