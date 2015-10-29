// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.mob.tools.gui:
//            PullToRefreshAdatper, PullToRefreshView, Scrollable

public abstract class PullToRefreshBaseListAdapter extends PullToRefreshAdatper
{

    public PullToRefreshBaseListAdapter(PullToRefreshView pulltorefreshview)
    {
        super(pulltorefreshview);
    }

    public abstract int getCount();

    public abstract Object getItem(int i);

    public abstract long getItemId(int i);

    public int getItemViewType(int i)
    {
        return 0;
    }

    public abstract View getView(int i, View view, ViewGroup viewgroup);

    public int getViewTypeCount()
    {
        return 1;
    }

    public abstract boolean isFling();

    public abstract void onScroll(Scrollable scrollable, int i, int j, int k);
}
