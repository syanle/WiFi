// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoSsidInfoInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoSsidInfoConn

class onseHandler extends AsyncHttpResponseHandler
{

    final DoSsidInfoConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoSsidInfoConn.access$0(DoSsidInfoConn.this).doSsidInfoErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoSsidInfoConn.access$0(DoSsidInfoConn.this).doSsidInfoSucc(s);
    }

    erface()
    {
        this$0 = DoSsidInfoConn.this;
        super();
    }
}
