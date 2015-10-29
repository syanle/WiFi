// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bread.breadservice;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;

// Referenced classes of package com.bread.breadservice:
//            BRDDesktopActivity

class this._cls0
    implements android.view.ctivity._cls1
{

    final BRDDesktopActivity this$0;

    public void onClick(View view)
    {
        Log.d("test", "iv_ad click ok!!!");
        if (!TextUtils.isEmpty(BRDDesktopActivity.access$0(BRDDesktopActivity.this)))
        {
            BRDDesktopActivity.access$1(BRDDesktopActivity.this, BRDDesktopActivity.access$0(BRDDesktopActivity.this));
        } else
        if (!TextUtils.isEmpty(BRDDesktopActivity.access$2(BRDDesktopActivity.this)))
        {
            BRDDesktopActivity.access$3(BRDDesktopActivity.this, BRDDesktopActivity.access$2(BRDDesktopActivity.this));
        } else
        {
            Log.d("test", "desktop error!!!");
        }
        finish();
    }

    ()
    {
        this$0 = BRDDesktopActivity.this;
        super();
    }
}
