// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.view;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.pubinfo.wifi_core.core.view:
//            ScrollTextView

class this._cls0 extends Handler
{

    final ScrollTextView this$0;

    private void resetCurrentY()
    {
        if (currentY >= absloutHeight || currentY <= -absloutHeight || getHeight() <= 0)
        {
            currentY = 0.0F;
        }
    }

    public void handleMessage(Message message)
    {
        if (absloutHeight <= (float)getHeight())
        {
            currentY = 0.0F;
            stop();
            return;
        }
        ScrollTextView scrolltextview;
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            message = ScrollTextView.this;
            message.currentY = ((ScrollTextView) (message)).currentY - speed;
            resetCurrentY();
            invalidate();
            handler.sendEmptyMessageDelayed(0, delayTime);
            return;

        case 1: // '\001'
            scrolltextview = ScrollTextView.this;
            break;
        }
        scrolltextview.currentY = scrolltextview.currentY + (float)message.arg1;
        resetCurrentY();
        invalidate();
    }

    ()
    {
        this$0 = ScrollTextView.this;
        super();
    }
}
