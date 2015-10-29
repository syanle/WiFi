// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            CenterPage

public final class TestFragment extends Fragment
{

    private static final String KEY_CONTENT = "TestFragment:Content";
    private int mContent;
    int type;

    public TestFragment()
    {
        type = 0;
    }

    public static TestFragment newInstance(int i)
    {
        TestFragment testfragment = new TestFragment();
        testfragment.mContent = i;
        return testfragment;
    }

    public static TestFragment newInstance(int i, int j)
    {
        TestFragment testfragment = new TestFragment();
        testfragment.mContent = i;
        testfragment.type = j;
        return testfragment;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        bundle = (ImageButton)getActivity().findViewById(0x7f0c000d);
        if (type == 1)
        {
            bundle.setOnClickListener(new android.view.View.OnClickListener() {

                final TestFragment this$0;

                public void onClick(View view)
                {
                    startActivity(new Intent(getActivity(), com/pubinfo/freewifialliance/view/CenterPage));
                    getActivity().finish();
                }

            
            {
                this$0 = TestFragment.this;
                super();
            }
            });
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null && bundle.containsKey("TestFragment:Content"))
        {
            mContent = bundle.getInt("TestFragment:Content");
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (type == 1)
        {
            return layoutinflater.inflate(0x7f030001, viewgroup, false);
        } else
        {
            layoutinflater = new ImageView(getActivity());
            layoutinflater.setBackgroundResource(mContent);
            viewgroup = new RelativeLayout(getActivity());
            viewgroup.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
            viewgroup.setGravity(17);
            viewgroup.addView(layoutinflater);
            return viewgroup;
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putInt("TestFragment:Content", mContent);
    }
}
