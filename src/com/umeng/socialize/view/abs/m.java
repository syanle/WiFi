// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

// Referenced classes of package com.umeng.socialize.view.abs:
//            g

class m
    implements android.view.View.OnTouchListener
{

    final g a;

    m(g g1)
    {
        a = g1;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            g.f(a).setPressed(true);
            return false;

        case 1: // '\001'
            g.f(a).setPressed(false);
            break;
        }
        return false;
    }
}
