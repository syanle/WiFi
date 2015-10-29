// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoCheckNetWorkInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoCheckNetWorkConn

class Handler extends AsyncHttpResponseHandler
{

    final DoCheckNetWorkConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoCheckNetWorkConn.access$0(DoCheckNetWorkConn.this).doCheckNetWorkErr(DoCheckNetWorkConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoCheckNetWorkConn.access$0(DoCheckNetWorkConn.this).doCheckNetWorkSucc(s);
    }

    erface()
    {
        this$0 = DoCheckNetWorkConn.this;
        super();
    }
}
