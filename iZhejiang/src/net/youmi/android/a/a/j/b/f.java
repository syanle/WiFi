// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;

// Referenced classes of package net.youmi.android.a.a.j.b:
//            c, m, a, g, 
//            d, i, j, k, 
//            h, l

public abstract class f extends LinearLayout
{

    protected View a;
    private float b;
    private l c;
    private d d;
    private int e;
    private boolean f;
    private int g;
    private c h;
    private m i;
    private boolean j;
    private boolean k;

    public transient f(Context context, Object aobj[])
    {
        super(context);
        b = -1F;
        f = false;
        h = c.a;
        j = false;
        k = false;
        a(context, aobj);
    }

    private void a(int l)
    {
        a(l, 150L, 0L);
    }

    private void a(int l, long l1, long l2)
    {
        if (i != null)
        {
            i.a();
        }
        if (getScrollY() != l)
        {
            i = new m(this, getScrollY(), l, l1);
            postDelayed(i, l2);
        }
    }

    private transient void a(Context context, Object aobj[])
    {
        setOrientation(1);
        setBackgroundColor(-1);
        g = ViewConfiguration.get(context).getScaledTouchSlop();
        d = new a(context);
        addView(d, new android.widget.LinearLayout.LayoutParams(-1, -2));
        a = b(context, aobj);
        addView(a, new android.widget.LinearLayout.LayoutParams(-1, -1));
        getViewTreeObserver().addOnGlobalLayoutListener(new g(this));
    }

    static void a(f f1)
    {
        f1.g();
    }

    static void a(f f1, int l)
    {
        f1.a(l);
    }

    static boolean a(f f1, boolean flag)
    {
        f1.j = flag;
        return flag;
    }

    static d b(f f1)
    {
        return f1.d;
    }

    static int c(f f1)
    {
        return f1.e;
    }

    static l d(f f1)
    {
        return f1.c;
    }

    private void g()
    {
        if (d != null)
        {
            e = d.getHeight();
            setPadding(getPaddingLeft(), -d.getMeasuredHeight(), getPaddingRight(), getPaddingBottom());
            return;
        } else
        {
            e = 0;
            return;
        }
    }

    protected void a(float f1)
    {
        if (f1 < 0.0F && (float)getScrollY() - f1 >= 0.0F)
        {
            scrollTo(0, 0);
        } else
        {
            scrollBy(0, -(int)f1);
            int l = Math.abs(getScrollY());
            if (!e())
            {
                if (l >= e)
                {
                    h = c.c;
                } else
                {
                    h = c.b;
                }
                d.setState(h);
                return;
            }
        }
    }

    protected void a(int l, int i1)
    {
        if (a != null)
        {
            android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)a.getLayoutParams();
            if (layoutparams.height != i1)
            {
                layoutparams.height = i1;
                a.requestLayout();
            }
        }
    }

    protected abstract boolean a();

    protected transient abstract View b(Context context, Object aobj[]);

    public void b()
    {
        post(new i(this));
    }

    protected void c()
    {
        int l = Math.abs(getScrollY());
        boolean flag = e();
        if (flag && l <= e)
        {
            a(0);
            return;
        }
        if (flag)
        {
            a(-e);
            return;
        } else
        {
            a(0);
            return;
        }
    }

    protected void d()
    {
        if (!e())
        {
            if (d != null)
            {
                d.setState(c.d);
            }
            h = c.d;
            if (c != null)
            {
                postDelayed(new j(this), 150L);
                return;
            }
        }
    }

    protected boolean e()
    {
        return h == c.d;
    }

    public void f()
    {
        if (e())
        {
            h = c.a;
            postDelayed(new k(this), 150L);
            c();
        }
    }

    public d getHeaderLoadingLayout()
    {
        return d;
    }

    public View getRefreshableView()
    {
        return a;
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        flag = false;
        switch (motionevent.getAction())
        {
        }
        if (!j) goto _L2; else goto _L1
_L1:
        k = false;
_L4:
        return true;
_L2:
        int l = motionevent.getAction();
        if (l == 3 || l == 1)
        {
            f = false;
            return false;
        }
        if (motionevent.getAction() != 0 && f) goto _L4; else goto _L3
_L3:
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 120
    //                   0 125
    //                   1 227
    //                   2 146
    //                   3 227;
           goto _L5 _L6 _L7 _L8 _L7
_L5:
        return f;
_L6:
        b = motionevent.getY();
        f = false;
        k = true;
        continue; /* Loop/switch isn't completed */
_L8:
        if (k)
        {
            float f1 = motionevent.getY() - b;
            if (Math.abs(f1) > (float)g || e())
            {
                b = motionevent.getY();
                if (a())
                {
                    if (Math.abs(getScrollY()) > 0 || f1 > 0.5F)
                    {
                        flag = true;
                    }
                    f = flag;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L7:
        k = false;
        if (true) goto _L5; else goto _L9
_L9:
    }

    protected final void onSizeChanged(int l, int i1, int j1, int k1)
    {
        super.onSizeChanged(l, i1, j1, k1);
        g();
        a(l, i1);
        post(new h(this));
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag1;
        boolean flag2;
        boolean flag3;
        flag3 = true;
        flag1 = true;
        flag2 = false;
        if (j)
        {
            k = false;
            return true;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 56
    //                   0 63
    //                   1 151
    //                   2 88
    //                   3 151;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        boolean flag = flag2;
_L6:
        return flag;
_L2:
        b = motionevent.getY();
        f = false;
        k = true;
        flag = flag2;
        continue; /* Loop/switch isn't completed */
_L4:
        flag = flag2;
        if (k)
        {
            float f1 = motionevent.getY();
            float f2 = b;
            b = motionevent.getY();
            if (a())
            {
                a((f1 - f2) / 2.0F);
                flag = flag1;
            } else
            {
                f = false;
                flag = false;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        flag = flag2;
        if (k)
        {
            k = false;
            flag = flag2;
            if (f)
            {
                f = false;
                flag = flag2;
                if (a())
                {
                    if (h == c.c)
                    {
                        d();
                        flag = flag3;
                    } else
                    {
                        flag = false;
                    }
                    c();
                }
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setOnRefreshListener(l l)
    {
        c = l;
    }
}
