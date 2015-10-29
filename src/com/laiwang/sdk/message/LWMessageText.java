// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.message;

import android.os.Bundle;

// Referenced classes of package com.laiwang.sdk.message:
//            LWMessage, IILWMessage

public class LWMessageText extends LWMessage
{

    public LWMessageText()
    {
        msgType = 1;
    }

    public IILWMessage fromBundle(Bundle bundle)
    {
        msgAppKey = bundle.getString("clientId");
        msgSecret = bundle.getString("clientSecret");
        msgShareType = bundle.getString("shareType");
        msgContent = bundle.getString("content");
        msgType = bundle.getInt("msgType");
        return this;
    }

    public Bundle toBundle()
    {
        Bundle bundle = new Bundle();
        bundle.putString("clientId", msgAppKey);
        bundle.putString("clientSecret", msgSecret);
        bundle.putString("content", msgContent);
        bundle.putString("shareType", msgShareType);
        bundle.putInt("msgType", msgType);
        return bundle;
    }
}
