// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;


// Referenced classes of package net.youmi.android.spot:
//            SpotManager

class n
    implements Runnable
{

    final SpotManager a;

    n(SpotManager spotmanager)
    {
        a = spotmanager;
        super();
    }

    public void run()
    {
        SpotManager.b(a);
    }
}
