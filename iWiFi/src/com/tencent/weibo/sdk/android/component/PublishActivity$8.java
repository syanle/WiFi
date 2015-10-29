// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import java.util.TimerTask;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class this._cls0 extends TimerTask
{

    final PublishActivity this$0;

    public void run()
    {
        Object obj = (InputMethodManager)getSystemService("input_method");
        Log.d("mks", (new StringBuilder(String.valueOf(((InputMethodManager) (obj)).isActive()))).toString());
        ((InputMethodManager) (obj)).toggleSoftInput(0, 2);
        obj = PublishActivity.access$8(PublishActivity.this).obtainMessage();
        obj.what = 5;
        PublishActivity.access$8(PublishActivity.this).sendMessage(((Message) (obj)));
    }

    ()
    {
        this$0 = PublishActivity.this;
        super();
    }
}
