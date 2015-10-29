// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import com.pubinfo.freewifialliance.update.AWingUpdater;
import java.io.File;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WelcomePage

class val.file extends Thread
{

    final WelcomePage this$0;
    private final File val$file;

    public void run()
    {
        WelcomePage.access$4(WelcomePage.this, new AWingUpdater(handlers));
        WelcomePage.access$5(WelcomePage.this).readyForUpdate(WelcomePage.access$6(WelcomePage.this), WelcomePage.access$7(WelcomePage.this), val$file.toString(), url);
    }

    ()
    {
        this$0 = final_welcomepage;
        val$file = File.this;
        super();
    }
}
