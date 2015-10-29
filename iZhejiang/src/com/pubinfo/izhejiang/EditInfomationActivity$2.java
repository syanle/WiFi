// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Handler;
import android.view.View;

// Referenced classes of package com.pubinfo.izhejiang:
//            EditInfomationActivity

class this._cls0
    implements android.view.tivity._cls2
{

    final EditInfomationActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        case 2131361837: 
        default:
            return;

        case 2131361838: 
            showLoading();
            EditInfomationActivity.access$0(EditInfomationActivity.this).sendEmptyMessage(1);
            return;

        case 2131361836: 
            finish();
            return;
        }
    }

    ()
    {
        this$0 = EditInfomationActivity.this;
        super();
    }
}
