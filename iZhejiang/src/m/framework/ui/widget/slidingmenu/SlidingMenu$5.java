// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.LinearLayout;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu

class this._cls0 extends LinearLayout
{

    final SlidingMenu this$0;

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }

    (Context context)
    {
        this$0 = SlidingMenu.this;
        super(context);
    }
}
