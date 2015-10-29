// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.text.TextUtils;

// Referenced classes of package com.umeng.socialize.controller:
//            UMFacebookHandler

class this._cls0
    implements com.umeng.socialize.controller.net.dListener
{

    final UMFacebookHandler this$0;

    public void onComplete(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            UMFacebookHandler.access$4(UMFacebookHandler.this, s);
            UMFacebookHandler.access$5(UMFacebookHandler.this);
        }
    }

    ploadListener()
    {
        this$0 = UMFacebookHandler.this;
        super();
    }
}
