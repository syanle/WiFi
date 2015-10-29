// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.util.Log;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            SlideSwitch

private class duration
    implements Runnable
{

    private int dstX;
    private int duration;
    private int srcX;
    final SlideSwitch this$0;

    public void run()
    {
        byte byte0;
        if (dstX > srcX)
        {
            byte0 = 5;
        } else
        {
            byte0 = -5;
        }
        if (duration == 0)
        {
            SlideSwitch.access$0(SlideSwitch.this, 2);
            postInvalidate();
            return;
        }
        Log.d("SlideSwitch", (new StringBuilder("start Animation: [ ")).append(srcX).append(" , ").append(dstX).append(" ]").toString());
        int i = srcX + byte0;
        do
        {
            if (Math.abs(i - dstX) <= 5)
            {
                SlideSwitch.access$1(SlideSwitch.this, dstX);
                SlideSwitch slideswitch = SlideSwitch.this;
                InterruptedException interruptedexception;
                if (SlideSwitch.access$2(SlideSwitch.this) > 35)
                {
                    byte0 = 1;
                } else
                {
                    byte0 = 0;
                }
                SlideSwitch.access$0(slideswitch, byte0);
                postInvalidate();
                return;
            }
            SlideSwitch.access$1(SlideSwitch.this, i);
            SlideSwitch.access$0(SlideSwitch.this, 2);
            postInvalidate();
            i += byte0;
            try
            {
                Thread.sleep(10L);
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        } while (true);
    }

    public (float f, float f1, int i)
    {
        this$0 = SlideSwitch.this;
        super();
        srcX = (int)f;
        dstX = (int)f1;
        duration = i;
    }
}
