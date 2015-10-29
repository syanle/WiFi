// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.exception.SocializeException;

class z
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final q.a a;

    z(q.a a1)
    {
        a = a1;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        bundle = bundle.getString("uid");
        if (!TextUtils.isEmpty(bundle))
        {
            a.a(bundle);
            a.b.setImageResource(a.g.mIcon);
            a.c.setVisibility(0);
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
    }

    public void onStart(SHARE_MEDIA share_media)
    {
    }
}
