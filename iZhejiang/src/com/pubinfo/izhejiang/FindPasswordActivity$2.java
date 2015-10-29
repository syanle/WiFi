// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.View;
import android.widget.ImageView;
import com.cat.tools.Code;
import java.io.PrintStream;

// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordActivity

class this._cls0
    implements android.view.tivity._cls2
{

    final FindPasswordActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361858: 
            yanzhengmaIMG.setImageBitmap(Code.getInstance().createBitmap());
            System.out.println((new StringBuilder("\u9A8C\u8BC1\u7801\uFF1A")).append(Code.getInstance().getCode()).toString());
            return;

        case 2131361836: 
            finish();
            return;

        case 2131361838: 
            FindPasswordActivity.access$0(FindPasswordActivity.this);
            return;
        }
    }

    ()
    {
        this$0 = FindPasswordActivity.this;
        super();
    }
}
