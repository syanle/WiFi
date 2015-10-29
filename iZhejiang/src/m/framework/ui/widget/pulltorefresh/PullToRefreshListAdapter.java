// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;
import android.widget.ListView;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            PullToRefreshBaseListAdapter, ScrollableListView, ListInnerAdapter, OnListStopScrollListener, 
//            PullToRefreshView, Scrollable

public abstract class PullToRefreshListAdapter extends PullToRefreshBaseListAdapter
{

    private ListInnerAdapter adapter;
    private boolean fling;
    private ScrollableListView listView;
    private OnListStopScrollListener osListener;

    public PullToRefreshListAdapter(PullToRefreshView pulltorefreshview)
    {
        super(pulltorefreshview);
        listView = new ScrollableListView(getContext());
        listView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            private int firstVisibleItem;
            final PullToRefreshListAdapter this$0;
            private int visibleItemCount;

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
                firstVisibleItem = i;
                visibleItemCount = j;
                PullToRefreshListAdapter.this.onScroll(listView, i, j, k);
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
                this$0 = PullToRefreshListAdapter.this;
                super();
            }
        });
        adapter = new ListInnerAdapter(this);
        listView.setAdapter(adapter);
    }

    public Scrollable getBodyView()
    {
        return listView;
    }

    public ListView getListView()
    {
        return listView;
    }

    public boolean isFling()
    {
        return fling;
    }

    public boolean isPullReady()
    {
        return listView.isReadyToPull();
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
