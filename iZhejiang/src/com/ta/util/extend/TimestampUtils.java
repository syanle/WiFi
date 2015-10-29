// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TimestampUtils
{

    private static long day = 7L;

    public TimestampUtils()
    {
    }

    public static boolean compareTimestamp(long l, long l1)
    {
        Boolean boolean1 = Boolean.valueOf(false);
        if (gapTimestamp(l, l1) > 0x15180L * day)
        {
            boolean1 = Boolean.valueOf(true);
        }
        return boolean1.booleanValue();
    }

    public static String formatTimestamp(String s)
    {
        if (s == null || "".equals(s))
        {
            return "";
        } else
        {
            return (new StringBuffer((new StringBuilder(String.valueOf(s))).append("00000000000000").toString())).substring(0, 13);
        }
    }

    public static long gapTimestamp(long l, long l1)
    {
        return l - l1;
    }

    public static long getIntTimestamp()
    {
        long l;
        try
        {
            l = System.currentTimeMillis();
        }
        catch (Exception exception)
        {
            return 0L;
        }
        return l;
    }

    public static String getTimeState(String s, String s1)
    {
        if (s == null || "".equals(s))
        {
            return "";
        }
        Calendar calendar;
        long l;
        long l1;
        try
        {
            l = Long.parseLong(formatTimestamp(s));
            l1 = System.currentTimeMillis();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
_L10:
        if (l1 - l < 60000L)
        {
            return "\u521A\u521A";
        }
        if (System.currentTimeMillis() - l < 0x1b7740L)
        {
            return (new StringBuilder(String.valueOf((System.currentTimeMillis() - l) / 1000L / 60L))).append("\u5206\u949F\u524D").toString();
        }
        s = Calendar.getInstance();
        calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        if (calendar.get(1) == s.get(1) && calendar.get(2) == s.get(2) && calendar.get(5) == s.get(5))
        {
            return (new SimpleDateFormat("\u4ECA\u5929 HH:mm")).format(calendar.getTime());
        }
        if (calendar.get(1) == s.get(1) && calendar.get(2) == s.get(2) && calendar.get(5) == s.get(5) - 1)
        {
            return (new SimpleDateFormat("\u6628\u5929 HH:mm")).format(calendar.getTime());
        }
        if (calendar.get(1) != s.get(1)) goto _L2; else goto _L1
_L1:
        if (s1 == null) goto _L4; else goto _L3
_L3:
        if (s1.equalsIgnoreCase("")) goto _L4; else goto _L5
_L5:
        s = new SimpleDateFormat(s1);
_L6:
        return s.format(calendar.getTime());
_L4:
        s = new SimpleDateFormat("M\u6708d\u65E5 HH:mm:ss");
        if (true) goto _L6; else goto _L2
_L2:
        if (s1 == null) goto _L8; else goto _L7
_L7:
        if (s1.equalsIgnoreCase("")) goto _L8; else goto _L9
_L9:
        s = new SimpleDateFormat(s1);
_L11:
        return s.format(calendar.getTime());
_L8:
        s = new SimpleDateFormat("yyyy\u5E74M\u6708d\u65E5 HH:mm:ss");
        if (true) goto _L11; else goto _L10
    }

    public static String getTimestamp()
    {
        String s;
        try
        {
            s = (new StringBuilder(String.valueOf(System.currentTimeMillis()))).toString();
        }
        catch (Exception exception)
        {
            return "";
        }
        return s;
    }

}
