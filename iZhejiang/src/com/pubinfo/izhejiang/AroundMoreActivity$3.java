// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.View;

// Referenced classes of package com.pubinfo.izhejiang:
//            AroundMoreActivity

class this._cls0
    implements com.pubinfo.izhejiang.horizontalscrollview.tener
{

    final AroundMoreActivity this$0;

    public void onStayViewGone()
    {
        findViewById(0x7f0a0028).setVisibility(8);
    }

    public void onStayViewShow()
    {
        findViewById(0x7f0a0028).setVisibility(0);
    }

    OrderView.StayViewListener()
    {
        this$0 = AroundMoreActivity.this;
        super();
    }
}
