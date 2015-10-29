// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.viewpager;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import m.framework.utils.Utils;

// Referenced classes of package m.framework.ui.widget.viewpager:
//            ViewPagerAdapter

public class ViewPagerClassic extends ViewGroup
{

    private static final int SNAP_VELOCITY = 500;
    private static final int TOUCH_STATE_REST = 0;
    private static final int TOUCH_STATE_SCROLLING = 1;
    private ViewPagerAdapter adapter;
    private int currentScreen;
    private float lastMotionX;
    private float lastMotionY;
    private int mMaximumVelocity;
    private VelocityTracker mVelocityTracker;
    private Scroller scroller;
    private int touchSlop;
    private int touchState;

    public ViewPagerClassic(Context context)
    {
        this(context, null);
    }

    public ViewPagerClassic(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ViewPagerClassic(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        touchState = 0;
        init(context);
    }

    private void handleInterceptMove(MotionEvent motionevent)
    {
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        int i = (int)Math.abs(f - lastMotionX);
        int j = (int)Math.abs(f1 - lastMotionY);
        boolean flag;
        if (i > touchSlop)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (j > touchSlop)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if ((flag || j) && flag)
        {
            touchState = 1;
            lastMotionX = f;
        }
    }

    private void handleScrollMove(MotionEvent motionevent)
    {
        if (adapter != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        float f = motionevent.getX();
        i = (int)(lastMotionX - f);
        lastMotionX = f;
        if (i >= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (getScrollX() > 0)
        {
            scrollBy(Math.max(-getScrollX(), i), 0);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (i <= 0 || getChildCount() == 0) goto _L1; else goto _L3
_L3:
        int j = getChildAt(getChildCount() - 1).getRight() - getScrollX() - getWidth();
        if (j > 0)
        {
            scrollBy(Math.min(j, i), 0);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void init(Context context)
    {
        scroller = new Scroller(getContext(), new Interpolator() {

            final ViewPagerClassic this$0;
            float values[] = {
                0.0F, 0.0157073F, 0.0314108F, 0.0471065F, 0.0627905F, 0.0784591F, 0.0941083F, 0.109734F, 0.125333F, 0.140901F, 
                0.156434F, 0.171929F, 0.187381F, 0.202787F, 0.218143F, 0.233445F, 0.24869F, 0.263873F, 0.278991F, 0.29404F, 
                0.309017F, 0.323917F, 0.338738F, 0.353475F, 0.368125F, 0.382683F, 0.397148F, 0.411514F, 0.425779F, 0.439939F, 
                0.45399F, 0.46793F, 0.481754F, 0.495459F, 0.509041F, 0.522499F, 0.535827F, 0.549023F, 0.562083F, 0.575005F, 
                0.587785F, 0.60042F, 0.612907F, 0.625243F, 0.637424F, 0.649448F, 0.661312F, 0.673013F, 0.684547F, 0.695913F, 
                0.707107F, 0.718126F, 0.728969F, 0.739631F, 0.750111F, 0.760406F, 0.770513F, 0.78043F, 0.790155F, 0.799685F, 
                0.809017F, 0.81815F, 0.827081F, 0.835807F, 0.844328F, 0.85264F, 0.860742F, 0.868632F, 0.876307F, 0.883766F, 
                0.891007F, 0.898028F, 0.904827F, 0.911403F, 0.917755F, 0.92388F, 0.929776F, 0.935444F, 0.940881F, 0.946085F, 
                0.951057F, 0.955793F, 0.960294F, 0.964557F, 0.968583F, 0.97237F, 0.975917F, 0.979223F, 0.982287F, 0.985109F, 
                0.987688F, 0.990024F, 0.992115F, 0.993961F, 0.995562F, 0.996917F, 0.998027F, 0.99889F, 0.999507F, 0.999877F, 
                1.0F
            };

            public float getInterpolation(float f)
            {
                int i = (int)(100F * f);
                return values[i];
            }

            
            {
                this$0 = ViewPagerClassic.this;
                super();
            }
        });
        context = ViewConfiguration.get(context);
        touchSlop = context.getScaledTouchSlop();
        mMaximumVelocity = context.getScaledMaximumFlingVelocity();
    }

    private void scrollToScreen(int i, boolean flag)
    {
        Object obj;
        int j;
        int k;
        if (i != currentScreen)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        obj = getFocusedChild();
        if (obj != null && j != 0 && obj == getChildAt(currentScreen))
        {
            ((View) (obj)).clearFocus();
        }
        j = i * getWidth() - getScrollX();
        obj = scroller;
        k = getScrollX();
        if (flag)
        {
            i = 0;
        } else
        {
            i = Math.abs(j) / 2;
        }
        ((Scroller) (obj)).startScroll(k, 0, j, 0, i);
        invalidate();
    }

    public void computeScroll()
    {
        if (adapter != null)
        {
            if (scroller.computeScrollOffset())
            {
                scrollTo(scroller.getCurrX(), scroller.getCurrY());
                postInvalidate();
                return;
            }
            int k = currentScreen;
            int l = scroller.getCurrX();
            int i1 = getWidth();
            int j = l / i1;
            int i = j;
            if (l % i1 > i1 / 2)
            {
                i = j + 1;
            }
            currentScreen = Math.max(0, Math.min(i, getChildCount() - 1));
            if (k != currentScreen && adapter != null)
            {
                adapter.onScreenChange(currentScreen, k);
                return;
            }
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        if (adapter != null && getChildCount() > 0)
        {
            long l = getDrawingTime();
            if (currentScreen > 0)
            {
                drawChild(canvas, getChildAt(currentScreen - 1), l);
            }
            drawChild(canvas, getChildAt(currentScreen), l);
            if (currentScreen < getChildCount() - 1)
            {
                drawChild(canvas, getChildAt(currentScreen + 1), l);
                return;
            }
        }
    }

    public boolean dispatchUnhandledMove(View view, int i)
    {
        if (adapter == null)
        {
            return super.dispatchUnhandledMove(view, i);
        }
        if (i == 17)
        {
            if (currentScreen > 0)
            {
                scrollToScreen(currentScreen - 1);
                return true;
            }
        } else
        if (i == 66 && currentScreen < getChildCount() - 1)
        {
            scrollToScreen(currentScreen + 1);
            return true;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    public int getCurrentScreen()
    {
        return currentScreen;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i = motionevent.getAction();
        if (i != 2 || touchState == 0) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        i;
        JVM INSTR tableswitch 0 3: default 76
    //                   0 93
    //                   1 141
    //                   2 85
    //                   3 141;
           goto _L3 _L4 _L5 _L6 _L5
_L5:
        break MISSING_BLOCK_LABEL_141;
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break; /* Loop/switch isn't completed */
_L8:
        if (touchState == 0)
        {
            return false;
        }
        if (true) goto _L1; else goto _L7
_L7:
        handleInterceptMove(motionevent);
          goto _L8
_L4:
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        lastMotionX = f;
        lastMotionY = f1;
        int j;
        if (scroller.isFinished())
        {
            j = 0;
        } else
        {
            j = 1;
        }
        touchState = j;
          goto _L8
        if (mVelocityTracker != null)
        {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
        }
        touchState = 0;
          goto _L8
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (adapter != null)
        {
            boolean flag1 = false;
            int j1 = k - i;
            i = 0;
            int k1 = getChildCount();
            k = ((flag1) ? 1 : 0);
            while (i < k1) 
            {
                View view = getChildAt(i);
                int i1 = k;
                if (view.getVisibility() != 8)
                {
                    view.layout(k, 0, k + j1, l - j);
                    i1 = k + j1;
                }
                i++;
                k = i1;
            }
        }
    }

    protected void onMeasure(int i, int j)
    {
        if (adapter != null) goto _L2; else goto _L1
_L1:
        super.onMeasure(i, j);
_L4:
        return;
_L2:
        int i1 = getChildCount();
        j = 0;
        int j1 = android.view.View.MeasureSpec.makeMeasureSpec(Utils.getScreenWidth(getContext()), 0x40000000);
        i = 0;
        do
        {
label0:
            {
                if (i < i1)
                {
                    break label0;
                }
                j = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
                super.onMeasure(j1, j);
                i = 0;
                while (i < i1) 
                {
                    getChildAt(i).measure(j1, j);
                    i++;
                }
            }
            if (true)
            {
                continue;
            }
            View view = getChildAt(i);
            view.measure(j1, 0);
            int l = view.getMeasuredHeight();
            int k = j;
            if (l > j)
            {
                k = l;
            }
            i++;
            j = k;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f;
        int i;
        if (adapter == null)
        {
            return false;
        }
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        i = motionevent.getAction();
        f = motionevent.getX();
        i;
        JVM INSTR tableswitch 0 3: default 72
    //                   0 74
    //                   1 146
    //                   2 106
    //                   3 283;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        if (touchState != 0)
        {
            if (!scroller.isFinished())
            {
                scroller.abortAnimation();
            }
            lastMotionX = f;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (touchState == 1)
        {
            handleScrollMove(motionevent);
        } else
        if (onInterceptTouchEvent(motionevent) && touchState == 1)
        {
            handleScrollMove(motionevent);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (touchState == 1)
        {
            motionevent = mVelocityTracker;
            motionevent.computeCurrentVelocity(1000, mMaximumVelocity);
            int j = (int)motionevent.getXVelocity();
            if (j > 500 && currentScreen > 0)
            {
                scrollToScreen(currentScreen - 1);
            } else
            if (j < -500 && currentScreen < getChildCount() - 1)
            {
                scrollToScreen(currentScreen + 1);
            } else
            {
                int k = getWidth();
                scrollToScreen((getScrollX() + k / 2) / k);
            }
            if (mVelocityTracker != null)
            {
                mVelocityTracker.recycle();
                mVelocityTracker = null;
            }
        }
        touchState = 0;
        continue; /* Loop/switch isn't completed */
_L5:
        touchState = 0;
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void scrollLeft()
    {
        while (adapter == null || currentScreen <= 0 || !scroller.isFinished()) 
        {
            return;
        }
        scrollToScreen(currentScreen - 1);
    }

    public void scrollRight()
    {
        while (adapter == null || currentScreen >= getChildCount() - 1 || !scroller.isFinished()) 
        {
            return;
        }
        scrollToScreen(currentScreen + 1);
    }

    public void scrollToScreen(int i)
    {
        scrollToScreen(i, false);
    }

    public void setAdapter(ViewPagerAdapter viewpageradapter)
    {
        adapter = viewpageradapter;
        removeAllViews();
        currentScreen = 0;
        if (adapter != null)
        {
            int i = 0;
            int j = viewpageradapter.getCount();
            while (i < j) 
            {
                addView(viewpageradapter.getView(i, this));
                i++;
            }
        }
    }

    public void setCurrentScreen(int i)
    {
        if (adapter == null)
        {
            return;
        }
        if (!scroller.isFinished())
        {
            scroller.abortAnimation();
        }
        int j = currentScreen;
        currentScreen = Math.max(0, Math.min(i, getChildCount()));
        adapter.onScreenChange(currentScreen, j);
        i = Utils.getScreenWidth(getContext());
        i = currentScreen * i;
        scroller.startScroll(0, 0, i, 0);
        scrollTo(i, 0);
    }
}
