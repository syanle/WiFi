// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;


// Referenced classes of package net.youmi.android.spot:
//            k, SpotManager, SpotDialogListener

class m
    implements Runnable
{

    final boolean a;
    final SpotDialogListener b;
    final boolean c;
    final SpotManager d;

    m(SpotManager spotmanager, boolean flag, SpotDialogListener spotdialoglistener, boolean flag1)
    {
        d = spotmanager;
        a = flag;
        b = spotdialoglistener;
        c = flag1;
        super();
    }

    public void run()
    {
        (new k(d, SpotManager.a(d), a, b, c)).execute(new Void[0]);
    }
}
