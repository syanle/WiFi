// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

// Referenced classes of package org.xbill.DNS:
//            TextParseException

final class FormattedTime
{

    private static NumberFormat w2;
    private static NumberFormat w4;

    private FormattedTime()
    {
    }

    public static String format(Date date)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
        StringBuffer stringbuffer = new StringBuffer();
        gregoriancalendar.setTime(date);
        stringbuffer.append(w4.format(gregoriancalendar.get(1)));
        stringbuffer.append(w2.format(gregoriancalendar.get(2) + 1));
        stringbuffer.append(w2.format(gregoriancalendar.get(5)));
        stringbuffer.append(w2.format(gregoriancalendar.get(11)));
        stringbuffer.append(w2.format(gregoriancalendar.get(12)));
        stringbuffer.append(w2.format(gregoriancalendar.get(13)));
        return stringbuffer.toString();
    }

    public static Date parse(String s)
        throws TextParseException
    {
        if (s.length() != 14)
        {
            throw new TextParseException((new StringBuilder("Invalid time encoding: ")).append(s).toString());
        }
        GregorianCalendar gregoriancalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
        gregoriancalendar.clear();
        try
        {
            gregoriancalendar.set(Integer.parseInt(s.substring(0, 4)), Integer.parseInt(s.substring(4, 6)) - 1, Integer.parseInt(s.substring(6, 8)), Integer.parseInt(s.substring(8, 10)), Integer.parseInt(s.substring(10, 12)), Integer.parseInt(s.substring(12, 14)));
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new TextParseException((new StringBuilder("Invalid time encoding: ")).append(s).toString());
        }
        return gregoriancalendar.getTime();
    }

    static 
    {
        w2 = new DecimalFormat();
        w2.setMinimumIntegerDigits(2);
        w4 = new DecimalFormat();
        w4.setMinimumIntegerDigits(4);
        w4.setGroupingUsed(false);
    }
}
