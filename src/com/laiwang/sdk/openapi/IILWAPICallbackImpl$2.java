// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;


// Referenced classes of package com.laiwang.sdk.openapi:
//            IILWAPICallbackImpl

class val.eventResult
    implements Runnable
{

    final IILWAPICallbackImpl this$0;
    private final int val$eventResult;

    public void run()
    {
        if (IILWAPICallbackImpl.access$0(IILWAPICallbackImpl.this) != null)
        {
            IILWAPICallbackImpl.access$0(IILWAPICallbackImpl.this).onResponceAnswer(val$eventResult);
        }
    }

    lback()
    {
        this$0 = final_iilwapicallbackimpl;
        val$eventResult = I.this;
        super();
    }
}
