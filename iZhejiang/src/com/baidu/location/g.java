// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.baidu.location:
//            ax, n

class g
    implements ax, n
{

    private static g br = null;
    private long bo;
    public long bp;
    private long bq;
    public boolean bs;

    private g()
    {
        bs = false;
        bp = 0L;
        bo = 0L;
        bq = 0L;
    }

    public static g e()
    {
        if (br == null)
        {
            br = new g();
        }
        return br;
    }

    public void h()
    {
        if (bs)
        {
            return;
        } else
        {
            bo = System.currentTimeMillis();
            return;
        }
    }

    public long _mthnew(String s)
    {
        long l;
        try
        {
            l = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(s).getTime();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -1L;
        }
        return l;
    }

    public void _mthtry(String s)
    {
        if (!bs)
        {
            bq = System.currentTimeMillis();
            long l = (bq - bo) / 2L;
            if (l <= 3000L && l >= 0L)
            {
                long l1 = _mthnew(s);
                if (l1 > 0L)
                {
                    bp = (l + l1) - System.currentTimeMillis();
                    bs = false;
                    return;
                }
            }
        }
    }

}
