// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            PhoneUtil20Impl

class aP extends PhoneStateListener
{

    final PhoneUtil20Impl aP;

    public void onSignalStrengthsChanged(SignalStrength signalstrength)
    {
        super.onSignalStrengthsChanged(signalstrength);
        if (PhoneUtil20Impl.a(aP) == 2)
        {
            PhoneUtil20Impl.d(signalstrength.getCdmaDbm());
        }
        if (PhoneUtil20Impl.a(aP) == 1)
        {
            PhoneUtil20Impl.d(signalstrength.getGsmSignalStrength() * 2 - 113);
        }
        if (PhoneUtil20Impl.b(aP) != null)
        {
            PhoneUtil20Impl.b(aP).listen(PhoneUtil20Impl.c(aP), 0);
        }
    }

    (PhoneUtil20Impl phoneutil20impl)
    {
        aP = phoneutil20impl;
        super();
    }
}
