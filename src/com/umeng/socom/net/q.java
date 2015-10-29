// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.net;

import java.io.File;

// Referenced classes of package com.umeng.socom.net:
//            p

class q
    implements Runnable
{

    private final File a;

    q(File file)
    {
        a = file;
        super();
    }

    public void run()
    {
        p.a(a);
    }
}
