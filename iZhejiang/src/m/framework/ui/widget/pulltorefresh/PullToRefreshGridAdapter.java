// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;
import android.widget.GridView;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            PullToRefreshBaseListAdapter, ScrollableGridView, ListInnerAdapter, OnListStopScrollListener, 
//            PullToRefreshView, Scrollable

public abstract class PullToRefreshGridAdapter extends PullToRefreshBaseListAdapter
{

    private ListInnerAdapter adapter;
    private boolean fling;
    private ScrollableGridView gridView;
    private OnListStopScrollListener osListener;

    public PullToRefreshGridAdapter(PullToRefreshView pulltorefreshview)
    {
        super(pulltorefreshview);
        gridView = new ScrollableGridView(getContext());
        gridView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            private int firstVisibleItem;
            final PullToRefreshGridAdapter this$0;
            private int visibleItemCount;

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
                firstVisibleItem = i;
                visibleItemCount = j;
                PullToRefreshGridAdapter.this.onScroll(gridView, i, j, k);
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
                abslistview.fling = flag;
                if (i == 0)
                {
                    if (osListener != null)
                    {
                        osListener.onListStopScrolling(firstVisibleItem, visibleItemCount);
                    } else
                    if (adapter != null)
                    {
                        adapter.notifyDataSetChanged();
                        return;
                    }
                }
            }

            
            {
                this$0 = PullToRefreshGridAdapter.this;
                super();
            }
        });
        adapter = new ListInnerAdapter(this);
        gridView.setAdapter(adapter);
    }

    public Scrollable getBodyView()
    {
        return gridView;
    }

    public GridView getGridView()
    {
        return gridView;
    }

    public boolean isFling()
    {
        return fling;
    }

    public boolean isPullReady()
    {
        return gridView.isReadyToPull();
    }

    public void notifyDataSetChanged()
    {
        super.notifyDataSetChanged();
        adapter.notifyDataSetChanged();
    }

    public void onScroll(Scrollable scrollable, int i, int j, int k)
    {
    }




}
