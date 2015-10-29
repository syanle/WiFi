// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            LocationClient, LocationClientOption

private class <init> extends Handler
{

    final LocationClient a;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR lookupswitch 19: default 168
    //                   1: 228
    //                   2: 236
    //                   3: 174
    //                   4: 252
    //                   5: 192
    //                   6: 201
    //                   7: 173
    //                   8: 183
    //                   9: 210
    //                   10: 219
    //                   11: 244
    //                   12: 261
    //                   21: 315
    //                   26: 326
    //                   27: 337
    //                   54: 269
    //                   55: 292
    //                   204: 355
    //                   205: 346;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20
_L1:
        super.handleMessage(message);
_L8:
        return;
_L4:
        LocationClient._mthfor(a, message);
        return;
_L9:
        LocationClient._mthdo(a, message);
        return;
_L6:
        LocationClient._mthif(a, message);
        return;
_L7:
        LocationClient._mthcase(a, message);
        return;
_L10:
        LocationClient._mthbyte(a, message);
        return;
_L11:
        LocationClient._mthnew(a, message);
        return;
_L2:
        LocationClient._mthdo(a);
        return;
_L3:
        LocationClient._mthtry(a);
        return;
_L12:
        LocationClient._mthcase(a);
        return;
_L5:
        LocationClient._mthint(a, message);
        return;
_L13:
        LocationClient._mthint(a);
        return;
_L17:
        if (!LocationClient._mthelse(a)._fldgoto) goto _L8; else goto _L21
_L21:
        LocationClient._mthfor(a, true);
        return;
_L18:
        if (!LocationClient._mthelse(a)._fldgoto) goto _L8; else goto _L22
_L22:
        LocationClient._mthfor(a, false);
        return;
_L14:
        LocationClient._mthif(a, message, 21);
        return;
_L15:
        LocationClient._mthif(a, message, 26);
        return;
_L16:
        LocationClient._mthtry(a, message);
        return;
_L20:
        LocationClient._mthdo(a, true);
        return;
_L19:
        LocationClient._mthdo(a, false);
        return;
    }

    private ion(LocationClient locationclient)
    {
        a = locationclient;
        super();
    }

    a(LocationClient locationclient, a a1)
    {
        this(locationclient);
    }
}
