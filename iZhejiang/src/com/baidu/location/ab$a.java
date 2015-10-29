// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ab, ah, ay, u, 
//            ae, ak, a0, f, 
//            au

public class > extends Handler
{

    final ab a;

    public void handleMessage(Message message)
    {
        if (!ab.gv) goto _L2; else goto _L1
_L1:
        message.what;
        JVM INSTR lookupswitch 15: default 140
    //                   11: 175
    //                   12: 186
    //                   15: 197
    //                   22: 219
    //                   25: 239
    //                   28: 229
    //                   41: 249
    //                   57: 208
    //                   110: 258
    //                   111: 267
    //                   201: 276
    //                   202: 285
    //                   203: 294
    //                   206: 304
    //                   207: 317;
           goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17
_L2:
        if (message.what == 0)
        {
            ab._mthdo(a);
        }
        if (message.what == 1)
        {
            ab._mthif(a);
        }
        super.handleMessage(message);
        return;
_L3:
        ab._mthfor(a, message);
        continue; /* Loop/switch isn't completed */
_L4:
        ab._mthif(a, message);
        continue; /* Loop/switch isn't completed */
_L5:
        ab._mthdo(a, message);
        continue; /* Loop/switch isn't completed */
_L10:
        ab._mthint(a, message);
        continue; /* Loop/switch isn't completed */
_L6:
        ah.ay()._mthcase(message);
        continue; /* Loop/switch isn't completed */
_L8:
        ay.cd().j(message);
        continue; /* Loop/switch isn't completed */
_L7:
        u.aG()._mthlong(message);
        continue; /* Loop/switch isn't completed */
_L9:
        ah.ay().aw();
        continue; /* Loop/switch isn't completed */
_L11:
        ae.bp().bt();
        continue; /* Loop/switch isn't completed */
_L12:
        ae.bp().br();
        continue; /* Loop/switch isn't completed */
_L13:
        ak.a()._mthdo();
        continue; /* Loop/switch isn't completed */
_L14:
        ak.a()._mthif();
        continue; /* Loop/switch isn't completed */
_L15:
        ak.a().a(message);
        continue; /* Loop/switch isn't completed */
_L16:
        a0.cq()._mthif(f.getServiceContext(), message);
        continue; /* Loop/switch isn't completed */
_L17:
        au._mthint(f.getServiceContext());
        if (true) goto _L2; else goto _L18
_L18:
    }

    public (ab ab1, Looper looper)
    {
        a = ab1;
        super(looper);
    }
}
