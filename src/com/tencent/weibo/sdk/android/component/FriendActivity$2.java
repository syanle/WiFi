// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            FriendActivity

class this._cls0
    implements TextWatcher
{

    final FriendActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        search(editable.toString());
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = FriendActivity.this;
        super();
    }
}
