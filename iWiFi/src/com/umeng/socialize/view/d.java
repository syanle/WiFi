// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            CommentActivity

class d
    implements com.umeng.socialize.view.abs.BaseComentActivity.FetchDataListener
{

    final CommentActivity a;

    d(CommentActivity commentactivity)
    {
        a = commentactivity;
        super();
    }

    public void a()
    {
    }

    public void a(List list)
    {
        a.d = false;
        a.c = -1;
        a.mCommentsData = list;
        a.commentsChanged();
        CommentActivity.b(a);
    }
}
