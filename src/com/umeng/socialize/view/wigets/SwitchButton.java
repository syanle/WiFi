// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.CheckBox;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            d

public class SwitchButton extends CheckBox
{
    private class a extends d
    {

        private static final float k = 400F;
        final SwitchButton j;

        protected void a(float f1)
        {
            SwitchButton.a(j, f1);
            SwitchButton.c(j, SwitchButton.b(j, SwitchButton.e(j)));
            j.invalidate();
        }

        protected void b()
        {
            if (c)
            {
                c();
                if (f <= SwitchButton.f(j))
                {
                    c = false;
                    f = SwitchButton.f(j);
                    SwitchButton.c(j, true);
                } else
                if (f >= SwitchButton.g(j))
                {
                    c = false;
                    f = SwitchButton.g(j);
                    SwitchButton.c(j, false);
                } else
                {
                    i = i + 16L;
                    d.sendMessageAtTime(d.obtainMessage(1000), i);
                }
                a(f);
            }
        }

        public void b(boolean flag)
        {
            long l1 = SystemClock.uptimeMillis();
            e = l1;
            float f1;
            if (flag)
            {
                f1 = -400F;
            } else
            {
                f1 = 400F;
            }
            g = f1;
            f = SwitchButton.e(j);
            i = l1 + 16L;
            c = true;
            d.removeMessages(1000);
            d.sendMessageAtTime(d.obtainMessage(1000), i);
        }

        private a()
        {
            j = SwitchButton.this;
            super();
        }

        a(a a1)
        {
            this();
        }
    }

    private final class b
        implements Runnable
    {

        final SwitchButton a;

        public void run()
        {
            a.performClick();
        }

        private b()
        {
            a = SwitchButton.this;
            super();
        }

        b(b b1)
        {
            this();
        }
    }

    private class c extends Handler
    {

        final SwitchButton a;

        public void handleMessage(Message message)
        {
            boolean flag;
            if (message.what == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (SwitchButton.a(a) != flag)
            {
                SwitchButton.a(a, flag);
                if (SwitchButton.b(a))
                {
                    return;
                }
                SwitchButton.b(a, true);
                if (SwitchButton.c(a) != null)
                {
                    SwitchButton.c(a).onCheckedChanged(a, SwitchButton.a(a));
                }
                if (SwitchButton.d(a) != null)
                {
                    SwitchButton.d(a).onCheckedChanged(a, SwitchButton.a(a));
                }
                SwitchButton.b(a, false);
            }
            super.handleMessage(message);
        }

        private c()
        {
            a = SwitchButton.this;
            super();
        }

        c(c c1)
        {
            this();
        }
    }


    private b A;
    private android.widget.CompoundButton.OnCheckedChangeListener B;
    private android.widget.CompoundButton.OnCheckedChangeListener C;
    private c D;
    private a E;
    public boolean a;
    private Paint b;
    private ViewParent c;
    private Bitmap d;
    private Bitmap e;
    private Bitmap f;
    private Bitmap g;
    private Bitmap h;
    private Bitmap i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private final float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private int u;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    public SwitchButton(Context context)
    {
        this(context, null);
    }

    public SwitchButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x101006c);
    }

    public SwitchButton(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = false;
        p = 15F;
        w = 255;
        x = false;
        D = new c(null);
        E = new a(null);
        a(context);
    }

    private float a(float f1)
    {
        return f1 - s / 2.0F;
    }

    private void a()
    {
        c = getParent();
        if (c != null)
        {
            c.requestDisallowInterceptTouchEvent(true);
        }
    }

    private void a(Context context)
    {
        b = new Paint();
        b.setColor(-1);
        android.content.res.Resources resources = context.getResources();
        u = ViewConfiguration.getPressedStateDuration() + ViewConfiguration.getTapTimeout();
        v = ViewConfiguration.get(context).getScaledTouchSlop();
        d = BitmapFactory.decodeResource(resources, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchbutton_bottom"));
        f = BitmapFactory.decodeResource(resources, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchbutton_btn_pressed"));
        g = BitmapFactory.decodeResource(resources, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchbutton_btn_unpressed"));
        h = BitmapFactory.decodeResource(resources, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchbutton_frame"));
        i = BitmapFactory.decodeResource(resources, ResContainer.getResourceId(getContext(), com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_switchbutton_mask"));
        e = g;
        s = f.getWidth();
        q = i.getWidth();
        r = i.getHeight();
        o = s / 2.0F;
        n = q - s / 2.0F;
        float f1;
        if (x)
        {
            f1 = n;
        } else
        {
            f1 = o;
        }
        m = f1;
        l = a(m);
    }

    static void a(SwitchButton switchbutton, float f1)
    {
        switchbutton.m = f1;
    }

    static void a(SwitchButton switchbutton, boolean flag)
    {
        switchbutton.x = flag;
    }

    private void a(boolean flag)
    {
        int i1;
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        D.sendEmptyMessageDelayed(i1, 10L);
    }

    static boolean a(SwitchButton switchbutton)
    {
        return switchbutton.x;
    }

    static float b(SwitchButton switchbutton, float f1)
    {
        return switchbutton.a(f1);
    }

    static void b(SwitchButton switchbutton, boolean flag)
    {
        switchbutton.y = flag;
    }

    static boolean b(SwitchButton switchbutton)
    {
        return switchbutton.y;
    }

    static android.widget.CompoundButton.OnCheckedChangeListener c(SwitchButton switchbutton)
    {
        return switchbutton.B;
    }

    static void c(SwitchButton switchbutton, float f1)
    {
        switchbutton.l = f1;
    }

    static void c(SwitchButton switchbutton, boolean flag)
    {
        switchbutton.a(flag);
    }

    static android.widget.CompoundButton.OnCheckedChangeListener d(SwitchButton switchbutton)
    {
        return switchbutton.C;
    }

    static float e(SwitchButton switchbutton)
    {
        return switchbutton.m;
    }

    static float f(SwitchButton switchbutton)
    {
        return switchbutton.n;
    }

    static float g(SwitchButton switchbutton)
    {
        return switchbutton.o;
    }

    void a(android.widget.CompoundButton.OnCheckedChangeListener oncheckedchangelistener)
    {
        C = oncheckedchangelistener;
    }

    public android.widget.CompoundButton.OnCheckedChangeListener getOnCheckedChangeListener()
    {
        return B;
    }

    public boolean isChecked()
    {
        return x;
    }

    public boolean isEnabled()
    {
        return super.isEnabled();
    }

    protected void onDraw(Canvas canvas)
    {
        canvas.saveLayerAlpha(new RectF(0.0F, 15F, i.getWidth(), (float)i.getHeight() + 15F), w, 31);
        canvas.drawBitmap(i, 0.0F, 15F, b);
        b.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(d, l, 15F, b);
        b.setXfermode(null);
        canvas.drawBitmap(h, 0.0F, 15F, b);
        canvas.drawBitmap(e, l, 15F, b);
        canvas.restore();
    }

    protected void onMeasure(int i1, int j1)
    {
        setMeasuredDimension((int)q, (int)(r + 30F));
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f1;
        float f2;
        float f3;
        float f5;
        int i1;
        boolean flag;
        boolean flag2;
        flag = true;
        flag2 = false;
        i1 = motionevent.getAction();
        f3 = motionevent.getX();
        f5 = motionevent.getY();
        f1 = Math.abs(f3 - k);
        f2 = Math.abs(f5 - j);
        i1;
        JVM INSTR tableswitch 0 2: default 76
    //                   0 85
    //                   1 257
    //                   2 137;
           goto _L1 _L2 _L3 _L4
_L1:
        invalidate();
        return isEnabled();
_L2:
        a();
        k = f3;
        j = f5;
        e = f;
        if (x)
        {
            f1 = n;
        } else
        {
            f1 = o;
        }
        t = f1;
        continue; /* Loop/switch isn't completed */
_L4:
        f1 = motionevent.getEventTime() - motionevent.getDownTime();
        m = (t + motionevent.getX()) - k;
        if (m >= o)
        {
            m = o;
        }
        if (m <= n)
        {
            m = n;
        }
        if (m <= (o - n) / 2.0F + n)
        {
            flag = false;
        }
        z = flag;
        l = a(m);
        continue; /* Loop/switch isn't completed */
_L3:
        e = g;
        float f4 = motionevent.getEventTime() - motionevent.getDownTime();
        if (f2 < (float)v && f1 < (float)v && f4 < (float)u)
        {
            if (A == null)
            {
                A = new b(null);
            }
            if (!post(A))
            {
                performClick();
            }
        } else
        {
            motionevent = E;
            boolean flag1;
            if (z)
            {
                flag1 = flag2;
            } else
            {
                flag1 = true;
            }
            motionevent.b(flag1);
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public boolean performClick()
    {
        a a1 = E;
        boolean flag;
        if (x)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        a1.b(flag);
        return true;
    }

    public void setChecked(boolean flag)
    {
label0:
        {
            if (x != flag)
            {
                x = flag;
                float f1;
                if (flag)
                {
                    f1 = n;
                } else
                {
                    f1 = o;
                }
                m = f1;
                l = a(m);
                invalidate();
                if (!y)
                {
                    break label0;
                }
            }
            return;
        }
        y = true;
        if (B != null)
        {
            B.onCheckedChanged(this, x);
        }
        if (C != null)
        {
            C.onCheckedChanged(this, x);
        }
        y = false;
    }

    public void setEnabled(boolean flag)
    {
        int i1;
        if (flag)
        {
            i1 = 255;
        } else
        {
            i1 = 128;
        }
        w = i1;
        super.setEnabled(flag);
    }

    public void setOnCheckedChangeListener(android.widget.CompoundButton.OnCheckedChangeListener oncheckedchangelistener)
    {
        B = oncheckedchangelistener;
    }

    public void toggle()
    {
        boolean flag;
        if (x)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        setChecked(flag);
    }
}
