// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
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
        PullToRefreshListAdapter.this.onScroll(PullToRefreshListAdapter.access$3(PullToRefreshListAdapter.this), i, j, k);
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
        PullToRefreshListAdapter.access$0(abslistview, flag);
        if (i == 0)
        {
            if (PullToRefreshListAdapter.access$1(PullToRefreshListAdapter.this) != null)
            {
                PullToRefreshListAdapter.access$1(PullToRefreshListAdapter.this).onListStopScrolling(firstVisibleItem, visibleItemCount);
            } else
            if (PullToRefreshListAdapter.access$2(PullToRefreshListAdapter.this) != null)
            {
                PullToRefreshListAdapter.access$2(PullToRefreshListAdapter.this).notifyDataSetChanged();
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
