// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            PhoneStatusWatcher

class aH extends PhoneStateListener
{

    final PhoneStatusWatcher aH;

    public void onCallStateChanged(int i, String s)
    {
        for (Iterator iterator = PhoneStatusWatcher.a(aH).iterator(); iterator.hasNext(); ((oneCallListener)iterator.next()).onPhoneCall(i)) { }
        super.onCallStateChanged(i, s);
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            PhoneStatusWatcher.a(false);
            return;

        case 1: // '\001'
        case 2: // '\002'
            PhoneStatusWatcher.a(true);
            break;
        }
    }

    oneCallListener(PhoneStatusWatcher phonestatuswatcher)
    {
        aH = phonestatuswatcher;
        super();
    }
}
