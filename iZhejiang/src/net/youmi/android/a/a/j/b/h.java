// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;


// Referenced classes of package net.youmi.android.a.a.j.b:
//            f

class h
    implements Runnable
{

    final f a;

    h(f f1)
    {
        a = f1;
        super();
    }

    public void run()
    {
        a.requestLayout();
    }
}
