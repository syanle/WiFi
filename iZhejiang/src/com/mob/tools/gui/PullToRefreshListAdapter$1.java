// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.widget.AbsListView;

// Referenced classes of package com.mob.tools.gui:
//            PullToRefreshListAdapter, OnListStopScrollListener, ListInnerAdapter

class this._cls0
    implements android.widget.r
{

    private int firstVisibleItem;
    final PullToRefreshListAdapter this$0;
    private int visibleItemCount;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        firstVisibleItem = i;
        visibleItemCount = j;
        PullToRefreshListAdapter.this.onScroll(PullToRefreshListAdapter.access$300(PullToRefreshListAdapter.this), i, j, k);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        abslistview = PullToRefreshListAdapter.this;
        boolean flag;
        if (i == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        PullToRefreshListAdapter.access$002(abslistview, flag);
        if (i == 0)
        {
            if (PullToRefreshListAdapter.access$100(PullToRefreshListAdapter.this) != null)
            {
                PullToRefreshListAdapter.access$100(PullToRefreshListAdapter.this).onListStopScrolling(firstVisibleItem, visibleItemCount);
            } else
            if (PullToRefreshListAdapter.access$200(PullToRefreshListAdapter.this) != null)
            {
                PullToRefreshListAdapter.access$200(PullToRefreshListAdapter.this).notifyDataSetChanged();
                return;
            }
        }
    }

    ()
    {
        this$0 = PullToRefreshListAdapter.this;
        super();
    }
}
