// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class this._cls0
    implements com.umeng.socialize.controller.listener.s.UMAuthListener
{

    final UMQQSsoHandler this$0;

    public void onCancel(SHARE_MEDIA share_media)
    {
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        if (!TextUtils.isEmpty(bundle.getString("uid")))
        {
            UMQQSsoHandler.access$2(UMQQSsoHandler.this);
            return;
        } else
        {
            Toast.makeText(UMQQSsoHandler.mActivity, "\u6388\u6743\u5931\u8D25", 0).show();
            return;
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
    }

    public void onStart(SHARE_MEDIA share_media)
    {
    }

    ()
    {
        this$0 = UMQQSsoHandler.this;
        super();
    }
}
