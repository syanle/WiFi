// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import net.youmi.android.a.b.a.a;
import net.youmi.android.a.b.l.e;

public class l
{

    private e a;
    private Animation b;

    private l(Context context, View view, int i, Animation animation)
    {
        a = new e(context, view, i);
        b = animation;
    }

    public static l a(Context context, View view, int i)
    {
        return new l(context, view, 17, net.youmi.android.a.b.a.a.a(context, 420, i, 230));
    }

    public void a()
    {
        try
        {
            a.a(b);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
