// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

// Referenced classes of package com.mob.tools.gui:
//            PullToRefreshBaseListAdapter

public class ListInnerAdapter extends BaseAdapter
{

    private PullToRefreshBaseListAdapter adapter;

    public ListInnerAdapter(PullToRefreshBaseListAdapter pulltorefreshbaselistadapter)
    {
        adapter = pulltorefreshbaselistadapter;
    }

    public int getCount()
    {
        return adapter.getCount();
    }

    public Object getItem(int i)
    {
        return adapter.getItem(i);
    }

    public long getItemId(int i)
    {
        return adapter.getItemId(i);
    }

    public int getItemViewType(int i)
    {
        return adapter.getItemViewType(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        return adapter.getView(i, view, viewgroup);
    }

    public int getViewTypeCount()
    {
        return adapter.getViewTypeCount();
    }
}
