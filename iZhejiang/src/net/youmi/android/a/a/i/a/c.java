// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;


// Referenced classes of package net.youmi.android.a.a.i.a:
//            b, f

class c
    implements Runnable
{

    final String a;
    final b b;

    c(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public void run()
    {
        switch (net.youmi.android.a.a.i.a.b.b(b).c)
        {
        default:
            return;

        case 1: // '\001'
            b.loadUrl(a);
            return;

        case 2: // '\002'
            b.postUrl(a, net.youmi.android.a.a.i.a.b.b(b).b);
            return;

        case 3: // '\003'
            b.reload();
            break;
        }
    }
}
