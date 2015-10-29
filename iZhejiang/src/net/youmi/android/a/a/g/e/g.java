// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import net.youmi.android.a.a.g.e.a.b;
import net.youmi.android.a.b.k.j;

// Referenced classes of package net.youmi.android.a.a.g.e:
//            c

public class g extends BroadcastReceiver
{

    private static g a;
    private IntentFilter b;

    private g()
    {
        b = new IntentFilter();
        b.addAction("android.intent.action.PACKAGE_REMOVED");
        b.addAction("android.intent.action.PACKAGE_ADDED");
        b.addAction("android.intent.action.PACKAGE_REPLACED");
        b.addDataScheme("package");
    }

    public static void a(Context context)
    {
        net/youmi/android/a/a/g/e/g;
        JVM INSTR monitorenter ;
        g g1 = a;
        if (g1 == null)
        {
            try
            {
                context = context.getApplicationContext();
                a = new g();
                a.b(context);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
            finally
            {
                net/youmi/android/a/a/g/e/g;
            }
        }
        net/youmi/android/a/a/g/e/g;
        JVM INSTR monitorexit ;
        return;
        throw context;
    }

    private void b(Context context)
    {
        context.getApplicationContext().registerReceiver(this, b);
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s == null)
        {
            return;
        }
        intent = intent.getData().getSchemeSpecificPart();
        if (intent != null)
        {
            try
            {
                intent = intent.trim();
                if (intent.length() > 0 && s.trim().equals("android.intent.action.PACKAGE_REMOVED") && !j.a(context, intent))
                {
                    c.a(context, intent);
                    net.youmi.android.a.a.g.e.a.b.a(context).a(intent);
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        return;
    }
}
