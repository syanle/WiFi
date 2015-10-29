// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            PullToRefreshAdatper

public class PullToRefreshView extends RelativeLayout
{

    private static final long MIN_REF_TIME = 1000L;
    private PullToRefreshAdatper adapter;
    private View bodyView;
    private float downY;
    private int headerHeight;
    private View headerView;
    private boolean pullingLock;
    private long refreshTime;
    private boolean requesting;
    private Runnable stopAct;
    private int top;

    public PullToRefreshView(Context context)
    {
        super(context);
        init();
    }

    public PullToRefreshView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public PullToRefreshView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private boolean canPull()
    {
        return !pullingLock && adapter.isPullReady();
    }

    private MotionEvent getCancelEvent(MotionEvent motionevent)
    {
        return MotionEvent.obtain(motionevent.getDownTime(), motionevent.getEventTime(), 3, motionevent.getX(), motionevent.getY(), motionevent.getMetaState());
    }

    private void init()
    {
        stopAct = new Runnable() {

            final PullToRefreshView this$0;

            public void run()
            {
                reversePulling();
                stopRequest();
            }

            
            {
                this$0 = PullToRefreshView.this;
                super();
            }
        };
    }

    private void performRequest()
    {
        refreshTime = System.currentTimeMillis();
        requesting = true;
        if (adapter != null)
        {
            adapter.onRequest();
        }
    }

    private void reversePulling()
    {
        top = 0;
        scrollTo(0, 0);
        if (adapter != null)
        {
            adapter.onReversed();
        }
    }

    private void stopRequest()
    {
        requesting = false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 44
    //                   1 177
    //                   2 57
    //                   3 177;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        MotionEvent motionevent1 = motionevent;
_L6:
        return super.dispatchTouchEvent(motionevent1);
_L2:
        downY = motionevent.getY();
        motionevent1 = motionevent;
        continue; /* Loop/switch isn't completed */
_L4:
label0:
        {
            float f = motionevent.getY();
            if (!requesting)
            {
                motionevent1 = motionevent;
                if (!canPull())
                {
                    break label0;
                }
            }
            top = (int)((float)top + (f - downY) / 2.0F);
            if (top > 0)
            {
                scrollTo(0, -top);
                if (!requesting && adapter != null)
                {
                    adapter.onPullDown((top * 100) / headerHeight);
                }
                motionevent1 = getCancelEvent(motionevent);
            } else
            {
                top = 0;
                scrollTo(0, 0);
                motionevent1 = motionevent;
            }
        }
        downY = f;
        continue; /* Loop/switch isn't completed */
_L3:
        if (!requesting)
        {
            if (top > headerHeight)
            {
                top = headerHeight;
                scrollTo(0, -top);
                if (adapter != null)
                {
                    adapter.onPullDown(100);
                }
                performRequest();
                motionevent1 = getCancelEvent(motionevent);
            } else
            {
                motionevent1 = motionevent;
                if (top != 0)
                {
                    reversePulling();
                    motionevent1 = motionevent;
                    if (adapter != null)
                    {
                        adapter.onPullDown(0);
                        motionevent1 = motionevent;
                    }
                }
            }
        } else
        {
            top = headerHeight;
            scrollTo(0, -top);
            motionevent1 = motionevent;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void lockPulling()
    {
        pullingLock = true;
    }

    public void performPulling(boolean flag)
    {
        top = headerHeight;
        scrollTo(0, -top);
        if (flag)
        {
            performRequest();
        }
    }

    public void releaseLock()
    {
        pullingLock = false;
    }

    public void setAdapter(PullToRefreshAdatper pulltorefreshadatper)
    {
        adapter = pulltorefreshadatper;
        removeAllViews();
        bodyView = (View)pulltorefreshadatper.getBodyView();
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(9, -1);
        layoutparams.addRule(11, -1);
        layoutparams.addRule(10, -1);
        addView(bodyView, layoutparams);
        headerView = pulltorefreshadatper.getHeaderView();
        headerView.measure(0, 0);
        headerHeight = headerView.getMeasuredHeight();
        pulltorefreshadatper = new android.widget.RelativeLayout.LayoutParams(-2, headerHeight);
        pulltorefreshadatper.addRule(9, -1);
        pulltorefreshadatper.addRule(11, -1);
        pulltorefreshadatper.addRule(10, -1);
        pulltorefreshadatper.topMargin = -headerHeight;
        addView(headerView, pulltorefreshadatper);
    }

    public void stopPulling()
    {
        long l = System.currentTimeMillis() - refreshTime;
        if (l < 1000L)
        {
            postDelayed(stopAct, 1000L - l);
            return;
        } else
        {
            post(stopAct);
            return;
        }
    }


}
