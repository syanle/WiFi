// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.l;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;

// Referenced classes of package net.youmi.android.a.b.l:
//            a

class b extends StateListDrawable
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
        a1 = new ColorDrawable(0);
        ColorDrawable colordrawable = new ColorDrawable(Color.parseColor("#661E90FF"));
        addState(net.youmi.android.a.b.l.a.d(), colordrawable);
        addState(net.youmi.android.a.b.l.a.e(), a1);
        addState(net.youmi.android.a.b.l.a.f(), a1);
    }
}
