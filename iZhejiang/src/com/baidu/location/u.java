// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ag, ax, n, q, 
//            k, c, ay, BDLocation

class u extends ag
    implements ax, n
{

    private static u eD = null;
    static final int eE = 3000;
    private long eF;
    private BDLocation eG;
    public ag.a eH;

    private u()
    {
        eG = null;
        eF = 0L;
        eH = null;
        eH = new ag.a(this);
    }

    private void aF()
    {
        q.x().E();
    }

    public static u aG()
    {
        if (eD == null)
        {
            eD = new u();
        }
        return eD;
    }

    private void _mthvoid(Message message)
    {
        if (System.currentTimeMillis() - eF < 3000L && eG != null)
        {
            k.p()._mthif(eG, 26);
            return;
        } else
        {
            message = e(k.p()._mthif(message));
            eH.d(message);
            eF = System.currentTimeMillis();
            return;
        }
    }

    void at()
    {
        c._mthif("baidu_location_service", "on network exception");
        eG = null;
        k.p()._mthif(ay.cd()._mthcase(false), 26);
        aF();
    }

    void _mthbyte(Message message)
    {
        c._mthif("baidu_location_service", "on network success");
        message = (BDLocation)message.obj;
        k.p()._mthif(message, 26);
        if (c._mthif(message))
        {
            eG = message;
        } else
        {
            eG = null;
        }
        aF();
    }

    public void _mthlong(Message message)
    {
        _mthvoid(message);
    }

}
