// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import android.content.Context;
import com.ta.common.AndroidVersionCheckUtils;
import java.io.File;

// Referenced classes of package com.ta.util.cache:
//            TAFileCache, TAExternalOverFroyoUtils, TAExternalUnderFroyoUtils

public static class diskCacheDir
{

    public boolean clearDiskCacheOnStart;
    public int compressQuality;
    public File diskCacheDir;
    public boolean diskCacheEnabled;
    public int diskCacheSize;
    public boolean initDiskCacheOnCreate;
    public int memCacheSize;
    public boolean memoryCacheEnabled;

    private static int getMemoryClass(Context context)
    {
        if (AndroidVersionCheckUtils.hasGingerbread())
        {
            return TAExternalOverFroyoUtils.getMemoryClass(context);
        } else
        {
            return TAExternalUnderFroyoUtils.getMemoryClass(context);
        }
    }

    public void setMemCacheSizePercent(Context context, float f)
    {
        if (f < 0.05F || f > 0.8F)
        {
            throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)");
        } else
        {
            memCacheSize = Math.round((float)getMemoryClass(context) * f * 1024F * 1024F);
            return;
        }
    }

    public (Context context, String s)
    {
        memCacheSize = 0x500000;
        diskCacheSize = 0xa00000;
        compressQuality = 70;
        memoryCacheEnabled = true;
        diskCacheEnabled = true;
        clearDiskCacheOnStart = false;
        initDiskCacheOnCreate = false;
        if (AndroidVersionCheckUtils.hasGingerbread())
        {
            diskCacheDir = TAExternalOverFroyoUtils.getDiskCacheDir(context, s);
            return;
        } else
        {
            diskCacheDir = TAExternalUnderFroyoUtils.getDiskCacheDir(context, s);
            return;
        }
    }

    public getDiskCacheDir(File file)
    {
        memCacheSize = 0x500000;
        diskCacheSize = 0xa00000;
        compressQuality = 70;
        memoryCacheEnabled = true;
        diskCacheEnabled = true;
        clearDiskCacheOnStart = false;
        initDiskCacheOnCreate = false;
        diskCacheDir = file;
    }
}
