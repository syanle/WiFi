// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import java.io.PrintStream;

// Referenced classes of package com.pubinfo.izhejiang:
//            HideMenuActivity

class this._cls0
    implements android.view.r
{

    final HideMenuActivity this$0;

    public void onClick(View view)
    {
        view = ((EditText)findViewById(0x7f0a0053)).getText().toString();
        System.out.println((new StringBuilder("\u6307\u5B9A\u7684ip\u5730\u5740\u4E3A")).append(view).toString());
        setIp(view);
    }

    ()
    {
        this$0 = HideMenuActivity.this;
        super();
    }
}
