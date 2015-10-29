// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.view.MotionEvent;

// Referenced classes of package net.youmi.android.a.a.j:
//            d, j

class i extends android.view.GestureDetector.SimpleOnGestureListener
{

    final d a;
    private int b;
    private float c;
    private float d;
    private float e;
    private float f;

    public i(d d1, int k)
    {
        a = d1;
        super();
        c = 0.0F;
        d = 0.0F;
        e = 0.0F;
        f = 0.0F;
        b = k;
    }

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        return super.onDoubleTap(motionevent);
    }

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 1: default 28
    //                   0 106
    //                   1 125;
           goto _L1 _L2 _L3
_L1:
        if (Math.abs(c - e) >= 25F || Math.abs(d - f) >= 25F || net.youmi.android.a.a.j.d.d(a) == null) goto _L5; else goto _L4
_L4:
        int k = b;
        k;
        JVM INSTR tableswitch 2 3: default 104
    //                   2 159
    //                   3 144;
           goto _L5 _L6 _L7
_L5:
        return false;
_L2:
        c = motionevent.getX();
        d = motionevent.getY();
          goto _L1
_L3:
        e = motionevent.getX();
        f = motionevent.getY();
          goto _L1
_L7:
        try
        {
            net.youmi.android.a.a.j.d.d(a).i();
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent) { }
          goto _L5
_L6:
        net.youmi.android.a.a.j.d.d(a).k();
          goto _L5
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return super.onDown(motionevent);
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return super.onFling(motionevent, motionevent1, f1, f2);
    }

    public void onLongPress(MotionEvent motionevent)
    {
        super.onLongPress(motionevent);
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return super.onScroll(motionevent, motionevent1, f1, f2);
    }

    public void onShowPress(MotionEvent motionevent)
    {
        super.onShowPress(motionevent);
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        if (net.youmi.android.a.a.j.d.d(a) == null) goto _L2; else goto _L1
_L1:
        int k = b;
        k;
        JVM INSTR tableswitch 2 3: default 40
    //                   2 61
    //                   3 46;
           goto _L3 _L4 _L5
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_61;
_L2:
        return super.onSingleTapConfirmed(motionevent);
_L5:
        try
        {
            net.youmi.android.a.a.j.d.d(a).h();
        }
        catch (Throwable throwable) { }
          goto _L2
        net.youmi.android.a.a.j.d.d(a).j();
          goto _L2
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        return super.onSingleTapUp(motionevent);
    }
}
