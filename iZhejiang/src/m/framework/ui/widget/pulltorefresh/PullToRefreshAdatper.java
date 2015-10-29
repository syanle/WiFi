// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.view.View;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            PullToRefreshView, Scrollable

public abstract class PullToRefreshAdatper
{

    private Context context;
    private PullToRefreshView parent;

    public PullToRefreshAdatper(PullToRefreshView pulltorefreshview)
    {
        context = pulltorefreshview.getContext();
        parent = pulltorefreshview;
    }

    public abstract Scrollable getBodyView();

    public Context getContext()
    {
        return context;
    }

    public abstract View getHeaderView();

    protected PullToRefreshView getParent()
    {
        return parent;
    }

    public abstract boolean isPullReady();

    public void notifyDataSetChanged()
    {
        parent.stopPulling();
    }

    public abstract void onPullDown(int i);

    public abstract void onRequest();

    public void onReversed()
    {
    }
}
