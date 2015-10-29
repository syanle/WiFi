// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.cat.tools:
//            PersonInfomationPopupWindow

class this._cls0
    implements android.view.
{

    final PersonInfomationPopupWindow this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        PersonInfomationPopupWindow.access$0(PersonInfomationPopupWindow.this).findViewById(0x7f0a001b).getTop();
        int i = (int)motionevent.getY();
        if (motionevent.getAction() == 1)
        {
            dismiss();
        }
        return true;
    }

    ()
    {
        this$0 = PersonInfomationPopupWindow.this;
        super();
    }
}
