// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            MainPage_Activity, ReAddActivity

class this._cls0
    implements android.view.
{

    final MainPage_Activity this$0;

    public void onClick(View view)
    {
        view = new Intent(MainPage_Activity.this, com/tencent/weibo/sdk/android/component/ReAddActivity);
        Bundle bundle = new Bundle();
        bundle.putString("content", "Make U happy");
        bundle.putString("video_url", "http://www.tudou.com/programs/view/b-4VQLxwoX4/");
        bundle.putString("pic_url", "http://t2.qpic.cn/mblogpic/9c7e34358608bb61a696/2000");
        view.putExtras(bundle);
        startActivity(view);
    }

    A()
    {
        this$0 = MainPage_Activity.this;
        super();
    }
}