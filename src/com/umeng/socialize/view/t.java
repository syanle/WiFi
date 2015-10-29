// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.ProgressDialog;
import android.widget.Toast;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.StatusCode;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.view.controller.UMBroadcastManager;

// Referenced classes of package com.umeng.socialize.view:
//            q, CommentActivity

class t
    implements com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener
{

    com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener a[];
    final q b;

    t(q q1)
    {
        b = q1;
        super();
    }

    public void onComplete(MultiStatus multistatus, int i, SocializeEntity socializeentity)
    {
        boolean flag;
        flag = false;
        SocializeUtils.safeDismissDialog(q.e(b));
        if (i != 200) goto _L2; else goto _L1
_L1:
        int j;
        q.g(b).reflushData();
        j = 0;
_L7:
        if (j < q.h(b)) goto _L4; else goto _L3
_L3:
        socializeentity.incrementCc();
        q.a(b, 0);
        UMBroadcastManager.sendEntityChange(q.g(b), socializeentity.mDescriptor);
        Toast.makeText(q.g(b), "\u53D1\u9001\u6210\u529F.", 0).show();
        if (q.d(b).isSendBlock())
        {
            SocializeUtils.safeDismissDialog(b);
        }
_L8:
        if (a == null) goto _L6; else goto _L5
_L5:
        com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener amulstatuslistener[];
        int k;
        amulstatuslistener = a;
        k = amulstatuslistener.length;
        j = ((flag) ? 1 : 0);
_L9:
        if (j < k)
        {
            break MISSING_BLOCK_LABEL_167;
        }
_L6:
        return;
_L4:
        socializeentity.incrementSc();
        j++;
          goto _L7
_L2:
        StatusCode.showErrMsg(q.g(b), i, "\u53D1\u9001\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5\u3002");
          goto _L8
        amulstatuslistener[j].onComplete(multistatus, i, socializeentity);
        j++;
          goto _L9
    }

    public void onStart()
    {
        com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener amulstatuslistener[];
        int i;
        int j;
        if (q.d(b).isSendBlock())
        {
            q.e(b).setMessage("\u53D1\u9001\u4E2D...");
            SocializeUtils.safeShowDialog(q.e(b), false);
        } else
        {
            SocializeUtils.safeDismissDialog(b);
        }
        a = (com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener[])q.f(b).getConfig().getListener(com/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener);
        if (a == null) goto _L2; else goto _L1
_L1:
        amulstatuslistener = a;
        j = amulstatuslistener.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return;
_L3:
        amulstatuslistener[i].onStart();
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
