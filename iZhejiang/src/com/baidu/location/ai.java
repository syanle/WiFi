// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;

// Referenced classes of package com.baidu.location:
//            ax, n

class ai
    implements ax, n
{

    private static ai hb = null;
    private boolean ha;
    private Handler hc;
    private boolean hd;

    private ai()
    {
        hc = null;
        ha = false;
        hd = false;
        hc = new Handler();
    }

    public static ai bA()
    {
        if (hb == null)
        {
            hb = new ai();
        }
        return hb;
    }

    private void bC()
    {
    }

    static boolean _mthdo(ai ai1)
    {
        return ai1.ha;
    }

    static void _mthfor(ai ai1)
    {
        ai1.bC();
    }

    static Handler _mthif(ai ai1)
    {
        return ai1.hc;
    }

    static boolean _mthif(ai ai1, boolean flag)
    {
        ai1.hd = flag;
        return flag;
    }

    public void bB()
    {
        ha = false;
    }

    public void bz()
    {
        hc.post(new _cls1());
    }


    private class _cls1
        implements Runnable
    {

        final ai a;

        public void run()
        {
            ai._mthfor(a);
        }

        _cls1()
        {
            a = ai.this;
            super();
        }
    }

}
