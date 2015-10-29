// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import java.util.ArrayList;

// Referenced classes of package com.autonavi.aps.api:
//            APSLENOVODUALCARD, GsmCellBean, CdmaCellBean

final class i extends PhoneStateListener
{

    i()
    {
    }

    public final void onCellLocationChanged(CellLocation celllocation)
    {
        APSLENOVODUALCARD.a(1);
        super.onCellLocationChanged(celllocation);
    }

    public final void onServiceStateChanged(ServiceState servicestate)
    {
        super.onServiceStateChanged(servicestate);
    }

    public final void onSignalStrengthsChanged(SignalStrength signalstrength)
    {
        APSLENOVODUALCARD.b(signalstrength.getGsmSignalStrength() * 2 - 113);
        if (APSLENOVODUALCARD.b() != 1 || APSLENOVODUALCARD.c().size() <= 0) goto _L2; else goto _L1
_L1:
        ((GsmCellBean)APSLENOVODUALCARD.c().get(0)).setSignal(APSLENOVODUALCARD.d());
_L4:
        super.onSignalStrengthsChanged(signalstrength);
        return;
_L2:
        if (APSLENOVODUALCARD.b() == 2 && APSLENOVODUALCARD.e().size() > 0)
        {
            ((CdmaCellBean)APSLENOVODUALCARD.e().get(0)).setSignal(APSLENOVODUALCARD.d());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
