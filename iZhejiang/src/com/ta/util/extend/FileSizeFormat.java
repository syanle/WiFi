// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend;

import java.text.DecimalFormat;

public class FileSizeFormat
{

    private static String B_UNIT_NAME = "B";
    private static String MB_UNIT_NAME = "MB";
    private static String kB_UNIT_NAME = "KB";

    public FileSizeFormat()
    {
    }

    public static String getKBSize(long l)
    {
        double d = ((double)l + 0.0D) / 1024D;
        return (new DecimalFormat("0.00")).format(d);
    }

    public static String getMbSize(long l)
    {
        double d = ((double)l + 0.0D) / 1048576D;
        return (new DecimalFormat("0.00")).format(d);
    }

    public static String getSizeString(long l)
    {
        if (l < 1024L)
        {
            return (new StringBuilder(String.valueOf(String.valueOf(l)))).append(B_UNIT_NAME).toString();
        }
        l /= 1024L;
        if (l < 1024L)
        {
            return (new StringBuilder(String.valueOf(String.valueOf(l)))).append(kB_UNIT_NAME).toString();
        }
        l = (l * 100L) / 1024L;
        StringBuilder stringbuilder = (new StringBuilder(String.valueOf(String.valueOf(l / 100L)))).append(".");
        String s;
        if (l % 100L < 10L)
        {
            s = "0";
        } else
        {
            s = "";
        }
        return stringbuilder.append(s).append(String.valueOf(l % 100L)).append(MB_UNIT_NAME).toString();
    }

}
