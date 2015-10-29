// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import com.cat.tools.SelectFindPasswordPopupWindow;

// Referenced classes of package com.pubinfo.izhejiang:
//            LoginActivity

class this._cls0
    implements android.view.ener
{

    final LoginActivity this$0;

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 5: default 56
    //                   2131361836: 163
    //                   2131361908: 114
    //                   2131361909: 171
    //                   2131361910: 57
    //                   2131361911: 106;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L5:
        menuWindow = new SelectFindPasswordPopupWindow(LoginActivity.this, LoginActivity.access$1(LoginActivity.this));
        menuWindow.showAtLocation(findViewById(0x7f0a0022), 81, 0, 0);
        return;
_L6:
        LoginActivity.access$2(LoginActivity.this);
        return;
_L3:
        if (LoginActivity.access$3())
        {
            showLoading();
            loading_text.setText(getString(0x7f060041));
            LoginActivity.access$4(LoginActivity.this).sendEmptyMessage(1);
            LoginActivity.access$5(false);
            return;
        }
          goto _L1
_L2:
        finish();
        return;
_L4:
        LoginActivity.access$6(LoginActivity.this);
        return;
    }

    indow()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
