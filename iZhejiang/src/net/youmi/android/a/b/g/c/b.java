// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.c;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package net.youmi.android.a.b.g.c:
//            a, c

class b
    implements Runnable
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void run()
    {
        File afile[];
        Iterator iterator;
        Object obj;
        File file1;
        int i;
        long l;
        long l1;
        boolean flag;
        try
        {
            File file = net.youmi.android.a.b.g.c.a.a(a);
            if (!file.exists() && !file.mkdirs())
            {
                return;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        afile = a.a();
        if (afile == null) goto _L2; else goto _L1
_L1:
        obj = new ArrayList();
        i = 0;
        l = 0L;
_L12:
        if (i >= afile.length) goto _L4; else goto _L3
_L3:
        file1 = afile[i];
        if (!net.youmi.android.a.b.g.c.a.a(a, file1)) goto _L6; else goto _L5
_L5:
        file1.delete();
        l1 = l;
          goto _L7
_L6:
        l1 = l;
        if (!file1.exists()) goto _L7; else goto _L8
_L8:
        l1 = l;
        if (net.youmi.android.a.b.g.c.a.b(a) == -1L) goto _L7; else goto _L9
_L9:
        l1 = l;
        if (net.youmi.android.a.b.g.c.a.b(a) > 0L)
        {
            l1 = l + file1.length();
            ((List) (obj)).add(file1);
        }
          goto _L7
_L4:
        Collections.sort(((List) (obj)), new c(a));
        iterator = ((List) (obj)).iterator();
        i = 10000;
        l1 = l;
_L10:
        if (l1 <= net.youmi.android.a.b.g.c.a.b(a))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = iterator.hasNext();
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        l = l1;
        obj = (File)iterator.next();
        l = l1;
        l1 -= ((File) (obj)).length();
        l = l1;
        iterator.remove();
        l = l1;
        try
        {
            ((File) (obj)).delete();
        }
        catch (Throwable throwable1)
        {
            l1 = l;
        }
        i--;
        if (i < 0) goto _L2; else goto _L10
_L2:
        return;
_L7:
        i++;
        l = l1;
        if (true) goto _L12; else goto _L11
_L11:
    }
}
