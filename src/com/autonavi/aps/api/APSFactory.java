// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.content.Context;

// Referenced classes of package com.autonavi.aps.api:
//            APS, APSLENOVODUALCARD, IAPS

public class APSFactory
{

    private static IAPS a = null;

    public APSFactory()
    {
    }

    public static IAPS getInstance(Context context)
    {
        return getInstance(context, null);
    }

    public static IAPS getInstance(Context context, String s)
    {
        if (s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        a = APS.getInstance(context);
_L4:
        return a;
_L2:
        if (s.equalsIgnoreCase("lenovodualcard"))
        {
            a = APSLENOVODUALCARD.getInstance(context);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
