// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import java.io.File;

// Referenced classes of package com.baidu.location:
//            s, o, c, ad

class c8 extends s
{

    final o c6;
    int c7;
    boolean c8;
    String c9;

    void T()
    {
        cW = c9;
        cR = (new StringBuilder()).append(c._mthdo()).append("?&qt=state&trtm=").append(System.currentTimeMillis()).toString();
        c0 = 2;
    }

    public boolean aa()
    {
        if (c8)
        {
            return true;
        }
        c9 = ad.cM().cG();
        if (c9 == null)
        {
            return false;
        } else
        {
            c8 = true;
            R();
            return true;
        }
    }

    void _mthdo(boolean flag)
    {
        if (flag)
        {
            try
            {
                (new File(c9)).delete();
                c7 = 0;
            }
            catch (Exception exception) { }
        } else
        {
            c7 = c7 + 2;
        }
        c9 = null;
        c8 = false;
        o._mthdo(c6).sendEmptyMessageDelayed(1, 1500L);
    }

    (o o1)
    {
        c6 = o1;
        super();
        c9 = null;
        c7 = 0;
        c8 = false;
    }
}
