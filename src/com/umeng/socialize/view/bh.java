// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;


// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bh
    implements Runnable
{

    final ShareActivity a;

    bh(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void run()
    {
        a.finish();
    }
}
