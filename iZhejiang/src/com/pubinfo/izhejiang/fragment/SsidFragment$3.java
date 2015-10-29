// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.os.Handler;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

class this._cls0
    implements Runnable
{

    final SsidFragment this$0;

    public void run()
    {
        SsidFragment.access$1(SsidFragment.this).sendEmptyMessage(7);
    }

    ()
    {
        this$0 = SsidFragment.this;
        super();
    }
}
