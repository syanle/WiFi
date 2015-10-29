// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.f;

import android.content.Context;
import android.widget.Toast;

// Referenced classes of package net.youmi.android.a.a.e.c.f:
//            a

class b
    implements Runnable
{

    final Context a;
    final String b;
    final int c;
    final a d;

    b(a a1, Context context, String s, int i)
    {
        d = a1;
        a = context;
        b = s;
        c = i;
        super();
    }

    public void run()
    {
        try
        {
            Toast.makeText(a, b, c).show();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
