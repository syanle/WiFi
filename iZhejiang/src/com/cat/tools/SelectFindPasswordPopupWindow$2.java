// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.cat.tools:
//            SelectFindPasswordPopupWindow

class this._cls0
    implements android.view.
{

    final SelectFindPasswordPopupWindow this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i = SelectFindPasswordPopupWindow.access$0(SelectFindPasswordPopupWindow.this).findViewById(0x7f0a001b).getTop();
        int j = (int)motionevent.getY();
        if (motionevent.getAction() == 1 && j < i)
        {
            dismiss();
        }
        return true;
    }

    ()
    {
        this$0 = SelectFindPasswordPopupWindow.this;
        super();
    }
}
