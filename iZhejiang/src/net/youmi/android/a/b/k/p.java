// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.k;

import java.io.File;
import java.util.concurrent.Executor;
import net.youmi.android.a.b.h.c;
import net.youmi.android.a.b.k.b.a;

public class p
{

    public static final void a(File file, String s, net.youmi.android.a.b.k.a.a a1)
    {
        c.a().execute(new a(file, s, a1));
    }
}
