// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoPushListInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoPushListConn

class onseHandler extends AsyncHttpResponseHandler
{

    final DoPushListConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoPushListConn.access$0(DoPushListConn.this).doPushListErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoPushListConn.access$0(DoPushListConn.this).doPushListSucc(s);
    }

    erface()
    {
        this$0 = DoPushListConn.this;
        super();
    }
}
