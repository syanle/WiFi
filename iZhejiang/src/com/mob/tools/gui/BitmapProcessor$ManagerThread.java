// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.mob.tools.gui:
//            BitmapProcessor

private static class scan extends Timer
{

    private BitmapProcessor processor;

    private void scan()
    {
        if (BitmapProcessor.access$300(processor))
        {
            long l = System.currentTimeMillis();
            int i = 0;
            while (i < BitmapProcessor.access$500(processor).length) 
            {
                if (BitmapProcessor.access$500(processor)[i] == null)
                {
                    BitmapProcessor.access$500(processor)[i] = new init>(processor);
                    BitmapProcessor.access$500(processor)[i].etName((new StringBuilder()).append("worker ").append(i).toString());
                    scan scan1 = BitmapProcessor.access$500(processor)[i];
                    boolean flag;
                    if (i == 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    ccess._mth602(scan1, flag);
                    BitmapProcessor.access$500(processor)[i].tart();
                } else
                if (l - ccess._mth700(BitmapProcessor.access$500(processor)[i]) > 20000L)
                {
                    BitmapProcessor.access$500(processor)[i].nterrupt();
                    boolean flag1 = ccess._mth600(BitmapProcessor.access$500(processor)[i]);
                    BitmapProcessor.access$500(processor)[i] = new init>(processor);
                    BitmapProcessor.access$500(processor)[i].etName((new StringBuilder()).append("worker ").append(i).toString());
                    ccess._mth602(BitmapProcessor.access$500(processor)[i], flag1);
                    BitmapProcessor.access$500(processor)[i].tart();
                }
                i++;
            }
        }
    }



    public _cls1.this._cls0(BitmapProcessor bitmapprocessor)
    {
        processor = bitmapprocessor;
        schedule(new TimerTask() {

            private int counter;
            final BitmapProcessor.ManagerThread this$0;

            public void run()
            {
                if (BitmapProcessor.access$300(processor))
                {
                    counter = counter - 1;
                    if (counter <= 0)
                    {
                        counter = 100;
                        scan();
                    }
                }
            }

            
            {
                this$0 = BitmapProcessor.ManagerThread.this;
                super();
            }
        }, 0L, 200L);
    }
}
