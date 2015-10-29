// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.a;

import java.util.concurrent.Executor;
import net.youmi.android.a.b.h.c;

public class b
{

    public static void a(Runnable runnable)
    {
        try
        {
            c.b().execute(runnable);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Runnable runnable)
        {
            return;
        }
    }
}
