// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoNearTypeInterface;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;

// Referenced classes of package com.cat.impl:
//            DoNearTypeConn

class onseHandler extends AsyncHttpResponseHandler
{

    final DoNearTypeConn this$0;

    public void onFailure(Throwable throwable, String s)
    {
        super.onFailure(throwable);
        DoNearTypeConn.access$0(DoNearTypeConn.this).doNearTypeErr(s);
    }

    public void onSuccess(String s)
    {
        super.onSuccess(s);
        (new TARequest()).setData(s);
        DoNearTypeConn.access$0(DoNearTypeConn.this).doNearTypeSucc(s);
    }

    erface()
    {
        this$0 = DoNearTypeConn.this;
        super();
    }
}
