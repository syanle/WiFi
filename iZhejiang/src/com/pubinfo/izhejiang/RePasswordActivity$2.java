// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;

// Referenced classes of package com.pubinfo.izhejiang:
//            RePasswordActivity

class this._cls0
    implements android.view.tivity._cls2
{

    final RePasswordActivity this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131361836: 
            finish();
            return;

        case 2131361838: 
            RePasswordActivity.access$0(RePasswordActivity.this);
            return;

        case 2131361983: 
            break;
        }
        if (drawable_dfu.equals(ib_radioButton.getBackground()))
        {
            ib_radioButton.setBackgroundResource(0x7f02001a);
            et_password1.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            et_password2.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            return;
        } else
        {
            ib_radioButton.setBackgroundDrawable(drawable_dfu);
            et_password1.setTransformationMethod(PasswordTransformationMethod.getInstance());
            et_password2.setTransformationMethod(PasswordTransformationMethod.getInstance());
            return;
        }
    }

    ethod()
    {
        this$0 = RePasswordActivity.this;
        super();
    }
}
