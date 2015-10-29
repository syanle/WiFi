// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.view.wigets.SlideBar;

// Referenced classes of package com.umeng.socialize.view:
//            bw

class bz
    implements com.umeng.socialize.view.wigets.SearchBox.SearchResultListener
{

    final bw a;

    bz(bw bw1)
    {
        a = bw1;
        super();
    }

    public void a(boolean flag)
    {
        SlideBar slidebar = bw.b(a);
        byte byte0;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        slidebar.setVisibility(byte0);
    }
}
