// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoLoginInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoLoginConn

class esponseHandler extends AsyncHttpResponseHandler
{

    final DoLoginConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoLoginConn.access$0(DoLoginConn.this).doLoginErr(DoLoginConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoLoginConn.access$0(DoLoginConn.this).doLoginSucc(s);
    }

    ()
    {
        this$0 = DoLoginConn.this;
        super();
    }
}
