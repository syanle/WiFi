// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.widget.Toast;

// Referenced classes of package com.umeng.common.net:
//            DownloadingService

class h
    implements Runnable
{

    final String a;
    final DownloadingService b;

    h(DownloadingService downloadingservice, String s)
    {
        b = downloadingservice;
        a = s;
        super();
    }

    public void run()
    {
        Toast.makeText(DownloadingService.b(b), a, 0).show();
    }
}
