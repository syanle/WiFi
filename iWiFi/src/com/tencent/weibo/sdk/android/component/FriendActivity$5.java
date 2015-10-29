// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.Intent;
import android.view.View;
import android.widget.ExpandableListView;
import com.tencent.weibo.sdk.android.model.Firend;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            FriendActivity, PublishActivity

class val.groupt
    implements android.widget.w.OnChildClickListener
{

    final FriendActivity this$0;
    private final Map val$childs;
    private final List val$groupt;

    public boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
    {
        expandablelistview = new Intent();
        expandablelistview.setClass(FriendActivity.this, com/tencent/weibo/sdk/android/component/PublishActivity);
        expandablelistview.putExtra("firend", ((Firend)((List)val$childs.get(val$groupt.get(i))).get(j)).getNick());
        setResult(-1, expandablelistview);
        finish();
        return true;
    }

    ()
    {
        this$0 = final_friendactivity;
        val$childs = map;
        val$groupt = List.this;
        super();
    }
}
