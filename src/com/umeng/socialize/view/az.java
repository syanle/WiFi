// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view:
//            ay

class az
    implements Runnable
{

    final ay a;
    private final View b;
    private final View c;

    az(ay ay1, View view, View view1)
    {
        a = ay1;
        b = view;
        c = view1;
        super();
    }

    public void run()
    {
        b.setVisibility(8);
        if (c.getVisibility() == 0)
        {
            c.setVisibility(8);
        }
        a.requestLayout();
    }
}
