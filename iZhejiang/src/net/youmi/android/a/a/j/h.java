// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package net.youmi.android.a.a.j:
//            d

class h
    implements android.view.View.OnTouchListener
{

    final d a;

    h(d d1)
    {
        a = d1;
        super();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        d.c(a).onTouchEvent(motionevent);
        return true;
    }
}
