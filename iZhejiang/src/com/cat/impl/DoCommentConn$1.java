// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoCommentInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoCommentConn

class ponseHandler extends AsyncHttpResponseHandler
{

    final DoCommentConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoCommentConn.access$0(DoCommentConn.this).doCommentErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoCommentConn.access$0(DoCommentConn.this).doCommentSucc(s);
    }

    erface()
    {
        this$0 = DoCommentConn.this;
        super();
    }
}
