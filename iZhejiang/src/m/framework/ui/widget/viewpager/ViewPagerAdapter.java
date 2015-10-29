// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.viewpager;

import android.view.View;
import android.view.ViewGroup;

public abstract class ViewPagerAdapter
{

    public ViewPagerAdapter()
    {
    }

    public abstract int getCount();

    public abstract View getView(int i, ViewGroup viewgroup);

    public void onScreenChange(int i, int j)
    {
    }
}
