// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.ta.common.AndroidVersionCheckUtils;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class TAExternalOverFroyoUtils
{

    public TAExternalOverFroyoUtils()
    {
    }

    private static String bytesToHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuilder.toString();
            }
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() == 1)
            {
                stringbuilder.append('0');
            }
            stringbuilder.append(s);
            i++;
        } while (true);
    }

    public static File getDiskCacheDir(Context context, String s)
    {
        if ("mounted".equals(Environment.getExternalStorageState()) || !isExternalStorageRemovable())
        {
            context = getExternalCacheDir(context).getPath();
        } else
        {
            context = context.getCacheDir().getPath();
        }
        return new File((new StringBuilder(String.valueOf(context))).append(File.separator).append(s).toString());
    }

    public static File getExternalCacheDir(Context context)
    {
        if (AndroidVersionCheckUtils.hasFroyo())
        {
            return context.getExternalCacheDir();
        } else
        {
            context = (new StringBuilder("/Android/data/")).append(context.getPackageName()).append("/cache/").toString();
            return new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append(context).toString());
        }
    }

    public static int getMemoryClass(Context context)
    {
        return ((ActivityManager)context.getSystemService("activity")).getMemoryClass();
    }

    public static File getSystemDiskCacheDir(Context context)
    {
        if ("mounted".equals(Environment.getExternalStorageState()) || !isExternalStorageRemovable())
        {
            context = getExternalCacheDir(context).getPath();
        } else
        {
            context = context.getCacheDir().getPath();
        }
        return new File(context);
    }

    public static long getUsableSpace(File file)
    {
        if (AndroidVersionCheckUtils.hasGingerbread())
        {
            return file.getUsableSpace();
        } else
        {
            file = new StatFs(file.getPath());
            return (long)file.getBlockSize() * (long)file.getAvailableBlocks();
        }
    }

    public static boolean hasExternalStorage()
    {
        return Boolean.valueOf(Environment.getExternalStorageState().equals("mounted")).booleanValue();
    }

    public static String hashKeyForDisk(String s)
    {
        Object obj;
        try
        {
            obj = MessageDigest.getInstance("MD5");
            ((MessageDigest) (obj)).update(s.getBytes());
            obj = bytesToHexString(((MessageDigest) (obj)).digest());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return String.valueOf(s.hashCode());
        }
        return ((String) (obj));
    }

    public static boolean isExternalStorageRemovable()
    {
        if (AndroidVersionCheckUtils.hasGingerbread())
        {
            return Environment.isExternalStorageRemovable();
        } else
        {
            return true;
        }
    }
}
