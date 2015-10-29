// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.view.View;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu, SlidingMenuItem, MenuAdapter

class this._cls0
    implements android.view.stener
{

    final SlidingMenu this$0;

    public void onClick(View view)
    {
        for (view = (SlidingMenuItem)view.getTag(); view == null || SlidingMenu.access$0(SlidingMenu.this) == null || SlidingMenu.access$0(SlidingMenu.this).onItemTrigger(view);)
        {
            return;
        }

        postDelayed(new Runnable() {

            final SlidingMenu._cls1 this$1;

            public void run()
            {
                hideMenu();
            }

            
            {
                this$1 = SlidingMenu._cls1.this;
                super();
            }
        }, 500L);
    }


    _cls1.this._cls1()
    {
        this$0 = SlidingMenu.this;
        super();
    }
}
