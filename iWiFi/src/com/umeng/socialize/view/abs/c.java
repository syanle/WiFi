// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.os.Handler;
import android.util.Log;
import com.umeng.socialize.bean.SocializeEntity;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.abs:
//            e, BaseComentActivity, d

class c
    implements com.umeng.socialize.controller.listener.SocializeListeners.FetchCommetsListener
{

    final BaseComentActivity a;
    private final BaseComentActivity.FetchDataListener b;

    c(BaseComentActivity basecomentactivity, BaseComentActivity.FetchDataListener fetchdatalistener)
    {
        a = basecomentactivity;
        b = fetchdatalistener;
        super();
    }

    static BaseComentActivity a(c c1)
    {
        return c1.a;
    }

    public void onComplete(int i, List list, SocializeEntity socializeentity)
    {
        a.runOnUiThread(new e(this, i, list, b));
    }

    public void onStart()
    {
        b.a();
        BaseComentActivity.a(a, true);
        Log.d(BaseComentActivity.e, "interrupt fetch data from net...");
        BaseComentActivity.a(a).postDelayed(new d(this), 20000L);
    }
}
