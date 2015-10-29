// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ax, n, y, c, 
//            l, ab

class r
    implements ax, n
{
    public class a extends Handler
    {

        final r a;

        public void handleMessage(Message message)
        {
            if (!ab.gv)
            {
                return;
            }
            message.what;
            JVM INSTR tableswitch 92 92: default 28
        //                       92 34;
               goto _L1 _L2
_L1:
            super.handleMessage(message);
            return;
_L2:
            r._mthif(a);
            if (true) goto _L1; else goto _L3
_L3:
        }

        public a()
        {
            a = r.this;
            super();
        }
    }


    private static r cP = null;
    private l cO;
    private Handler cQ;

    private r()
    {
        cO = null;
        cQ = null;
        cQ = new a();
    }

    public static r H()
    {
        if (cP == null)
        {
            cP = new r();
        }
        return cP;
    }

    private void J()
    {
label0:
        {
            boolean flag;
            try
            {
                if (!y.gb)
                {
                    break label0;
                }
                flag = c.a7;
            }
            catch (Exception exception)
            {
                return;
            }
            if (!flag);
        }
    }

    static void _mthif(r r1)
    {
        r1.J();
    }

    public void G()
    {
        if (cO != null)
        {
            cO.u();
        }
        cO = null;
    }

    public Handler I()
    {
        return cQ;
    }

    public void K()
    {
    }

}
