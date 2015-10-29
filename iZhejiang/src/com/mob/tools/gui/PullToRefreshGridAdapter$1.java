// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.widget.AbsListView;

// Referenced classes of package com.mob.tools.gui:
//            PullToRefreshGridAdapter, OnListStopScrollListener, ListInnerAdapter

class this._cls0
    implements android.widget.r
{

    private int firstVisibleItem;
    final PullToRefreshGridAdapter this$0;
    private int visibleItemCount;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        firstVisibleItem = i;
        visibleItemCount = j;
        PullToRefreshGridAdapter.this.onScroll(PullToRefreshGridAdapter.access$300(PullToRefreshGridAdapter.this), i, j, k);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        abslistview = PullToRefreshGridAdapter.this;
        boolean flag;
        if (i == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        PullToRefreshGridAdapter.access$002(abslistview, flag);
        if (i == 0)
        {
            if (PullToRefreshGridAdapter.access$100(PullToRefreshGridAdapter.this) != null)
            {
                PullToRefreshGridAdapter.access$100(PullToRefreshGridAdapter.this).onListStopScrolling(firstVisibleItem, visibleItemCount);
            } else
            if (PullToRefreshGridAdapter.access$200(PullToRefreshGridAdapter.this) != null)
            {
                PullToRefreshGridAdapter.access$200(PullToRefreshGridAdapter.this).notifyDataSetChanged();
                return;
            }
        }
    }

    ()
    {
        this$0 = PullToRefreshGridAdapter.this;
        super();
    }
}
