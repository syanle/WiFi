// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoSmsAuthInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoSmsAuthConn

class ponseHandler extends AsyncHttpResponseHandler
{

    final DoSmsAuthConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoSmsAuthConn.access$0(DoSmsAuthConn.this).doSmsAuthErr(DoSmsAuthConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoSmsAuthConn.access$0(DoSmsAuthConn.this).doSmsAuthSucc(s);
    }

    erface()
    {
        this$0 = DoSmsAuthConn.this;
        super();
    }
}
