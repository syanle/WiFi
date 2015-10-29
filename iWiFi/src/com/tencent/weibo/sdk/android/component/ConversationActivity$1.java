// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            ConversationActivity

class this._cls0
    implements android.widget.Listener
{

    final ConversationActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Toast.makeText(ConversationActivity.this, (new StringBuilder(String.valueOf(i))).toString(), 100).show();
    }

    ()
    {
        this$0 = ConversationActivity.this;
        super();
    }
}
