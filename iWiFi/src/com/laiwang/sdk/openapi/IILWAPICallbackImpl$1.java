// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import com.laiwang.sdk.message.LWMessage;

// Referenced classes of package com.laiwang.sdk.openapi:
//            IILWAPICallbackImpl

class val.lwMessage
    implements Runnable
{

    final IILWAPICallbackImpl this$0;
    private final LWMessage val$lwMessage;

    public void run()
    {
        if (IILWAPICallbackImpl.access$0(IILWAPICallbackImpl.this) != null)
        {
            IILWAPICallbackImpl.access$0(IILWAPICallbackImpl.this).onDisplay(val$lwMessage.getMessageLinkUrl());
        }
    }

    lback()
    {
        this$0 = final_iilwapicallbackimpl;
        val$lwMessage = LWMessage.this;
        super();
    }
}
