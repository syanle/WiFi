// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.content.Context;
import android.widget.AbsListView;
import android.widget.GridView;

// Referenced classes of package com.mob.tools.gui:
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
        gridView = onNewGridView(getContext());
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

    protected ScrollableGridView onNewGridView(Context context)
    {
        return new ScrollableGridView(context);
    }

    public void onScroll(Scrollable scrollable, int i, int j, int k)
    {
    }

    public void setColumnWidth(int i)
    {
        gridView.setColumnWidth(i);
    }

    public void setHorizontalSpacing(int i)
    {
        gridView.setHorizontalSpacing(i);
    }

    public void setNumColumns(int i)
    {
        gridView.setNumColumns(i);
    }

    public void setStretchMode(int i)
    {
        gridView.setStretchMode(i);
    }

    public void setVerticalSpacing(int i)
    {
        gridView.setVerticalSpacing(i);
    }


/*
    static boolean access$002(PullToRefreshGridAdapter pulltorefreshgridadapter, boolean flag)
    {
        pulltorefreshgridadapter.fling = flag;
        return flag;
    }

*/



}
