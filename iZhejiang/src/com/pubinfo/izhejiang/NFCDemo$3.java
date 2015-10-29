// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            NFCDemo

class val.str
    implements Runnable
{

    final NFCDemo this$0;
    private final String val$str;

    public void run()
    {
        miWifi20_output.setText(val$str);
        miWifi20_output.setBackgroundColor(0xff0000ff);
        miWifi20_output.invalidate();
    }

    ()
    {
        this$0 = final_nfcdemo;
        val$str = String.this;
        super();
    }
}
