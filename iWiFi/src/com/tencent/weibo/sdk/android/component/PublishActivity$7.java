// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.view.inputmethod.InputMethodManager;
import java.util.TimerTask;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class val.imm extends TimerTask
{

    final PublishActivity this$0;
    private final InputMethodManager val$imm;

    public void run()
    {
        if (val$imm.isActive())
        {
            val$imm.toggleSoftInput(0, 2);
        }
    }

    ()
    {
        this$0 = final_publishactivity;
        val$imm = InputMethodManager.this;
        super();
    }
}
