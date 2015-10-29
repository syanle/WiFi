// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoMobileExistInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoMobileExistConn

class eHandler extends AsyncHttpResponseHandler
{

    final DoMobileExistConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoMobileExistConn.access$0(DoMobileExistConn.this).doMobileExistErr(DoMobileExistConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoMobileExistConn.access$0(DoMobileExistConn.this).doMobileExistSucc(s);
    }

    erface()
    {
        this$0 = DoMobileExistConn.this;
        super();
    }
}
