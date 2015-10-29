// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.c;

import android.content.Context;
import net.youmi.android.a.a.j.l;

// Referenced classes of package net.youmi.android.a.a.j.c:
//            c

public class a
{

    private Context a;

    public a(Context context)
    {
        a = context.getApplicationContext();
    }

    public void a(String s, int i)
    {
        a(s, i, 0);
    }

    public void a(String s, int i, int j)
    {
        if (s == null)
        {
            return;
        }
        int k = i;
        if (i <= 0)
        {
            k = 3;
        }
        try
        {
            l.a(a, c.a(a, s, j), k).a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }
}
