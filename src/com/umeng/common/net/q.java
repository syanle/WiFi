// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import java.io.File;

// Referenced classes of package com.umeng.common.net:
//            p

final class q
    implements Runnable
{

    final File a;
    final long b;

    q(File file, long l)
    {
        a = file;
        b = l;
        super();
    }

    public void run()
    {
        p.a(a, b);
        p.a(null);
    }
}
