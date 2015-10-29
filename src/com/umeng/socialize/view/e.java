// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.media.UMediaObject;

// Referenced classes of package com.umeng.socialize.view:
//            CommentActivity

class e
    implements com.umeng.socialize.media.UMediaObject.FetchMediaDataListener
{

    final CommentActivity a;
    private final UMediaObject b;

    e(CommentActivity commentactivity, UMediaObject umediaobject)
    {
        a = commentactivity;
        b = umediaobject;
        super();
    }

    public void onComplete(byte abyte0[])
    {
        if (abyte0 != null && !b.isUrlMedia())
        {
            a.setImageBytes(abyte0);
        }
    }

    public void onStart()
    {
    }
}
