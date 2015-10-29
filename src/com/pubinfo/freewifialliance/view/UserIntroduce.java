// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.Menu;
import com.pubinfo.freewifialliance.view.adpter.TestFragmentAdapter;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            IconPageIndicator, PageIndicator

public class UserIntroduce extends FragmentActivity
{

    TestFragmentAdapter mAdapter;
    PageIndicator mIndicator;
    ViewPager mPager;

    public UserIntroduce()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030036);
        mAdapter = new TestFragmentAdapter(getSupportFragmentManager());
        mPager = (ViewPager)findViewById(0x7f0c00d9);
        mPager.setAdapter(mAdapter);
        mIndicator = (IconPageIndicator)findViewById(0x7f0c00da);
        mIndicator.setViewPager(mPager);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        return super.onCreateOptionsMenu(menu);
    }
}
