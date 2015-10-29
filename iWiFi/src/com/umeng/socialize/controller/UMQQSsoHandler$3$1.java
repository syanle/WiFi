// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import com.umeng.socom.DeviceConfig;

// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class this._cls1
    implements inAppIdListener
{

    final this._cls1 this$1;

    public void onComplete()
    {
        UMQQSsoHandler.access$10(cess._mth0(this._cls1.this));
        if (!DeviceConfig.isAppInstalled("com.tencent.mobileqq", UMQQSsoHandler.mActivity))
        {
            UMQQSsoHandler.access$2(cess._mth0(this._cls1.this));
            return;
        } else
        {
            cess._mth0(this._cls1.this).authorize(UMQQSsoHandler.mActivity, UMQQSsoHandler.access$11(cess._mth0(this._cls1.this)));
            return;
        }
    }

    inAppIdListener()
    {
        this$1 = this._cls1.this;
        super();
    }
}
