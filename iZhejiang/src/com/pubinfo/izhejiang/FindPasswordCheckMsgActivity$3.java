// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordCheckMsgActivity

class this._cls0
    implements android.view.tivity._cls3
{

    final FindPasswordCheckMsgActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361862: 
            showLoading();
            (new Thread(FindPasswordCheckMsgActivity.this)).start();
            return;

        case 2131361836: 
            finish();
            return;

        case 2131361838: 
            showLoading();
            FindPasswordCheckMsgActivity.access$10(FindPasswordCheckMsgActivity.this, phone, et_code.getText().toString().trim(), "2", getApplicationContext());
            return;
        }
    }

    Thread()
    {
        this$0 = FindPasswordCheckMsgActivity.this;
        super();
    }
}
