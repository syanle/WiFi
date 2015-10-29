// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util;

import com.ta.util.log.ILogger;
import com.ta.util.log.TAPrintToLogCatLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class TALogger
{

    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static final ILogger defaultLogger = new TAPrintToLogCatLogger();
    private static HashMap loggerHashMap = new HashMap();

    public TALogger()
    {
    }

    public static void addLogger(ILogger ilogger)
    {
        String s = ilogger.getClass().getName();
        String s1 = defaultLogger.getClass().getName();
        if (!loggerHashMap.containsKey(s) && !s1.equalsIgnoreCase(s))
        {
            ilogger.open();
            loggerHashMap.put(s, ilogger);
        }
    }

    public static void d(Object obj, String s)
    {
        printLoger(3, obj, s);
    }

    public static void d(String s, String s1)
    {
        printLoger(3, s, s1);
    }

    public static void e(Object obj, String s)
    {
        printLoger(6, obj, s);
    }

    public static void e(String s, String s1)
    {
        printLoger(6, s, s1);
    }

    public static void i(Object obj, String s)
    {
        printLoger(4, obj, s);
    }

    public static void i(String s, String s1)
    {
        printLoger(4, s, s1);
    }

    private static void printLoger(int j, Object obj, String s)
    {
        obj = obj.getClass().getName().split("\\.");
        printLoger(j, obj[obj.length - 1], s);
    }

    private static void printLoger(int j, String s, String s1)
    {
        printLoger(defaultLogger, j, s, s1);
        Iterator iterator = loggerHashMap.entrySet().iterator();
        do
        {
            ILogger ilogger;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                ilogger = (ILogger)((java.util.Map.Entry)iterator.next()).getValue();
            } while (ilogger == null);
            printLoger(ilogger, j, s, s1);
        } while (true);
    }

    private static void printLoger(ILogger ilogger, int j, String s, String s1)
    {
        switch (j)
        {
        default:
            return;

        case 2: // '\002'
            ilogger.v(s, s1);
            return;

        case 3: // '\003'
            ilogger.d(s, s1);
            return;

        case 4: // '\004'
            ilogger.i(s, s1);
            return;

        case 5: // '\005'
            ilogger.w(s, s1);
            return;

        case 6: // '\006'
            ilogger.e(s, s1);
            break;
        }
    }

    public static void println(int j, String s, String s1)
    {
        printLoger(j, s, s1);
    }

    public static void removeLogger(ILogger ilogger)
    {
        String s = ilogger.getClass().getName();
        if (loggerHashMap.containsKey(s))
        {
            ilogger.close();
            loggerHashMap.remove(s);
        }
    }

    public static void v(Object obj, String s)
    {
        printLoger(2, obj, s);
    }

    public static void v(String s, String s1)
    {
        printLoger(2, s, s1);
    }

    public static void w(Object obj, String s)
    {
        printLoger(5, obj, s);
    }

    public static void w(String s, String s1)
    {
        printLoger(5, s, s1);
    }

}
