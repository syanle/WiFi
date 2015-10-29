// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoNearBusListInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoNearBusListConn

class eHandler extends AsyncHttpResponseHandler
{

    final DoNearBusListConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoNearBusListConn.access$0(DoNearBusListConn.this).doNearBusListErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoNearBusListConn.access$0(DoNearBusListConn.this).doNearBusListSucc(s);
    }

    erface()
    {
        this$0 = DoNearBusListConn.this;
        super();
    }
}
