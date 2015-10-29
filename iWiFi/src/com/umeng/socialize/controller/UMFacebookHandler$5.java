// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import com.facebook.Response;

// Referenced classes of package com.umeng.socialize.controller:
//            UMFacebookHandler

class this._cls0
    implements com.umeng.socialize.controller.net.PhotoListener
{

    final UMFacebookHandler this$0;

    public void onComplete(Response response)
    {
        UMFacebookHandler.access$6(UMFacebookHandler.this, response);
    }

    PostPhotoListener()
    {
        this$0 = UMFacebookHandler.this;
        super();
    }
}
