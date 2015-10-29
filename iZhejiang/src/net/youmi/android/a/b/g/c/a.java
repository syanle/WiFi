// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.c;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
import net.youmi.android.a.b.h.c;

// Referenced classes of package net.youmi.android.a.b.g.c:
//            b

public class a
{

    private long a;
    private long b;
    private File c;

    public a(File file, long l, long l1)
    {
        a = -1L;
        b = -1L;
        if (file == null)
        {
            throw new IOException("directory must not be null");
        }
        if (file.exists() && !file.isDirectory())
        {
            throw new IOException("please set a file cache directory");
        } else
        {
            c = file;
            b = l;
            a = l1;
            b();
            c();
            return;
        }
    }

    static File a(a a1)
    {
        return a1.c;
    }

    private boolean a(File file)
    {
        while (file == null || a == -1L || a <= 0L || System.currentTimeMillis() - file.lastModified() <= a) 
        {
            return false;
        }
        return true;
    }

    static boolean a(a a1, File file)
    {
        return a1.a(file);
    }

    static long b(a a1)
    {
        return a1.b;
    }

    private void b()
    {
        try
        {
            if (c != null && !c.exists())
            {
                c.mkdirs();
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    private void c()
    {
        try
        {
            if (b <= 0L && a <= 0L)
            {
                return;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        net.youmi.android.a.b.h.c.a().execute(new b(this));
        return;
    }

    public File[] a()
    {
        return c.listFiles();
    }

    public String b(String s)
    {
        return (new StringBuilder()).append(c.getAbsolutePath()).append("/").append(s).toString();
    }

    public File c(String s)
    {
        try
        {
            s = new File(b(s));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }
}
