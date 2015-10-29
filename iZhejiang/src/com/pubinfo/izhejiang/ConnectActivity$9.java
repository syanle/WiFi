// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class this._cls0
    implements Runnable
{

    final ConnectActivity this$0;

    public void run()
    {
        int i = Integer.parseInt(tv5.getText().toString().trim());
        tv5.setText(String.valueOf(i + 1));
    }

    ()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
