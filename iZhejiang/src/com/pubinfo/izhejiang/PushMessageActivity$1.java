// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.pubinfo.izhejiang:
//            PushMessageActivity

class this._cls0
    implements android.view.tivity._cls1
{

    final PushMessageActivity this$0;

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131361836 2131361836: default 24
    //                   2131361836 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (PushMessageActivity.access$0())
        {
            view = new Intent();
            setResult(4, view);
            finish();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    ()
    {
        this$0 = PushMessageActivity.this;
        super();
    }
}
