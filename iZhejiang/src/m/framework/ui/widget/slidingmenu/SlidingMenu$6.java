// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.view.ViewTreeObserver;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu, BodyContainer

class this._cls0
    implements android.view.er.OnGlobalLayoutListener
{

    final SlidingMenu this$0;

    public void onGlobalLayout()
    {
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
        post(new Runnable() {

            final SlidingMenu._cls6 this$1;

            public void run()
            {
                SlidingMenu.access$3(this$0).scrollTo(SlidingMenu.access$4(this$0), 0);
            }

            
            {
                this$1 = SlidingMenu._cls6.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = SlidingMenu.this;
        super();
    }
}
