// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import net.youmi.android.a.a.g.g.d;

// Referenced classes of package net.youmi.android:
//            AdBrowser

class b
    implements Runnable
{

    final AdBrowser a;

    b(AdBrowser adbrowser)
    {
        a = adbrowser;
        super();
    }

    public void run()
    {
        try
        {
            d.a(a).b();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
