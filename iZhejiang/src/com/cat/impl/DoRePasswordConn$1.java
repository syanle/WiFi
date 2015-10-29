// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoRePasswordInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoRePasswordConn

class seHandler extends AsyncHttpResponseHandler
{

    final DoRePasswordConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoRePasswordConn.access$0(DoRePasswordConn.this).doRePasswordErr(DoRePasswordConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoRePasswordConn.access$0(DoRePasswordConn.this).doRePasswordSucc(s);
    }

    erface()
    {
        this$0 = DoRePasswordConn.this;
        super();
    }
}
