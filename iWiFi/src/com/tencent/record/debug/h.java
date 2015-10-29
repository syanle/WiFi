// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import java.io.File;
import java.util.Comparator;

// Referenced classes of package com.tencent.record.debug:
//            e

class h
    implements Comparator
{

    final e a;

    h(e e1)
    {
        a = e1;
        super();
    }

    public int a(File file, File file1)
    {
        return e.d(file) - e.d(file1);
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return a((File)obj, (File)obj1);
    }
}
