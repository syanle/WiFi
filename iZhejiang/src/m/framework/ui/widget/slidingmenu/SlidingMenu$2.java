// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu, MenuConfig

class this._cls0
    implements android.view.stener
{

    final SlidingMenu this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 55
    //                   2 36
    //                   3 55;
           goto _L1 _L2 _L3 _L1 _L3
_L1:
        return false;
_L2:
        view.setBackgroundResource(SlidingMenu.access$1(SlidingMenu.this).itemDownBack);
        continue; /* Loop/switch isn't completed */
_L3:
        view.setBackgroundResource(SlidingMenu.access$1(SlidingMenu.this).itemDownRelease);
        if (true) goto _L1; else goto _L4
_L4:
    }

    ()
    {
        this$0 = SlidingMenu.this;
        super();
    }
}
