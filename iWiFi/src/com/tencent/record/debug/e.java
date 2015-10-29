// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import com.tencent.record.b.a;
import com.tencent.record.b.b;
import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.tencent.record.debug:
//            f, g, h

public class e
{

    private static SimpleDateFormat a = com.tencent.record.b.b.a("yyyy-MM-dd");
    private static FileFilter b = new f();
    private String c;
    private int d;
    private int e;
    private int f;
    private long g;
    private File h;
    private int i;
    private String j;
    private long k;
    private FileFilter l;
    private Comparator m;

    public e(File file, int i1, int j1, int k1, String s, long l1, 
            int i2, String s1, long l2)
    {
        c = "Tracer.File";
        d = 0x7fffffff;
        e = 0x7fffffff;
        f = 4096;
        g = 10000L;
        i = 10;
        j = ".log";
        k = 0x7fffffffffffffffL;
        l = new g(this);
        m = new h(this);
        c(file);
        b(i1);
        a(j1);
        c(k1);
        a(s);
        b(l1);
        d(i2);
        b(s1);
        c(l2);
    }

    public static long a(File file)
    {
        long l1;
        try
        {
            l1 = a.parse(file.getName()).getTime();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return -1L;
        }
        return l1;
    }

    static int d(File file)
    {
        return f(file);
    }

    private File d(long l1)
    {
        return e(a(l1));
    }

    private File e(File file)
    {
        File afile[] = b(file);
        if (afile != null && afile.length != 0) goto _L2; else goto _L1
_L1:
        file = new File(file, (new StringBuilder()).append("1").append(j()).toString());
_L4:
        return file;
_L2:
        a(afile);
        File file2 = afile[afile.length - 1];
        int j1 = afile.length - e();
        int i1 = j1;
        File file1 = file2;
        if ((int)file2.length() > d())
        {
            i1 = f(file2);
            file1 = new File(file, (new StringBuilder()).append(i1 + 1).append(j()).toString());
            i1 = j1 + 1;
        }
        j1 = 0;
        do
        {
            file = file1;
            if (j1 >= i1)
            {
                continue;
            }
            afile[j1].delete();
            j1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static int f(File file)
    {
        int i1;
        try
        {
            file = file.getName();
            i1 = Integer.parseInt(file.substring(0, file.indexOf('.')));
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return -1;
        }
        return i1;
    }

    public File a()
    {
        return d(System.currentTimeMillis());
    }

    public File a(long l1)
    {
        File file = new File(h(), a.format(Long.valueOf(l1)));
        file.mkdirs();
        return file;
    }

    public void a(int i1)
    {
        d = i1;
    }

    public void a(String s)
    {
        c = s;
    }

    public File[] a(File afile[])
    {
        Arrays.sort(afile, m);
        return afile;
    }

    public void b()
    {
        if (h() != null) goto _L2; else goto _L1
_L1:
        File afile[];
        return;
_L2:
        if ((afile = h().listFiles(b)) != null)
        {
            int j1 = afile.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                File file = afile[i1];
                long l1 = a(file);
                if (System.currentTimeMillis() - l1 > k())
                {
                    com.tencent.record.b.a.a(file);
                }
                i1++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void b(int i1)
    {
        e = i1;
    }

    public void b(long l1)
    {
        g = l1;
    }

    public void b(String s)
    {
        j = s;
    }

    public File[] b(File file)
    {
        return file.listFiles(l);
    }

    public String c()
    {
        return c;
    }

    public void c(int i1)
    {
        f = i1;
    }

    public void c(long l1)
    {
        k = l1;
    }

    public void c(File file)
    {
        h = file;
    }

    public int d()
    {
        return d;
    }

    public void d(int i1)
    {
        i = i1;
    }

    public int e()
    {
        return e;
    }

    public int f()
    {
        return f;
    }

    public long g()
    {
        return g;
    }

    public File h()
    {
        return h;
    }

    public int i()
    {
        return i;
    }

    public String j()
    {
        return j;
    }

    public long k()
    {
        return k;
    }

}
