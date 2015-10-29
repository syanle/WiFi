// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoUserInfoInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoUserInfoConn

class onseHandler extends AsyncHttpResponseHandler
{

    final DoUserInfoConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoUserInfoConn.access$0(DoUserInfoConn.this).doUserInfoErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoUserInfoConn.access$0(DoUserInfoConn.this).doUserInfoSucc(s);
    }

    erface()
    {
        this$0 = DoUserInfoConn.this;
        super();
    }
}
