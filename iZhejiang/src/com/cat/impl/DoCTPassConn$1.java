// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoCTPassInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoCTPassConn

class sponseHandler extends AsyncHttpResponseHandler
{

    final DoCTPassConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoCTPassConn.access$0(DoCTPassConn.this).doCTPassErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoCTPassConn.access$0(DoCTPassConn.this).doCTPassSucc(s);
    }

    erface()
    {
        this$0 = DoCTPassConn.this;
        super();
    }
}
