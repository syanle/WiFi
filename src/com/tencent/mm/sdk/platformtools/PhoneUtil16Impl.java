// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class PhoneUtil16Impl
{

    private static int aJ = 10000;
    private static int aK = 10000;
    private TelephonyManager aL;
    private PhoneStateListener aM;

    PhoneUtil16Impl()
    {
        aM = new _cls1();
    }

    static TelephonyManager a(PhoneUtil16Impl phoneutil16impl)
    {
        return phoneutil16impl.aL;
    }

    static PhoneStateListener b(PhoneUtil16Impl phoneutil16impl)
    {
        return phoneutil16impl.aM;
    }

    static int c(int i)
    {
        aK = i;
        return i;
    }

    public List getCellInfoList(Context context)
    {
        Object obj;
        LinkedList linkedlist;
        linkedlist = new LinkedList();
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        Object obj1 = telephonymanager.getNetworkOperator();
        if (obj1 == null || ((String) (obj1)).equals(""))
        {
            return linkedlist;
        }
        context = "460";
        String s = "";
        int i;
        int j;
        try
        {
            obj = ((String) (obj1)).substring(0, 3);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            continue; /* Loop/switch isn't completed */
        }
        context = ((Context) (obj));
        obj1 = ((String) (obj1)).substring(3);
        s = ((String) (obj1));
        context = ((Context) (obj));
_L6:
        obj = (GsmCellLocation)telephonymanager.getCellLocation();
        if (obj == null) goto _L2; else goto _L1
_L1:
        i = ((GsmCellLocation) (obj)).getCid();
        j = ((GsmCellLocation) (obj)).getLac();
        if (j >= 65535 || j == -1 || i == -1) goto _L2; else goto _L3
_L3:
        if (aK != aJ)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        obj = "";
_L4:
        try
        {
            linkedlist.add(new PhoneUtil.CellInfo(context, s, String.valueOf(j), String.valueOf(i), ((String) (obj)), "gsm", "", "", ""));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
_L2:
        obj = telephonymanager.getNeighboringCellInfo();
        if (obj != null && ((List) (obj)).size() > 0)
        {
            obj = ((List) (obj)).iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                obj1 = (NeighboringCellInfo)((Iterator) (obj)).next();
                if (((NeighboringCellInfo) (obj1)).getCid() != -1)
                {
                    linkedlist.add(new PhoneUtil.CellInfo(context, s, "", (new StringBuilder()).append(((NeighboringCellInfo) (obj1)).getCid()).toString(), "", "gsm", "", "", ""));
                }
            } while (true);
        }
        break MISSING_BLOCK_LABEL_307;
        obj = (new StringBuilder()).append(aK).toString();
          goto _L4
        return linkedlist;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void getSignalStrength(Context context)
    {
        aL = (TelephonyManager)context.getSystemService("phone");
        aL.listen(aM, 256);
    }


    private class _cls1 extends PhoneStateListener
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

        _cls1()
        {
            aN = PhoneUtil16Impl.this;
            super();
        }
    }

}
