// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.content.Context;
import android.content.IntentFilter;
import net.youmi.android.AdReceiver;
import net.youmi.android.a.b.k.c;

public class h
{

    private static AdReceiver a;

    public static void a(Context context)
    {
        net/youmi/android/a/a/g/c/h;
        JVM INSTR monitorenter ;
        if (context != null) goto _L2; else goto _L1
_L1:
        net/youmi/android/a/a/g/c/h;
        JVM INSTR monitorexit ;
        return;
_L2:
        context = context.getApplicationContext();
        if (context != null)
        {
            try
            {
                if (!c.c(context, net/youmi/android/AdReceiver) && a == null)
                {
                    AdReceiver adreceiver = new AdReceiver();
                    IntentFilter intentfilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                    intentfilter.addDataScheme("package");
                    context.registerReceiver(adreceiver, intentfilter);
                    a = adreceiver;
                }
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            finally
            {
                net/youmi/android/a/a/g/c/h;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        throw context;
    }
}
