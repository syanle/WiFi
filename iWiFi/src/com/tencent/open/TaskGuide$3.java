// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.widget.Toast;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class val.message
    implements Runnable
{

    final TaskGuide this$0;
    final String val$message;

    public void run()
    {
        Toast.makeText(TaskGuide.access$3700(TaskGuide.this), (new StringBuilder()).append("\u5931\u8D25\uFF1A").append(val$message).toString(), 1).show();
    }

    ()
    {
        this$0 = final_taskguide;
        val$message = String.this;
        super();
    }
}
