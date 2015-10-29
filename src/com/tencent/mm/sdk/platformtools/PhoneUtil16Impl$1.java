// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            PhoneUtil16Impl

class aN extends PhoneStateListener
{

    final PhoneUtil16Impl aN;

    public void onSignalStrengthChanged(int i)
    {
        super.onSignalStrengthChanged(i);
        PhoneUtil16Impl.c(i * 2 - 113);
        if (PhoneUtil16Impl.a(aN) != null)
        {
            PhoneUtil16Impl.a(aN).listen(PhoneUtil16Impl.b(aN), 0);
        }
    }

    (PhoneUtil16Impl phoneutil16impl)
    {
        aN = phoneutil16impl;
        super();
    }
}
