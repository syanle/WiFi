// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.view.wigets.SlideBar;

// Referenced classes of package com.umeng.socialize.view:
//            ab

class ag
    implements com.umeng.socialize.view.wigets.SearchBox.SearchResultListener
{

    final ab a;

    ag(ab ab1)
    {
        a = ab1;
        super();
    }

    public void a(boolean flag)
    {
        if (ab.b)
        {
            SlideBar slidebar = ab.d(a);
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
}
