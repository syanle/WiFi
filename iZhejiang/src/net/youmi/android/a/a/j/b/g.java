// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;

import android.view.ViewTreeObserver;

// Referenced classes of package net.youmi.android.a.a.j.b:
//            f

class g
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public void onGlobalLayout()
    {
        f.a(a);
        a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
}
