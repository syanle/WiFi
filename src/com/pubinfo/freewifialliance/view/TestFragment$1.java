// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            TestFragment, CenterPage

class this._cls0
    implements android.view.tener
{

    final TestFragment this$0;

    public void onClick(View view)
    {
        startActivity(new Intent(getActivity(), com/pubinfo/freewifialliance/view/CenterPage));
        getActivity().finish();
    }

    ()
    {
        this$0 = TestFragment.this;
        super();
    }
}
