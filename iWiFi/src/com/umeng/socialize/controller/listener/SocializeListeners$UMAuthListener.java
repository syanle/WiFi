// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.listener;

import android.os.Bundle;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.controller.listener:
//            SocializeListeners

public static interface 
    extends com.umeng.socialize.bean.UMAuthListener
{

    public abstract void onCancel(SHARE_MEDIA share_media);

    public abstract void onComplete(Bundle bundle, SHARE_MEDIA share_media);

    public abstract void onError(SocializeException socializeexception, SHARE_MEDIA share_media);

    public abstract void onStart(SHARE_MEDIA share_media);
}
