// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import com.umeng.socialize.bean.QQShareMsg;
import com.umeng.socialize.controller.UMQQSsoHandler;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bk
    implements android.content.DialogInterface.OnClickListener
{

    final ShareActivity a;

    bk(ShareActivity shareactivity)
    {
        a = shareactivity;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        ShareActivity.p(a);
        a.a.setImageDrawable(null);
        a.a.setVisibility(8);
        if (ShareActivity.s(a))
        {
            UMQQSsoHandler.mQqShareMsg.b(null);
        }
        ShareActivity.m(a).setVisibility(8);
        if (!ShareActivity.s(a)) goto _L2; else goto _L1
_L1:
        ShareActivity.y(a);
        JVM INSTR tableswitch 1 3: default 104
    //                   1 121
    //                   2 131
    //                   3 131;
           goto _L2 _L3 _L4 _L4
_L2:
        ShareActivity.b(a, 0);
        ShareActivity.a(a, null);
        return;
_L3:
        UMQQSsoHandler.mQqShareMsg.b(null);
        continue; /* Loop/switch isn't completed */
_L4:
        UMQQSsoHandler.mQqShareMsg.b("");
        if (true) goto _L2; else goto _L5
_L5:
    }
}
