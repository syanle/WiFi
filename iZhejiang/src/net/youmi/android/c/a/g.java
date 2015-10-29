// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.io.FileInputStream;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.e.b;
import net.youmi.android.a.c.a.a;

// Referenced classes of package net.youmi.android.c.a:
//            u, a

public class g
{

    public static final String a;
    public static final String b = b();

    private static int a(File file)
    {
        long l = 0L;
        file = file.listFiles();
        int i = 0;
        while (i < file.length) 
        {
            if (file[i].isDirectory())
            {
                l += a(file[i]);
            } else
            {
                l += b(file[i]);
            }
            i++;
        }
        return (int)(l / 1024L / 1024L);
    }

    public static File a(Context context, String s)
    {
        Object obj = null;
        net/youmi/android/c/a/g;
        JVM INSTR monitorenter ;
        boolean flag = e.a(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        context = obj;
_L4:
        net/youmi/android/c/a/g;
        JVM INSTR monitorexit ;
        return context;
_L2:
        Object obj1;
        obj1 = net.youmi.android.a.b.d.g.a(s);
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(b).toString());
        if (!file.exists())
        {
            file.mkdirs();
        }
        obj1 = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(b).append(((String) (obj1))).toString());
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        if (((File) (obj1)).exists())
        {
            context = ((Context) (obj1));
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            context = a(context, s, ((File) (obj1)));
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        finally
        {
            net/youmi/android/c/a/g;
        }
        net.youmi.android.a.b.e.b.a(a, context);
        context = obj;
        if (true) goto _L4; else goto _L3
_L3:
        throw context;
    }

    public static File a(Context context, String s, File file)
    {
        int i;
        try
        {
            i = (new net.youmi.android.c.a.a(context, s, file)).a();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (i == 0)
        {
            return file;
        } else
        {
            return null;
        }
    }

    public static void a(String s)
    {
        File file;
        s = net.youmi.android.a.b.d.g.a(s);
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(b).toString());
        if (!file.exists() || !file.isDirectory()) goto _L2; else goto _L1
_L1:
        if (a(file) <= 10) goto _L2; else goto _L3
_L3:
        File afile[] = file.listFiles();
        if (afile == null) goto _L2; else goto _L4
_L4:
        if (afile.length == 0)
        {
            return;
        }
        int j = afile.length;
        int i = 0;
_L5:
        File file1;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        file1 = afile[i];
        if (!file1.getName().equals(s))
        {
            file1.delete();
        }
        i++;
        if (true) goto _L5; else goto _L2
        s;
        s.printStackTrace();
_L2:
    }

    public static boolean a()
    {
        if (c())
        {
            StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long l = statfs.getBlockSize();
            if (((long)statfs.getAvailableBlocks() * l) / 1024L > 1024L)
            {
                return true;
            }
        }
        return false;
    }

    private static long b(File file)
    {
        if (file.exists())
        {
            file = new FileInputStream(file);
            long l = file.available();
            file.close();
            return l;
        } else
        {
            file.createNewFile();
            return 0L;
        }
    }

    private static String b()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("49205a5c460d58511b54564554494c410e0a554556070558514e4d7977767b367701225002770a5063500407500e2006095c0d740f07727472766749", "ddge66nGU1e7a");
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    private static boolean c()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    static 
    {
        a = net.youmi.android.c.a.u.a;
    }
}
