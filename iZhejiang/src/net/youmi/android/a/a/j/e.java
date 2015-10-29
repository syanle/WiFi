// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.graphics.drawable.ShapeDrawable;
import android.view.ViewTreeObserver;
import android.widget.TextView;

// Referenced classes of package net.youmi.android.a.a.j:
//            d, f

class e
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener
{

    final int a;
    final d b;

    e(d d1, int i)
    {
        b = d1;
        a = i;
        super();
    }

    public void onGlobalLayout()
    {
        d.a(b).getViewTreeObserver().removeGlobalOnLayoutListener(this);
        ShapeDrawable shapedrawable = new ShapeDrawable(new f(this));
        d.a(b).setBackgroundDrawable(shapedrawable);
    }
}
