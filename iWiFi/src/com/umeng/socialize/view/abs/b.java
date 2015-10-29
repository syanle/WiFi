// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.db.a;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.abs:
//            BaseComentActivity

class b
    implements Runnable
{

    final BaseComentActivity a;
    private final BaseComentActivity.FetchDataListener b;

    b(BaseComentActivity basecomentactivity, BaseComentActivity.FetchDataListener fetchdatalistener)
    {
        a = basecomentactivity;
        b = fetchdatalistener;
        super();
    }

    public void run()
    {
        b.a();
        List list = (new a(a)).a(a.f.mEntityKey);
        if (list == null || list.size() == 0)
        {
            a.fetchFormNet(b, -1L);
            return;
        } else
        {
            b.a(list);
            return;
        }
    }
}
