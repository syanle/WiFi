// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            Suggestion

class this._cls0
    implements android.view.istener
{

    final Suggestion this$0;

    public void onClick(View view)
    {
        if (suggestion_text.getText().toString().isEmpty())
        {
            Toast.makeText(Suggestion.access$0(Suggestion.this), "\u63D0\u4EA4\u610F\u89C1\u4E0D\u80FD\u4E3A\u7A7A\uFF01", 3000).show();
            return;
        } else
        {
            Toast.makeText(Suggestion.access$0(Suggestion.this), "\u6211\u4EEC\u5DF2\u7ECF\u6536\u5230\u4F60\u7684\u610F\u89C1\u53CD\u9988\u3002", 3000).show();
            finish();
            return;
        }
    }

    ()
    {
        this$0 = Suggestion.this;
        super();
    }
}
