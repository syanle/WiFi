// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoApInfoInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoApInfoConn

class sponseHandler extends AsyncHttpResponseHandler
{

    final DoApInfoConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoApInfoConn.access$0(DoApInfoConn.this).doApInfoErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoApInfoConn.access$0(DoApInfoConn.this).doApInfoSucc(s);
    }

    erface()
    {
        this$0 = DoApInfoConn.this;
        super();
    }
}
