// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.l;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

// Referenced classes of package net.youmi.android.a.b.l:
//            a

class c extends StateListDrawable
{

    final a a;

    c(a a1, Drawable drawable, Drawable drawable1)
    {
        a = a1;
        super();
        addState(net.youmi.android.a.b.l.a.a(), drawable);
        addState(net.youmi.android.a.b.l.a.b(), drawable);
        addState(net.youmi.android.a.b.l.a.c(), drawable1);
    }
}
