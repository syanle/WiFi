// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.slidingmenu;

import android.graphics.Color;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.HorizontalScrollView;

// Referenced classes of package m.framework.ui.widget.slidingmenu:
//            SlidingMenu, MenuConfig

public class BodyContainer extends HorizontalScrollView
{

    private static final int MENU_COVER_ALPHA = 230;
    private static final int MIN_FLING_VEL = 500;
    private float downX;
    private int maxVelocity;
    private SlidingMenu menu;
    private VelocityTracker tracker;

    public BodyContainer(SlidingMenu slidingmenu)
    {
        super(slidingmenu.getContext());
        downX = 2.147484E+09F;
        menu = slidingmenu;
        maxVelocity = ViewConfiguration.get(slidingmenu.getContext()).getScaledMaximumFlingVelocity();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 42
    //                   1 103
    //                   2 112
    //                   3 103;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return super.onInterceptTouchEvent(motionevent);
_L2:
        downX = motionevent.getX();
        if (menu.isMenuShown() && downX > (float)menu.getMenuWidth() && motionevent.getY() > (float)menu.getMenuConfig().titleHeight)
        {
            super.onInterceptTouchEvent(motionevent);
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        downX = 2.147484E+09F;
        if (true) goto _L1; else goto _L4
_L4:
        if (!menu.isMenuShown() && downX > (float)menu.getShowMenuWidth())
        {
            super.onInterceptTouchEvent(motionevent);
            return false;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        i = Color.argb((i * 230) / menu.getMenuWidth(), 0, 0, 0);
        menu.getMenuCover().setBackgroundColor(i);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (tracker == null)
        {
            tracker = VelocityTracker.obtain();
        }
        tracker.addMovement(motionevent);
        motionevent.getAction();
        JVM INSTR tableswitch 1 3: default 52
    //                   1 80
    //                   2 52
    //                   3 80;
           goto _L1 _L2 _L1 _L2
_L1:
        if (!menu.isMenuShown() || downX >= (float)menu.getMenuWidth()) goto _L4; else goto _L3
_L3:
        return false;
_L2:
        if (!menu.isMenuShown() || downX >= (float)menu.getMenuWidth())
        {
            downX = 2.147484E+09F;
            tracker.computeCurrentVelocity(1000, maxVelocity);
            float f = tracker.getXVelocity();
            tracker.recycle();
            tracker = null;
            int i = getScrollX();
            if (f - 500F > 0.0F)
            {
                menu.showMenu();
            } else
            if (f + 500F < 0.0F)
            {
                menu.hideMenu();
            } else
            if (i > menu.getMenuWidth() / 2)
            {
                menu.hideMenu();
            } else
            {
                menu.showMenu();
            }
            return true;
        }
        if (true) goto _L3; else goto _L4
_L4:
        return super.onTouchEvent(motionevent);
    }
}
