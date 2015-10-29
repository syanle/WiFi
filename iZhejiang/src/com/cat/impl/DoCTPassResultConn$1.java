// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoCTPassResultInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoCTPassResultConn

class Handler extends AsyncHttpResponseHandler
{

    final DoCTPassResultConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoCTPassResultConn.access$0(DoCTPassResultConn.this).doCTPassResultErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoCTPassResultConn.access$0(DoCTPassResultConn.this).doCTPassResultSucc(s);
    }

    erface()
    {
        this$0 = DoCTPassResultConn.this;
        super();
    }
}
