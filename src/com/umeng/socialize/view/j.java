// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.Context;
import com.umeng.socialize.bean.UMComment;
import com.umeng.socialize.view.wigets.PullToRefreshListView;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            ci, CommentActivity

class j extends ci
{

    final CommentActivity a;

    j(CommentActivity commentactivity, Context context)
    {
        a = commentactivity;
        super(context);
    }

    public void a()
    {
        super.a();
        CommentActivity commentactivity = a;
        com.umeng.socialize.view.abs.BaseComentActivity.FetchDataListener fetchdatalistener = CommentActivity.j(a);
        long l;
        if (a.mCommentsData == null)
        {
            l = -1L;
        } else
        {
            l = ((UMComment)a.mCommentsData.get(a.mCommentsData.size() - 1)).mDt;
        }
        commentactivity.fetchFormNet(fetchdatalistener, l);
    }

    public void b()
    {
        super.b();
        int i = CommentActivity.k(a).getHeaderViewsCount();
        CommentActivity.k(a).setSelection(i);
    }
}
