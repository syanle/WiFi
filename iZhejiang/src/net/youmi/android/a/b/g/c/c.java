// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.c;

import java.io.File;
import java.util.Comparator;

// Referenced classes of package net.youmi.android.a.b.g.c:
//            a

class c
    implements Comparator
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public int a(File file, File file1)
    {
        long l;
        long l1;
        try
        {
            l = file.lastModified();
            l1 = file1.lastModified();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return 0;
        }
        return l >= l1 ? 1 : -1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((File)obj, (File)obj1);
    }
}
