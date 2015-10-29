// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.view.inputmethod.InputMethodManager;
import java.util.TimerTask;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class this._cls0 extends TimerTask
{

    final PublishActivity this$0;

    public void run()
    {
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(PublishActivity.access$4(PublishActivity.this), 2);
    }

    ()
    {
        this$0 = PublishActivity.this;
        super();
    }
}
