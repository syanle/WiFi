// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import java.util.HashMap;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            ThemeShareCallback, OnekeyShare

class this._cls0
    implements ThemeShareCallback
{

    final OnekeyShare this$0;

    public void doShare(HashMap hashmap)
    {
        share(hashmap);
    }

    back()
    {
        this$0 = OnekeyShare.this;
        super();
    }
}
