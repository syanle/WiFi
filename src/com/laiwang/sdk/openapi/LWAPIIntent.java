// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.laiwang.sdk.message.LWMessage;

public class LWAPIIntent
{

    public LWAPIIntent()
    {
    }

    public static boolean makeIntent(Intent intent, LWMessage lwmessage)
    {
        Bundle bundle;
        if (intent == null || lwmessage == null)
        {
            return false;
        }
        Bundle bundle1 = intent.getExtras();
        bundle = bundle1;
        if (bundle1 == null)
        {
            bundle = new Bundle();
        }
        lwmessage.getMessageType();
        JVM INSTR tableswitch 1 6: default 72
    //                   1 80
    //                   2 93
    //                   3 72
    //                   4 72
    //                   5 72
    //                   6 116;
           goto _L1 _L2 _L3 _L1 _L1 _L1 _L4
_L1:
        intent.putExtras(bundle);
        return true;
_L2:
        bundle.putString("content", lwmessage.getMessageText());
        continue; /* Loop/switch isn't completed */
_L3:
        bundle.putString("picUrl", lwmessage.getMessageImageURL());
        bundle.putString("thumbUrl", lwmessage.getMessageImageThumbPath());
        continue; /* Loop/switch isn't completed */
_L4:
        bundle.putInt("reqeustTYPE", 6);
        bundle.putString("title", lwmessage.getMessageTitle());
        bundle.putString("content", lwmessage.getMessageText());
        bundle.putString("chat", lwmessage.getMessageChat());
        if (!TextUtils.isEmpty(lwmessage.getMessageImageURL()))
        {
            bundle.putString("picUrl", lwmessage.getMessageImageURL());
        } else
        {
            bundle.putString("picUrl", lwmessage.getMessageImageThumbPath());
        }
        bundle.putString("source", lwmessage.getMessageSource());
        bundle.putString("link", lwmessage.getMessageLinkUrl());
        bundle.putString("clientId", lwmessage.getAppkey());
        bundle.putString("clientSecret", lwmessage.getSecret());
        bundle.putString("contentUrl", lwmessage.getMessageLinkUrl());
        if ("DYNAMIC".equals(lwmessage.getShareType()) || "DYNAMIC2".equals(lwmessage.getShareType()))
        {
            bundle.putString("shareType", "DYNAMIC");
        } else
        {
            bundle.putString("shareType", "SMS");
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public static LWMessage makeLWMessage(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            LWMessage lwmessage = new LWMessage();
            lwmessage.setMessageTitle(intent.getExtras().getString("title"));
            lwmessage.setMessageText(intent.getExtras().getString("content"));
            lwmessage.setMessageChat(intent.getExtras().getString("chat"));
            lwmessage.setMessageText(intent.getExtras().getString("content"));
            lwmessage.setMessageImageURL(intent.getExtras().getString("picUrl"));
            lwmessage.setMesssageSource(intent.getExtras().getString("source"));
            lwmessage.setMessageLinkUrl(intent.getExtras().getString("link"));
            lwmessage.setAppkey(intent.getExtras().getString("clientId"));
            lwmessage.setSecret(intent.getExtras().getString("clientSecret"));
            lwmessage.setMessageLinkUrl(intent.getExtras().getString("contentUrl"));
            lwmessage.setShareType(intent.getExtras().getString("shareType"));
            return lwmessage;
        }
    }
}
