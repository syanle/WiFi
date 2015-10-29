// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.net;

import com.facebook.Response;

// Referenced classes of package com.umeng.socialize.controller.net:
//            PostPhotoTask

class this._cls0
    implements com.facebook.
{

    final PostPhotoTask this$0;

    public void onCompleted(Response response)
    {
        if (PostPhotoTask.access$2(PostPhotoTask.this) != null)
        {
            PostPhotoTask.access$2(PostPhotoTask.this).onComplete(response);
        }
    }

    PostPhotoListener()
    {
        this$0 = PostPhotoTask.this;
        super();
    }
}
