// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            PullToRefreshAdatper, ScrollableGroupListView, OnListStopScrollListener, PullToRefreshView, 
//            Scrollable, GroupListView

public abstract class PullToRefreshGroupListAdapter extends PullToRefreshAdatper
{

    private GroupListView.GroupListAdapter adapter;
    private boolean fling;
    private ScrollableGroupListView listView;
    private OnListStopScrollListener osListener;

    public PullToRefreshGroupListAdapter(PullToRefreshView pulltorefreshview)
    {
        super(pulltorefreshview);
        listView = new ScrollableGroupListView(getContext());
        listView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            private int firstVisibleItem;
            final PullToRefreshGroupListAdapter this$0;
            private int visibleItemCount;

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
                firstVisibleItem = i;
                visibleItemCount = j;
                PullToRefreshGroupListAdapter.this.onScroll(listView, i, j, k);
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
                this$0 = PullToRefreshGroupListAdapter.this;
                super();
            }
        });
        adapter = new GroupListView.GroupListAdapter() {

            final PullToRefreshGroupListAdapter this$0;

            public Object getChild(int i, int j)
            {
                return PullToRefreshGroupListAdapter.this.getChild(i, j);
            }

            public View getChildView(int i, int j, View view, ViewGroup viewgroup)
            {
                return PullToRefreshGroupListAdapter.this.getChildView(i, j, view, viewgroup);
            }

            public int getChildrenCount(int i)
            {
                return PullToRefreshGroupListAdapter.this.getChildrenCount(i);
            }

            public int getGroupCount()
            {
                return PullToRefreshGroupListAdapter.this.getGroupCount();
            }

            public String getGroupTitle(int i)
            {
                return PullToRefreshGroupListAdapter.this.getGroupTitle(i);
            }

            public View getGroupTitleView(int i, View view, ViewGroup viewgroup)
            {
                return PullToRefreshGroupListAdapter.this.getGroupTitleView(i, view, viewgroup);
            }

            
            {
                this$0 = PullToRefreshGroupListAdapter.this;
                super();
            }
        };
        listView.setAdapter(adapter);
    }

    public Scrollable getBodyView()
    {
        return listView;
    }

    public abstract Object getChild(int i, int j);

    public abstract View getChildView(int i, int j, View view, ViewGroup viewgroup);

    public abstract int getChildrenCount(int i);

    public abstract int getGroupCount();

    public abstract String getGroupTitle(int i);

    public abstract View getGroupTitleView(int i, View view, ViewGroup viewgroup);

    public GroupListView getListView()
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
