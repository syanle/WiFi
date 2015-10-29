// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity

class this._cls0
    implements TextWatcher
{

    final RegistSecondActivity this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (et_code.getText().toString().length() > 0)
        {
            confirmButton.setEnabled(true);
            nextbtn.setTextColor(getResources().getColorStateList(0x7f080001));
            return;
        } else
        {
            confirmButton.setEnabled(false);
            nextbtn.setTextColor(getResources().getColorStateList(0x7f080004));
            return;
        }
    }

    ()
    {
        this$0 = RegistSecondActivity.this;
        super();
    }
}
