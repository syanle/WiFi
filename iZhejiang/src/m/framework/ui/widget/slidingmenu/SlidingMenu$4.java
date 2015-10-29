// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu

class this._cls0 extends FrameLayout
{

    final SlidingMenu this$0;

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (!SlidingMenu.access$2(SlidingMenu.this))
        {
            return true;
        } else
        {
            return super.onInterceptTouchEvent(motionevent);
        }
    }

    (Context context)
    {
        this$0 = SlidingMenu.this;
        super(context);
    }
}
