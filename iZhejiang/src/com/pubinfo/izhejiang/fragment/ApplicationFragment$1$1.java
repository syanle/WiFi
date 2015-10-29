// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import net.youmi.android.listener.Interface_ActivityListener;
import net.youmi.android.offers.OffersBrowserConfig;
import net.youmi.android.offers.OffersManager;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            ApplicationFragment

class this._cls1
    implements Interface_ActivityListener
{

    final this._cls1 this$1;

    public void onActivityDestroy(Context context)
    {
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/pubinfo/izhejiang/fragment/ApplicationFragment$1

/* anonymous class */
    class ApplicationFragment._cls1
        implements android.view.View.OnClickListener
    {

        final ApplicationFragment this$0;

        public void onClick(View view)
        {
            OffersBrowserConfig.setBrowserTitleText("\u5E94\u7528");
            OffersManager.getInstance(getActivity().getApplicationContext()).showOffersWall(new ApplicationFragment._cls1._cls1());
        }

            
            {
                this$0 = ApplicationFragment.this;
                super();
            }
    }

}
