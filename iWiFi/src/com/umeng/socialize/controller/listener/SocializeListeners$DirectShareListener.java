// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.listener;

import com.umeng.socialize.bean.SHARE_MEDIA;

// Referenced classes of package com.umeng.socialize.controller.listener:
//            SocializeListeners

public static interface 
{

    public abstract void onAuthenticated(SHARE_MEDIA share_media);

    public abstract void onOauthComplete(String s, SHARE_MEDIA share_media);
}
