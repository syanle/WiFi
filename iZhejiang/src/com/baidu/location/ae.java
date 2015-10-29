// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;

// Referenced classes of package com.baidu.location:
//            n, ax

class ae
    implements n, ax
{

    private static ae g2;
    public Handler g1;

    private ae()
    {
        g1 = null;
        g1 = new Handler();
    }

    public static ae bp()
    {
        if (g2 == null)
        {
            g2 = new ae();
        }
        return g2;
    }

    public boolean bq()
    {
        return false;
    }

    public void br()
    {
        this;
        JVM INSTR monitorenter ;
    }

    public boolean bs()
    {
        return false;
    }

    public void bt()
    {
        this;
        JVM INSTR monitorenter ;
    }
}
