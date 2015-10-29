// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.Bundle;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class Listener
    implements com.umeng.socialize.controller.listener.s.UMAuthListener
{

    final UMQQSsoHandler this$0;
    private final com.umeng.socialize.controller.listener.s.UMAuthListener val$authListener;

    public void onCancel(SHARE_MEDIA share_media)
    {
        if (val$authListener != null)
        {
            val$authListener.onCancel(share_media);
        }
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        UMQQSsoHandler.access$2(UMQQSsoHandler.this);
        if (val$authListener != null)
        {
            val$authListener.onComplete(bundle, share_media);
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        val$authListener.onError(socializeexception, share_media);
    }

    public void onStart(SHARE_MEDIA share_media)
    {
        val$authListener.onStart(share_media);
    }

    Listener()
    {
        this$0 = final_umqqssohandler;
        val$authListener = com.umeng.socialize.controller.listener.s.UMAuthListener.this;
        super();
    }
}
