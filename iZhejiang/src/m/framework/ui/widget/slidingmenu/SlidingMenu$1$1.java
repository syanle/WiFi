// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.view.View;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu, SlidingMenuItem, MenuAdapter

class this._cls1
    implements Runnable
{

    final Menu this$1;

    public void run()
    {
        hideMenu();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class m/framework/ui/widget/slidingmenu/SlidingMenu$1

/* anonymous class */
    class SlidingMenu._cls1
        implements android.view.View.OnClickListener
    {

        final SlidingMenu this$0;

        public void onClick(View view)
        {
            for (view = (SlidingMenuItem)view.getTag(); view == null || SlidingMenu.access$0(SlidingMenu.this) == null || SlidingMenu.access$0(SlidingMenu.this).onItemTrigger(view);)
            {
                return;
            }

            postDelayed(new SlidingMenu._cls1._cls1(), 500L);
        }


            
            {
                this$0 = SlidingMenu.this;
                super();
            }
    }

}
