// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.a;

import android.os.StatFs;
import java.io.File;

public class e
{

    private File a;
    private long b;
    private long c;

    public e()
    {
    }

    public static e b(File file)
    {
        e e1 = new e();
        e1.a(file);
        file = new StatFs(file.getAbsolutePath());
        long l = file.getBlockSize();
        long l1 = file.getBlockCount();
        long l2 = file.getAvailableBlocks();
        e1.a(l1 * l);
        e1.b(l2 * l);
        return e1;
    }

    public File a()
    {
        return a;
    }

    public void a(long l)
    {
        b = l;
    }

    public void a(File file)
    {
        a = file;
    }

    public long b()
    {
        return b;
    }

    public void b(long l)
    {
        c = l;
    }

    public long c()
    {
        return c;
    }

    public String toString()
    {
        return String.format("[%s : %d / %d]", new Object[] {
            a().getAbsolutePath(), Long.valueOf(c()), Long.valueOf(b())
        });
    }
}
