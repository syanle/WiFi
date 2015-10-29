// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            MainPage_Activity, PublishActivity

class this._cls0
    implements android.view.
{

    final MainPage_Activity this$0;

    public void onClick(View view)
    {
        view = new Intent(MainPage_Activity.this, com/tencent/weibo/sdk/android/component/PublishActivity);
        startActivity(view);
    }

    A()
    {
        this$0 = MainPage_Activity.this;
        super();
    }
}
