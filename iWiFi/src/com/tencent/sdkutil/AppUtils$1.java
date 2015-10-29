// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import com.tencent.tauth.IUiListener;

// Referenced classes of package com.tencent.sdkutil:
//            TDialog, AppUtils

class val.listener
    implements Runnable
{

    final AppUtils this$0;
    final String val$action;
    final IUiListener val$listener;
    final String val$url;

    public void run()
    {
        (new TDialog(AppUtils.access$000(AppUtils.this), val$action, val$url, val$listener, AppUtils.access$100(AppUtils.this))).show();
    }

    ()
    {
        this$0 = final_apputils;
        val$action = s;
        val$url = s1;
        val$listener = IUiListener.this;
        super();
    }
}
