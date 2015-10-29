// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.view.ViewTreeObserver;

// Referenced classes of package net.youmi.android.c.a:
//            p

class r
    implements android.view.ViewTreeObserver.OnPreDrawListener
{

    final p a;

    r(p p1)
    {
        a = p1;
        super();
    }

    public boolean onPreDraw()
    {
        a.getViewTreeObserver().removeOnPreDrawListener(p.a(a));
        a.setXFraction(p.c(a));
        return true;
    }
}
