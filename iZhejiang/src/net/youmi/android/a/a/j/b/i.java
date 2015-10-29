// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;


// Referenced classes of package net.youmi.android.a.a.j.b:
//            f

class i
    implements Runnable
{

    final f a;

    i(f f1)
    {
        a = f1;
        super();
    }

    public void run()
    {
        if (f.b(a) != null)
        {
            f.a(a, -f.c(a));
        }
        a.d();
    }
}
