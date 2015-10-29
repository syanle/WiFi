// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            PullToRefreshGroupListAdapter, OnListStopScrollListener

class this._cls0
    implements android.widget.shGroupListAdapter._cls1
{

    private int firstVisibleItem;
    final PullToRefreshGroupListAdapter this$0;
    private int visibleItemCount;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        firstVisibleItem = i;
        visibleItemCount = j;
        PullToRefreshGroupListAdapter.this.onScroll(PullToRefreshGroupListAdapter.access$3(PullToRefreshGroupListAdapter.this), i, j, k);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        abslistview = PullToRefreshGroupListAdapter.this;
        boolean flag;
        if (i == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        PullToRefreshGroupListAdapter.access$0(abslistview, flag);
        if (i == 0)
        {
            if (PullToRefreshGroupListAdapter.access$1(PullToRefreshGroupListAdapter.this) != null)
            {
                PullToRefreshGroupListAdapter.access$1(PullToRefreshGroupListAdapter.this).onListStopScrolling(firstVisibleItem, visibleItemCount);
            } else
            if (PullToRefreshGroupListAdapter.access$2(PullToRefreshGroupListAdapter.this) != null)
            {
                PullToRefreshGroupListAdapter.access$2(PullToRefreshGroupListAdapter.this).otifyDataSetChanged();
                return;
            }
        }
    }

    I()
    {
        this$0 = PullToRefreshGroupListAdapter.this;
        super();
    }
}
