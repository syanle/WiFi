// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import java.io.File;
import java.io.FileFilter;

// Referenced classes of package com.tencent.record.debug:
//            e

final class f
    implements FileFilter
{

    f()
    {
    }

    public boolean accept(File file)
    {
        while (!file.isDirectory() || e.a(file) <= 0L) 
        {
            return false;
        }
        return true;
    }
}
