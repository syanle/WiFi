// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.baidu.location:
//            aw, ai

public class tReceiver extends BroadcastReceiver
{

    final aw a;

    public void onReceive(Context context, Intent intent)
    {
        context = intent.getAction();
        if (!context.equals("android.intent.action.BATTERY_CHANGED")) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        aw.a(a, false);
        i = intent.getIntExtra("status", 0);
        j = intent.getIntExtra("plugged", 0);
        i;
        JVM INSTR tableswitch 2 4: default 185
    //                   2 97
    //                   3 121
    //                   4 121;
           goto _L3 _L4 _L5 _L5
_L3:
        try
        {
            aw.a(a, null);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            aw.a(a, null);
            return;
        }
          goto _L6
_L8:
        if (aw.a(a))
        {
            ai.bA().bz();
            return;
        }
          goto _L7
_L4:
        aw.a(a, "4");
          goto _L6
_L5:
        aw.a(a, "3");
          goto _L6
_L9:
        aw.a(a, "6");
        aw.a(a, true);
          goto _L8
_L10:
        aw.a(a, "5");
        aw.a(a, true);
          goto _L8
_L7:
        ai.bA().bB();
        return;
_L6:
        j;
        JVM INSTR tableswitch 1 2: default 212
    //                   1 134
    //                   2 156;
           goto _L8 _L9 _L10
_L2:
    }

    public tReceiver(aw aw1)
    {
        a = aw1;
        super();
    }
}
