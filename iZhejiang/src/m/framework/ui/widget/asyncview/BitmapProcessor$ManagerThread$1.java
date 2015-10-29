// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import java.util.TimerTask;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapProcessor

class this._cls1 extends TimerTask
{

    private int counter;
    final this._cls1 this$1;

    public void run()
    {
        if (BitmapProcessor.access$0(cess._mth0(this._cls1.this)))
        {
            counter = counter - 1;
            if (counter <= 0)
            {
                counter = 100;
                cess._mth1(this._cls1.this);
            }
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
