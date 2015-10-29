// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.Context;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            h

final class d
    implements Runnable
{

    final Context a;
    final String b;

    d(Context context, String s)
    {
        a = context;
        b = s;
        super();
    }

    public void run()
    {
        (new h(a, b, 2)).a();
    }
}
