// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import com.pubinfo.izhejiang.update.AWingUpdater;
import java.io.File;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class val.file extends Thread
{

    final ConnectActivity this$0;
    private final File val$file;

    public void run()
    {
        ConnectActivity.access$4(ConnectActivity.this, new AWingUpdater(handlers));
        ConnectActivity.access$5(ConnectActivity.this).readyForUpdate(ConnectActivity.access$6(ConnectActivity.this), ConnectActivity.access$7(ConnectActivity.this), val$file.toString(), url);
    }

    r()
    {
        this$0 = final_connectactivity;
        val$file = File.this;
        super();
    }
}
