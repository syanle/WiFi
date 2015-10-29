// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.View;
import com.cat.tools.SelectPicPopupWindow;

// Referenced classes of package com.pubinfo.izhejiang:
//            PersonInfomationActivity

class this._cls0
    implements android.view.tivity._cls2
{

    final PersonInfomationActivity this$0;

    public void onClick(View view)
    {
        menuWindow.dismiss();
        switch (view.getId())
        {
        default:
            return;

        case 2131361820: 
            camera();
            return;

        case 2131361821: 
            gallery();
            break;
        }
    }

    ()
    {
        this$0 = PersonInfomationActivity.this;
        super();
    }
}
