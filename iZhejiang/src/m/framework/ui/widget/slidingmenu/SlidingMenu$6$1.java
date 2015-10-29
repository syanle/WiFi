// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.view.ViewTreeObserver;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu, BodyContainer

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        SlidingMenu.access$3(_fld0).scrollTo(SlidingMenu.access$4(_fld0), 0);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class m/framework/ui/widget/slidingmenu/SlidingMenu$6

/* anonymous class */
    class SlidingMenu._cls6
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        final SlidingMenu this$0;

        public void onGlobalLayout()
        {
            getViewTreeObserver().removeGlobalOnLayoutListener(this);
            post(new SlidingMenu._cls6._cls1());
        }


            
            {
                this$0 = SlidingMenu.this;
                super();
            }
    }

}
