// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.os.Bundle;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            ae

class af
    implements com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener
{

    final ae a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b;

    af(ae ae, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        a = ae;
        b = umauthlistener;
        super();
    }

    public void onCancel(SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.onCancel(share_media);
        }
    }

    public void onComplete(Bundle bundle, SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.onComplete(bundle, share_media);
        }
    }

    public void onError(SocializeException socializeexception, SHARE_MEDIA share_media)
    {
        if (b != null)
        {
            b.onError(socializeexception, share_media);
        }
    }

    public void onStart(SHARE_MEDIA share_media)
    {
    }
}
