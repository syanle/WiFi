// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

// Referenced classes of package net.youmi.android.a.b.k:
//            k

public class n
{

    public static boolean a()
    {
        String s = Environment.getExternalStorageState();
        return s.equals("mounted") || s.equals("mounted_ro");
    }

    public static boolean a(Context context)
    {
        boolean flag;
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            break MISSING_BLOCK_LABEL_23;
        }
        flag = k.a(context);
        if (flag)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_23;
        context;
        return false;
    }

    public static boolean a(Context context, long l)
    {
        long l3;
        if (!a(context))
        {
            break MISSING_BLOCK_LABEL_61;
        }
        context = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l1 = context.getBlockSize();
        l3 = (long)context.getAvailableBlocks() * l1;
        long l2;
        l2 = l3;
        if (l3 >= 0L)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        l2 = Math.abs(l3);
        if (l2 >= l)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_61;
        context;
        return false;
    }

    public static long b()
    {
        long l1;
        long l2;
        try
        {
            StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
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

    public static long b(Context context)
    {
        long l2;
        if (!a(context))
        {
            break MISSING_BLOCK_LABEL_51;
        }
        context = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = context.getBlockSize();
        l2 = (long)context.getAvailableBlocks() * l;
        long l1;
        l1 = l2;
        if (l2 >= 0L)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        l1 = Math.abs(l2);
        return l1;
        context;
        return 0L;
    }

    public static String c()
    {
        String s;
        try
        {
            s = Environment.getExternalStorageDirectory().getPath();
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }
}
