// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.PrintStream;
import java.text.DecimalFormat;

public class TAFileInfoUtils
{

    public TAFileInfoUtils()
    {
    }

    public static String FormetFileSize(long l)
    {
        DecimalFormat decimalformat = new DecimalFormat("#0.00");
        if (l < 1024L)
        {
            return (new StringBuilder(String.valueOf(decimalformat.format(l)))).append("B").toString();
        }
        if (l < 0x100000L)
        {
            return (new StringBuilder(String.valueOf(decimalformat.format((double)l / 1024D)))).append("K").toString();
        }
        if (l < 0x40000000L)
        {
            return (new StringBuilder(String.valueOf(decimalformat.format((double)l / 1048576D)))).append("M").toString();
        } else
        {
            return (new StringBuilder(String.valueOf(decimalformat.format((double)l / 1073741824D)))).append("G").toString();
        }
    }

    public static long getFileSize(File file)
        throws Exception
    {
        long l = 0L;
        file = file.listFiles();
        int i = 0;
        do
        {
            if (i >= file.length)
            {
                return l;
            }
            if (file[i].isDirectory())
            {
                l += getFileSize(file[i]);
            } else
            {
                l += file[i].length();
            }
            i++;
        } while (true);
    }

    public static long getFileSizes(File file)
        throws Exception
    {
        if (file.exists())
        {
            return (long)(new FileInputStream(file)).available();
        } else
        {
            file.createNewFile();
            System.out.println("\u6587\u4EF6\u4E0D\u5B58\u5728");
            return 0L;
        }
    }

    public static long getlist(File file)
    {
        file = file.listFiles();
        long l = file.length;
        int i = 0;
        do
        {
            if (i >= file.length)
            {
                return l;
            }
            long l1 = l;
            if (file[i].isDirectory())
            {
                l1 = (l + getlist(file[i])) - 1L;
            }
            i++;
            l = l1;
        } while (true);
    }
}
