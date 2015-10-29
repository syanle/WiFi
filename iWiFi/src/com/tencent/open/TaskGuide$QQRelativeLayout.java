// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.RelativeLayout;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class startY extends RelativeLayout
{

    int startY;
    final TaskGuide this$0;

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i;
        i = (int)motionevent.getY();
        Log.d("XXXX", (new StringBuilder()).append("onInterceptTouchEvent-- action = ").append(motionevent.getAction()).append("currentY = ").append(i).toString());
        TaskGuide.access$2400(TaskGuide.this, 3000);
        motionevent.getAction();
        JVM INSTR tableswitch 0 1: default 80
    //                   0 86
    //                   1 93;
           goto _L1 _L2 _L3
_L1:
        return super.onInterceptTouchEvent(motionevent);
_L2:
        startY = i;
        return false;
_L3:
        if (startY - i > ViewConfiguration.getTouchSlop() * 2)
        {
            TaskGuide.access$2500(TaskGuide.this);
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        super.onTouchEvent(motionevent);
        i = (int)motionevent.getY();
        Log.d("XXXX", (new StringBuilder()).append(" onTouchEvent-----startY = ").append(startY).append("currentY = ").append(i).toString());
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 80
    //                   0 82
    //                   1 90
    //                   2 80;
           goto _L1 _L2 _L3 _L1
_L1:
        return false;
_L2:
        startY = i;
        continue; /* Loop/switch isn't completed */
_L3:
        if (startY - i > ViewConfiguration.getTouchSlop() * 2)
        {
            TaskGuide.access$2500(TaskGuide.this);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public (Context context)
    {
        this$0 = TaskGuide.this;
        super(context);
        startY = 0;
    }
}
