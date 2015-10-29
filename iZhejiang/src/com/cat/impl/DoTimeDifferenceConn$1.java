// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoTimeDifferenceInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoTimeDifferenceConn

class ndler extends AsyncHttpResponseHandler
{

    final DoTimeDifferenceConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoTimeDifferenceConn.access$0(DoTimeDifferenceConn.this).doTimeDifferenceErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoTimeDifferenceConn.access$0(DoTimeDifferenceConn.this).doTimeDifferenceSucc(s);
    }

    erface()
    {
        this$0 = DoTimeDifferenceConn.this;
        super();
    }
}
