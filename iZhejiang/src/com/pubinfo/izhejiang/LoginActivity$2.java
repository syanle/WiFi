// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

// Referenced classes of package com.pubinfo.izhejiang:
//            LoginActivity

class this._cls0
    implements TextWatcher
{

    final LoginActivity this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (usernameET != null && !usernameET.getText().toString().equals("") && passwordET != null && !passwordET.getText().toString().equals(""))
        {
            commitButton.setEnabled(true);
            commitButton.setTextColor(getResources().getColorStateList(0x7f080001));
            return;
        } else
        {
            commitButton.setEnabled(false);
            commitButton.setTextColor(getResources().getColorStateList(0x7f080004));
            return;
        }
    }

    ()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
