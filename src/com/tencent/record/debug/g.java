// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import java.io.File;
import java.io.FileFilter;

// Referenced classes of package com.tencent.record.debug:
//            e

class g
    implements FileFilter
{

    final e a;

    g(e e1)
    {
        a = e1;
        super();
    }

    public boolean accept(File file)
    {
        while (!file.getName().endsWith(a.j()) || e.d(file) == -1) 
        {
            return false;
        }
        return true;
    }
}
