// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;


// Referenced classes of package com.umeng.socialize.view:
//            CommentActivity

class m
    implements com.umeng.socialize.view.wigets.PullToRefreshListView.OnRefreshListener
{

    final CommentActivity a;

    m(CommentActivity commentactivity)
    {
        a = commentactivity;
        super();
    }

    public void a()
    {
        a.reflushData();
    }
}
