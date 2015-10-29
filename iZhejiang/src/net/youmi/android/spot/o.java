// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;


// Referenced classes of package net.youmi.android.spot:
//            SpotManager

class o extends Thread
{

    final SpotManager a;

    o(SpotManager spotmanager)
    {
        a = spotmanager;
        super();
    }

    public void run()
    {
        a.a(SpotManager.a(a), a.e);
    }
}
