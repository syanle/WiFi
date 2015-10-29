// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import com.umeng.socialize.bean.StatusCode;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.abs:
//            c, BaseComentActivity

class e
    implements Runnable
{

    final c a;
    private final int b;
    private final List c;
    private final BaseComentActivity.FetchDataListener d;

    e(c c1, int i, List list, BaseComentActivity.FetchDataListener fetchdatalistener)
    {
        a = c1;
        b = i;
        c = list;
        d = fetchdatalistener;
        super();
    }

    public void run()
    {
        if (b == 200 && c != null)
        {
            d.a(c);
        } else
        {
            StatusCode.showErrMsg(com.umeng.socialize.view.abs.c.a(a), b, null);
            d.a(null);
        }
        BaseComentActivity.a(com.umeng.socialize.view.abs.c.a(a), false);
    }
}
