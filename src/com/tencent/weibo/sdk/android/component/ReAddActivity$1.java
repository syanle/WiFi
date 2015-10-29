// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.widget.Toast;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            ReAddActivity

class this._cls0
    implements HttpCallback
{

    final ReAddActivity this$0;

    public void onResult(Object obj)
    {
        obj = (ModelResult)obj;
        if (((ModelResult) (obj)).isExpires())
        {
            Toast.makeText(ReAddActivity.this, ((ModelResult) (obj)).getError_message(), 0).show();
            return;
        }
        if (((ModelResult) (obj)).isSuccess())
        {
            Toast.makeText(ReAddActivity.this, "\u8F6C\u64AD\u6210\u529F", 0).show();
            finish();
            return;
        } else
        {
            Toast.makeText(ReAddActivity.this, ((ModelResult) (obj)).getError_message(), 0).show();
            finish();
            return;
        }
    }

    ()
    {
        this$0 = ReAddActivity.this;
        super();
    }
}
