// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.d;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.d.a.b;
import net.youmi.android.a.b.g.b.c;

public abstract class a extends net.youmi.android.a.b.g.a
{

    public a(Context context)
    {
        super(context);
    }

    public File a(String s, String s1)
    {
        try
        {
            s = a(new net.youmi.android.a.b.g.e.a(s, s1), null);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    protected final net.youmi.android.a.b.g.b.b a()
    {
        return c.a();
    }

    protected final net.youmi.android.a.b.g.c.a a(net.youmi.android.a.b.g.e.a a1)
    {
        return b.c(b(), 1);
    }
}
