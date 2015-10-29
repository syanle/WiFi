// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import java.util.List;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            ConversationActivity, PublishActivity

class val.li
    implements android.widget.Listener
{

    final ConversationActivity this$0;
    private final List val$li;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = new Intent();
        adapterview.setClass(ConversationActivity.this, com/tencent/weibo/sdk/android/component/PublishActivity);
        adapterview.putExtra("conversation", (String)val$li.get(i));
        setResult(-1, adapterview);
        finish();
    }

    ()
    {
        this$0 = final_conversationactivity;
        val$li = List.this;
        super();
    }
}
