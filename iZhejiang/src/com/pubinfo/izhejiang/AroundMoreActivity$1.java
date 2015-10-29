// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.pubinfo.izhejiang:
//            AroundMoreActivity

class this._cls0
    implements android.view.tivity._cls1
{

    final AroundMoreActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361836: 
            view = new Intent();
            break;
        }
        setResult(2, view);
        finish();
    }

    ()
    {
        this$0 = AroundMoreActivity.this;
        super();
    }
}
