// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;
import com.cat.tools.SelectSharePopupWindow;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity, CommentActivity

class this._cls0
    implements android.view.er
{

    final ConnectActivity this$0;

    public void onClick(View view)
    {
        menuWindow.dismiss();
        view.getId();
        JVM INSTR tableswitch 2131361823 2131361825: default 40
    //                   2131361823 41
    //                   2131361824 74
    //                   2131361825 128;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (click_zan)
        {
            (new ThreadZan(ConnectActivity.this)).start();
            click_zan = false;
            return;
        }
          goto _L1
_L3:
        view = new Intent(getApplicationContext(), com/pubinfo/izhejiang/CommentActivity);
        view.putExtra("mac", wifimac);
        view.putExtra("username", username);
        startActivity(view);
        return;
_L4:
        ConnectActivity.access$2(ConnectActivity.this, true, null, false);
        return;
    }

    ThreadZan()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
