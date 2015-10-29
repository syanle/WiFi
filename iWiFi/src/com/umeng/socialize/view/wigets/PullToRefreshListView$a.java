// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            PullToRefreshListView

private class <init>
    implements android.view.oRefreshListView.a
{

    final PullToRefreshListView a;

    public void onClick(View view)
    {
        if (PullToRefreshListView.access$0(a) != 4)
        {
            a.prepareForRefresh();
            a.onRefresh();
        }
    }

    private (PullToRefreshListView pulltorefreshlistview)
    {
        a = pulltorefreshlistview;
        super();
    }

    a(PullToRefreshListView pulltorefreshlistview, a a1)
    {
        this(pulltorefreshlistview);
    }
}
