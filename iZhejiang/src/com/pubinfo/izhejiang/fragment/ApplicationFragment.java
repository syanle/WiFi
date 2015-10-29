// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RelativeLayout;
import com.umeng.analytics.MobclickAgent;
import net.youmi.android.listener.Interface_ActivityListener;
import net.youmi.android.offers.OffersBrowserConfig;
import net.youmi.android.offers.OffersManager;

public class ApplicationFragment extends Fragment
{

    android.view.View.OnClickListener clickListener;
    RelativeLayout relativeLayout1;

    public ApplicationFragment()
    {
        clickListener = null;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f030019, viewgroup, false);
        getActivity().getWindow().setFormat(-3);
        relativeLayout1 = (RelativeLayout)layoutinflater.findViewById(0x7f0a006f);
        clickListener = new android.view.View.OnClickListener() {

            final ApplicationFragment this$0;

            public void onClick(View view)
            {
                OffersBrowserConfig.setBrowserTitleText("\u5E94\u7528");
                OffersManager.getInstance(getActivity().getApplicationContext()).showOffersWall(new Interface_ActivityListener() {

                    final _cls1 this$1;

                    public void onActivityDestroy(Context context)
                    {
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$0 = ApplicationFragment.this;
                super();
            }
        };
        relativeLayout1.setOnClickListener(clickListener);
        return layoutinflater;
    }

    public void onPause()
    {
        super.onPause();
        MobclickAgent.onPageEnd("SplashScreen");
    }

    public void onResume()
    {
        super.onResume();
        MobclickAgent.onPageStart("SplashScreen");
    }
}
