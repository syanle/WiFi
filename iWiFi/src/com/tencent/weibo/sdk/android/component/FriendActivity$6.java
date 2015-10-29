// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.util.Log;
import android.widget.AbsListView;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            FriendActivity

class val.groupt
    implements android.widget.ollListener
{

    final FriendActivity this$0;
    private final List val$groupt;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        Log.d("first", (new StringBuilder(String.valueOf(i))).toString());
        j = 0;
        do
        {
            if (j >= val$groupt.size())
            {
                return;
            }
            if (j == 0 && i >= 0 && i < FriendActivity.access$0(FriendActivity.this)[j])
            {
                FriendActivity.access$1(FriendActivity.this).setText(((String)val$groupt.get(j)).toUpperCase());
                return;
            }
            if (i < FriendActivity.access$0(FriendActivity.this)[j] && i >= FriendActivity.access$0(FriendActivity.this)[j - 1])
            {
                FriendActivity.access$1(FriendActivity.this).setText(((String)val$groupt.get(j)).toUpperCase());
                return;
            }
            j++;
        } while (true);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
    }

    ()
    {
        this$0 = final_friendactivity;
        val$groupt = List.this;
        super();
    }
}
