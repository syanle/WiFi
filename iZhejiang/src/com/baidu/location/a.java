// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.baidu.location:
//            b

class a
    implements b
{

    private static String kR = "LocLog.txt";
    private static Boolean kS = Boolean.valueOf(true);
    private static char kT = 'v';
    private static String kU = "/sdcard/baidu";
    private static SimpleDateFormat kV = new SimpleDateFormat("yyyy-MM-dd");
    private static int kW = 0;
    private static Boolean kX = Boolean.valueOf(true);
    private static SimpleDateFormat kY = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    a()
    {
    }

    public static void _mthbyte(String s, String s1)
    {
        _mthif(s, s1, 'd');
    }

    public static void c0()
    {
        Object obj = kV.format(c1());
        obj = new File(kU, (new StringBuilder()).append(((String) (obj))).append(kR).toString());
        if (((File) (obj)).exists())
        {
            ((File) (obj)).delete();
        }
    }

    private static Date c1()
    {
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.get(5) - kW);
        return calendar.getTime();
    }

    public static void _mthcase(String s, String s1)
    {
        _mthif(s, s1, 'w');
    }

    public static void _mthchar(String s, String s1)
    {
        _mthif(s, s1, 'i');
    }

    public static void _mthdo(String s, Object obj)
    {
        _mthif(s, obj.toString(), 'i');
    }

    public static void _mthelse(String s, String s1)
    {
        _mthif(s, s1, 'v');
    }

    public static void _mthfor(String s, Object obj)
    {
        _mthif(s, obj.toString(), 'v');
    }

    public static void _mthgoto(String s, String s1)
    {
        _mthif(s, s1, 'e');
    }

    public static void _mthif(String s, Object obj)
    {
        _mthif(s, obj.toString(), 'w');
    }

    private static void _mthif(String s, String s1, char c)
    {
    }

    public static void _mthint(String s, Object obj)
    {
        _mthif(s, obj.toString(), 'e');
    }

    private static void _mthint(String s, String s1, String s2)
    {
        Date date = new Date();
        String s3 = kV.format(date);
        s = (new StringBuilder()).append(kY.format(date)).append("    ").append(s).append("    ").append(s1).append("    ").append(s2).toString();
        s1 = new File(kU, (new StringBuilder()).append(s3).append(kR).toString());
        try
        {
            s1 = new FileWriter(s1, true);
            s2 = new BufferedWriter(s1);
            s2.write(s);
            s2.newLine();
            s2.close();
            s1.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public static void _mthnew(String s, Object obj)
    {
        _mthif(s, obj.toString(), 'd');
    }

}
