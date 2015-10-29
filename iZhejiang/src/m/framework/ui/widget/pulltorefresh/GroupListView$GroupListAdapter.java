// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            GroupListView

public static abstract class 
{

    private BaseAdapter adapter;

    private void setInnerAdapter(BaseAdapter baseadapter)
    {
        adapter = baseadapter;
    }

    public abstract Object getChild(int i, int j);

    public abstract View getChildView(int i, int j, View view, ViewGroup viewgroup);

    public abstract int getChildrenCount(int i);

    public abstract int getGroupCount();

    public abstract String getGroupTitle(int i);

    public abstract View getGroupTitleView(int i, View view, ViewGroup viewgroup);

    public void notifyDataSetChanged()
    {
        adapter.notifyDataSetChanged();
    }


    public ()
    {
    }
}
