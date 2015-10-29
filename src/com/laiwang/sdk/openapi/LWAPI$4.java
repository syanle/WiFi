// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.content.Context;
import com.laiwang.sdk.channel.IILWAPIChannelProxy;
import com.laiwang.sdk.message.IILWMessage;
import com.laiwang.sdk.message.LWMessage;
import com.laiwang.sdk.utils.LWAPINotification;

// Referenced classes of package com.laiwang.sdk.openapi:
//            LWAPI

class age
    implements Runnable
{

    final LWAPI this$0;
    private final Context val$apiContext;
    private final IILWMessage val$message;
    private final int val$version;

    public void run()
    {
        if (!LWAPI.access$0(LWAPI.this).isConnected())
        {
            LWAPINotification.showToast("\u6765\u5F80\u5F88\u5FD9,\u8BF7\u7A0D\u540E\u518D\u8BD5", LWAPI.getApplication());
        }
        if (!LWAPI.access$8(LWAPI.this))
        {
            LWAPI.downloadLaiwangAPK(val$apiContext, val$version);
        } else
        {
            if (LWAPI.access$9(LWAPI.this))
            {
                if (!isLWSupported(val$message.getMessageType()))
                {
                    LWAPINotification.showToast("\u6682\u4E0D\u652F\u6301\u6B64\u7C7B\u7684\u5206\u4EAB\uFF0C\u8BF7\u66F4\u65B0\u60A8\u7684\u6765\u5F80", LWAPI.getApplication());
                    LWAPI.downloadLaiwangAPK(val$apiContext, val$version);
                    return;
                }
                LWAPINotification.showToast("\u53CA\u65F6\u66F4\u65B0\u6765\u5F80\u54E6,\u60CA\u559C\u5728\u540E\u9762", LWAPI.getApplication());
            }
            if (LWAPI.access$4(LWAPI.this) >= 0x20140101)
            {
                android.os.Bundle bundle = val$message.toBundle();
                if (LWAPI.access$0(LWAPI.this).requestData(LWAPI.access$1(LWAPI.this), bundle, val$version) == 0 && !"RESPONCE".equals(val$message.getShareType()))
                {
                    LWAPI.access$10(LWAPI.this, val$apiContext, "com.alibaba.android.babylon", val$message.getShareType(), val$message, false);
                    return;
                }
            } else
            if (LWAPI.access$0(LWAPI.this).transportData(LWAPI.access$1(LWAPI.this), (LWMessage)val$message, val$version) == 0)
            {
                LWAPI.access$10(LWAPI.this, val$apiContext, "com.alibaba.android.babylon", val$message.getShareType(), val$message, false);
                return;
            } else
            {
                LWAPI.access$10(LWAPI.this, val$apiContext, "com.alibaba.android.babylon", val$message.getShareType(), val$message, true);
                return;
            }
        }
    }

    age()
    {
        this$0 = final_lwapi;
        val$apiContext = context;
        val$version = i;
        val$message = IILWMessage.this;
        super();
    }
}
