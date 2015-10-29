// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view.adpter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.pubinfo.freewifialliance.view.TestFragment;

// Referenced classes of package com.pubinfo.freewifialliance.view.adpter:
//            IconPagerAdapter

public class TestFragmentAdapter extends FragmentPagerAdapter
    implements IconPagerAdapter
{

    protected static final int CONTENT[] = {
        0x7f0200ae, 0x7f0200b0, 0x7f0200af, 0x7f0200ad
    };
    protected static final int ICONS[] = {
        0x7f020047, 0x7f020047, 0x7f020047, 0x7f020047
    };
    private int mCount;

    public TestFragmentAdapter(FragmentManager fragmentmanager)
    {
        super(fragmentmanager);
        mCount = CONTENT.length;
    }

    public int getCount()
    {
        return mCount;
    }

    public int getIconResId(int i)
    {
        return ICONS[i % ICONS.length];
    }

    public Fragment getItem(int i)
    {
        if (i == 3)
        {
            return TestFragment.newInstance(CONTENT[i % CONTENT.length], 1);
        } else
        {
            return TestFragment.newInstance(CONTENT[i % CONTENT.length]);
        }
    }

    public void setCount(int i)
    {
        if (i > 0 && i <= 10)
        {
            mCount = i;
            notifyDataSetChanged();
        }
    }

}
