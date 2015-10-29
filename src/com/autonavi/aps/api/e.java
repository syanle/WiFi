// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import java.util.ArrayList;

// Referenced classes of package com.autonavi.aps.api:
//            APS, GsmCellBean, CdmaCellBean

final class e extends PhoneStateListener
{

    e()
    {
    }

    public final void onCellLocationChanged(CellLocation celllocation)
    {
        if (APS.c() != null)
        {
            APS.a(celllocation, APS.c().getNeighboringCellInfo());
        }
        if (celllocation != null)
        {
            super.onCellLocationChanged(celllocation);
        }
    }

    public final void onServiceStateChanged(ServiceState servicestate)
    {
        super.onServiceStateChanged(servicestate);
    }

    public final void onSignalStrengthsChanged(SignalStrength signalstrength)
    {
        APS.a(signalstrength.getGsmSignalStrength() * 2 - 113);
        if (APS.d() != 1 || APS.e().size() <= 0) goto _L2; else goto _L1
_L1:
        ((GsmCellBean)APS.e().get(0)).setSignal(APS.f());
_L4:
        super.onSignalStrengthsChanged(signalstrength);
        return;
_L2:
        if (APS.d() == 2 && APS.g().size() > 0)
        {
            ((CdmaCellBean)APS.g().get(0)).setSignal(APS.f());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
