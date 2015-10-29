// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.view.wigets.PullToRefreshListView;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            CommentActivity, CommentDetail, CommentDetailNoMap

class n
    implements android.widget.AdapterView.OnItemClickListener
{

    final CommentActivity a;

    n(CommentActivity commentactivity)
    {
        a = commentactivity;
        super();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        i -= CommentActivity.k(a).getHeaderViewsCount();
        if (a.mCommentsData == null || i == a.mCommentsData.size())
        {
            return;
        }
        view = (UMComment)a.mCommentsData.get(i);
        if (SocializeUtils.isGoogleMapExist())
        {
            adapterview = new Intent(a, com/umeng/socialize/view/CommentDetail);
        } else
        {
            adapterview = new Intent(a, com/umeng/socialize/view/CommentDetailNoMap);
        }
        adapterview.putExtra("Comment", view);
        a.startActivity(adapterview);
    }
}
