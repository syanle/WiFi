// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.c;

import android.content.Context;
import android.widget.Toast;

// Referenced classes of package net.youmi.android.a.a.j.c:
//            c

public class b
{

    private Context a;
    private Toast b;

    public b(Context context)
    {
        a = context.getApplicationContext();
        b = new Toast(a);
    }

    public void a()
    {
        if (b != null)
        {
            b.cancel();
        }
    }

    public void a(String s, int i)
    {
        a(s, i, 0, 17);
    }

    public void a(String s, int i, int j)
    {
        a(s, i, j, 17);
    }

    public void a(String s, int i, int j, int k)
    {
        if (s == null)
        {
            return;
        }
        if (i > 0);
        try
        {
            b.setGravity(k, 0, 0);
            b.setDuration(1);
            b.setView(c.a(a, s, j));
            b.show();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public void b(String s, int i)
    {
        a(s, 1, i, 48);
    }
}
