// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.MotionEvent;
import android.view.View;
import com.umeng.socialize.view.wigets.SwitchImageView;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa

class af
    implements android.view.View.OnTouchListener
{

    final aa a;
    private final SwitchImageView b;

    af(aa aa, SwitchImageView switchimageview)
    {
        a = aa;
        b = switchimageview;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return b.a;
    }
}
