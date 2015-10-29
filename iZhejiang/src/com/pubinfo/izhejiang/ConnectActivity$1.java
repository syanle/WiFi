// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;
import com.cat.tools.SelectSharePopupWindow;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class this._cls0
    implements android.view.er
{

    final ConnectActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361840: 
            menuWindow = new SelectSharePopupWindow(ConnectActivity.this, ConnectActivity.access$0(ConnectActivity.this));
            menuWindow.showAtLocation(findViewById(0x7f0a0022), 81, 0, 0);
            return;

        case 2131361836: 
            view = new Intent();
            setResult(3, view);
            finish();
            return;

        case 2131361908: 
            ConnectActivity.access$1(ConnectActivity.this);
            break;
        }
    }

    ()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
