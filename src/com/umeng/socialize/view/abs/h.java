// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.StatusCode;

// Referenced classes of package com.umeng.socialize.view.abs:
//            g

class h
    implements com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener
{

    final g a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b[];

    h(g g1, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener asocializeclientlistener[])
    {
        a = g1;
        b = asocializeclientlistener;
        super();
    }

    public void onComplete(int i, SocializeEntity socializeentity)
    {
        com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener asocializeclientlistener[];
        int j;
        j = 0;
        int k;
        if (i == 200 && socializeentity != null)
        {
            a.onViewUpdate();
        } else
        {
            StatusCode.showErrMsg(a.getContext(), i, "\u5931\u8D25\u4E86\uFF0C\u8BF7\u91CD\u8BD5.");
        }
        g.c(a).setClickable(true);
        g.a(a).setVisibility(8);
        g.b(a).setVisibility(0);
        if (b == null) goto _L2; else goto _L1
_L1:
        asocializeclientlistener = b;
        k = asocializeclientlistener.length;
_L5:
        if (j < k) goto _L3; else goto _L2
_L2:
        return;
_L3:
        asocializeclientlistener[j].onComplete(i, socializeentity);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onStart()
    {
        int i;
        i = 0;
        g.a(a).setVisibility(0);
        g.b(a).setVisibility(8);
        g.c(a).setClickable(false);
        if (b == null) goto _L2; else goto _L1
_L1:
        com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener asocializeclientlistener[];
        int j;
        asocializeclientlistener = b;
        j = asocializeclientlistener.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        asocializeclientlistener[i].onStart();
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
