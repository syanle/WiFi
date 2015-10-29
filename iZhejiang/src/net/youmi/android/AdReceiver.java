// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import net.youmi.android.a.a.g.c.i;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android:
//            AdService

public class AdReceiver extends BroadcastReceiver
{

    private static int a = 0;
    private int b;

    public AdReceiver()
    {
        int j = a + 1;
        a = j;
        b = j;
    }

    public final void onReceive(Context context, Intent intent)
    {
        Object obj = intent.getAction();
        if (!"android.intent.action.PACKAGE_ADDED".equals(obj)) goto _L2; else goto _L1
_L1:
        intent = e.b(intent.getData().getSchemeSpecificPart());
        if (intent != null) goto _L4; else goto _L3
_L3:
        return;
_L4:
        try
        {
            intent = new i(intent);
            obj = new Intent(context, net/youmi/android/AdService);
            intent.a(((Intent) (obj)));
            context.startService(((Intent) (obj)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
_L2:
        boolean flag;
        try
        {
            flag = "android.intent.action.PACKAGE_REMOVED".equals(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (flag)
        {
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

}
