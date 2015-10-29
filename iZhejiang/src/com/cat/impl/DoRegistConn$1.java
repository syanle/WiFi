// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoRegistInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoRegistConn

class sponseHandler extends AsyncHttpResponseHandler
{

    final DoRegistConn this$0;

    public void onFailure(Throwable throwable)
    {
        super.onFailure(throwable);
        DoRegistConn.access$0(DoRegistConn.this).doRegistErr(DoRegistConn.FormatStackTrace(throwable));
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoRegistConn.access$0(DoRegistConn.this).doRegistSucc(s);
    }

    erface()
    {
        this$0 = DoRegistConn.this;
        super();
    }
}
