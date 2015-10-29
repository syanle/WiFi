// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.app.Activity;
import android.content.Context;
import android.view.WindowManager;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class this._cls0
    implements Runnable
{

    final TaskGuide this$0;

    public void run()
    {
        TaskGuide.access$102(TaskGuide.this, TaskGuide.access$900(TaskGuide.this, TaskGuide.access$800(TaskGuide.this)));
        TaskGuide.access$1002(TaskGuide.this, TaskGuide.access$1200(TaskGuide.this, TaskGuide.access$1100(TaskGuide.this)));
        TaskGuide.access$1300(TaskGuide.this);
        WindowManager windowmanager = (WindowManager)TaskGuide.access$1400(TaskGuide.this).getSystemService("window");
        if (((Activity)TaskGuide.access$1500(TaskGuide.this)).isFinishing())
        {
            return;
        }
        if (!TaskGuide.access$000(TaskGuide.this))
        {
            windowmanager.addView(TaskGuide.access$100(TaskGuide.this), TaskGuide.access$1000(TaskGuide.this));
        }
        TaskGuide.access$002(TaskGuide.this, true);
        TaskGuide.access$600(TaskGuide.this, 2);
        TaskGuide.access$1600(TaskGuide.this);
    }

    ()
    {
        this$0 = TaskGuide.this;
        super();
    }
}
