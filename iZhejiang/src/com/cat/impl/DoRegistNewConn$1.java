// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoRegistNewInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoRegistNewConn

class nseHandler extends AsyncHttpResponseHandler
{

    final DoRegistNewConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoRegistNewConn.access$0(DoRegistNewConn.this).doRegistNewErr(DoRegistNewConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoRegistNewConn.access$0(DoRegistNewConn.this).doRegistNewSucc(s);
    }

    erface()
    {
        this$0 = DoRegistNewConn.this;
        super();
    }
}
