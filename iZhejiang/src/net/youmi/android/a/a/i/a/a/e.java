// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.a;

import android.app.Activity;
import net.youmi.android.a.a.e.g.g;

// Referenced classes of package net.youmi.android.a.a.i.a.a:
//            d

public class e
    implements Runnable
{

    private Activity a;
    private g b;

    public e(Activity activity, g g)
    {
        a = activity;
        b = g;
    }

    public void run()
    {
        try
        {
            d.b(a, b).show();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
