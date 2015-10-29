// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapProcessor

private static class scan extends Timer
{

    private BitmapProcessor processor;

    private void scan()
    {
        if (BitmapProcessor.access$0(processor))
        {
            long l = System.currentTimeMillis();
            int i = 0;
            while (i < BitmapProcessor.access$1(processor).length) 
            {
                if (BitmapProcessor.access$1(processor)[i] == null)
                {
                    BitmapProcessor.access$1(processor)[i] = new init>(processor);
                    BitmapProcessor.access$1(processor)[i].etName((new StringBuilder("worker ")).append(i).toString());
                    scan scan1 = BitmapProcessor.access$1(processor)[i];
                    boolean flag;
                    if (i == 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    ccess._mth0(scan1, flag);
                    BitmapProcessor.access$1(processor)[i].tart();
                } else
                if (l - ccess._mth1(BitmapProcessor.access$1(processor)[i]) > 20000L)
                {
                    BitmapProcessor.access$1(processor)[i].nterrupt();
                    boolean flag1 = ccess._mth2(BitmapProcessor.access$1(processor)[i]);
                    BitmapProcessor.access$1(processor)[i] = new init>(processor);
                    BitmapProcessor.access$1(processor)[i].etName((new StringBuilder("worker ")).append(i).toString());
                    ccess._mth0(BitmapProcessor.access$1(processor)[i], flag1);
                    BitmapProcessor.access$1(processor)[i].tart();
                }
                i++;
            }
        }
    }



    public _cls1.this._cls1(BitmapProcessor bitmapprocessor)
    {
        processor = bitmapprocessor;
        schedule(new TimerTask() {

            private int counter;
            final BitmapProcessor.ManagerThread this$1;

            public void run()
            {
                if (BitmapProcessor.access$0(processor))
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
                this$1 = BitmapProcessor.ManagerThread.this;
                super();
            }
        }, 0L, 200L);
    }
}
