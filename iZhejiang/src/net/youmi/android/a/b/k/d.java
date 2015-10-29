// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public class d
{

    public static long a()
    {
        long l1;
        long l2;
        try
        {
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            long l = statfs.getBlockSize();
            l2 = (long)statfs.getBlockCount() * l;
        }
        catch (Throwable throwable)
        {
            return 0L;
        }
        l1 = l2;
        if (l2 >= 0L)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        l1 = Math.abs(l2);
        return l1;
    }

    public static long b()
    {
        long l1;
        long l2;
        try
        {
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            long l = statfs.getBlockSize();
            l2 = (long)statfs.getAvailableBlocks() * l;
        }
        catch (Throwable throwable)
        {
            return 0L;
        }
        l1 = l2;
        if (l2 >= 0L)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        l1 = Math.abs(l2);
        return l1;
    }
}
