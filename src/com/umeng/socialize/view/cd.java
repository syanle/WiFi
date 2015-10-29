// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.view.controller.ShareAtController;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class cd
    implements Runnable
{

    final bw a;
    private final UMFriend b;

    cd(bw bw1, UMFriend umfriend)
    {
        a = bw1;
        b = umfriend;
        super();
    }

    public void run()
    {
        bw.i(a).a(b);
    }
}
