// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.view.View;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.util.Util;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            MainPage_Activity

class this._cls0
    implements android.view.
{

    final MainPage_Activity this$0;

    public void onClick(View view)
    {
        Util.clearSharePersistent(MainPage_Activity.access$0(MainPage_Activity.this));
        Toast.makeText(MainPage_Activity.this, "\u6CE8\u9500\u6210\u529F", 0).show();
    }

    A()
    {
        this$0 = MainPage_Activity.this;
        super();
    }
}
