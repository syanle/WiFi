// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            ReAddActivity

class this._cls0
    implements TextWatcher
{

    private int selectionEnd;
    private int selectionStart;
    private CharSequence temp;
    final ReAddActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        selectionStart = ReAddActivity.access$3(ReAddActivity.this).getSelectionStart();
        selectionEnd = ReAddActivity.access$3(ReAddActivity.this).getSelectionEnd();
        if (temp.length() > 140)
        {
            Toast.makeText(ReAddActivity.this, "\u6700\u591A\u53EF\u8F93\u5165140\u5B57\u7B26", 0).show();
            editable.delete(selectionStart - 1, selectionEnd);
            int i = selectionStart;
            ReAddActivity.access$3(ReAddActivity.this).setText(editable);
            ReAddActivity.access$3(ReAddActivity.this).setSelection(i);
            return;
        } else
        {
            ReAddActivity.access$4(ReAddActivity.this).setText(String.valueOf(140 - editable.length()));
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        temp = charsequence;
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = ReAddActivity.this;
        super();
    }
}
