// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.widget.Toast;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            e

class f
    implements Runnable
{

    final String a;
    final e b;

    f(e e1, String s)
    {
        b = e1;
        a = s;
        super();
    }

    public void run()
    {
        Toast.makeText(e.a(b), a, 1).show();
    }
}
