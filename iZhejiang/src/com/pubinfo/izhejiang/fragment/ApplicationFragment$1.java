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

class this._cls0
    implements android.view.icationFragment._cls1
{

    final ApplicationFragment this$0;

    public void onClick(View view)
    {
        OffersBrowserConfig.setBrowserTitleText("\u5E94\u7528");
        OffersManager.getInstance(getActivity().getApplicationContext()).showOffersWall(new Interface_ActivityListener() {

            final ApplicationFragment._cls1 this$1;

            public void onActivityDestroy(Context context)
            {
            }

            
            {
                this$1 = ApplicationFragment._cls1.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = ApplicationFragment.this;
        super();
    }
}
