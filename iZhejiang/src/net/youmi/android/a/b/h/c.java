// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.h;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

// Referenced classes of package net.youmi.android.a.b.h:
//            d

public class c
{

    private static final Executor a = Executors.newCachedThreadPool(new d(4, null));

    public static Executor a()
    {
        return a;
    }

    public static Executor b()
    {
        return a;
    }

}
