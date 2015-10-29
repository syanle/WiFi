// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;
import u.aly.cd;

// Referenced classes of package com.umeng.analytics:
//            h

public static class b
{

    private final int a;
    private File b;
    private FilenameFilter c = new FilenameFilter() {

        final h.a a;

        public boolean accept(File file, String s1)
        {
            return s1.startsWith("um");
        }

            
            {
                a = h.a.this;
                super();
            }
    };

    public void a(b b1)
    {
        File afile[];
        int i;
        int j;
        afile = b.listFiles(c);
        if (afile == null || afile.length <= 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        b1.a(b);
        j = afile.length;
        i = 0;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag = b1.b(afile[i]);
        if (flag)
        {
            afile[i].delete();
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
        Throwable throwable;
        throwable;
        afile[i].delete();
          goto _L3
        b1;
        throw b1;
_L1:
        b1.c(b);
    }

    public void a(byte abyte0[])
    {
        int i = 0;
        if (abyte0 != null && abyte0.length != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj = String.format(Locale.US, "um_cache_%d.env", new Object[] {
            Long.valueOf(System.currentTimeMillis())
        });
        obj = new File(b, ((String) (obj)));
        try
        {
            cd.a(((File) (obj)), abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        abyte0 = b.listFiles(c);
        if (abyte0 != null && abyte0.length >= 10)
        {
            Arrays.sort(abyte0);
            int j = abyte0.length;
            while (i < j - 10) 
            {
                abyte0[i].delete();
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean a()
    {
        File afile[] = b.listFiles();
        return afile != null && afile.length > 0;
    }

    public void b()
    {
        File afile[] = b.listFiles(c);
        if (afile != null && afile.length > 0)
        {
            int j = afile.length;
            for (int i = 0; i < j; i++)
            {
                afile[i].delete();
            }

        }
    }

    public int c()
    {
        File afile[] = b.listFiles(c);
        if (afile != null && afile.length > 0)
        {
            return afile.length;
        } else
        {
            return 0;
        }
    }

    public _cls1.a(Context context)
    {
        this(context, ".um");
    }

    public <init>(Context context, String s)
    {
        a = 10;
        b = new File(context.getFilesDir(), s);
        if (!b.exists() || !b.isDirectory())
        {
            b.mkdir();
        }
    }
}
