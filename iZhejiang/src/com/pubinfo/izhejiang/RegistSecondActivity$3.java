// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity

class this._cls0
    implements android.view.tivity._cls3
{

    final RegistSecondActivity this$0;

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 4: default 48
    //                   2131361836: 140
    //                   2131361838: 170
    //                   2131361862: 49
    //                   2131361990: 83;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L4:
        try
        {
            RegistSecondActivity.access$2(RegistSecondActivity.this);
        }
        // Misplaced declaration of an exception variable
        catch (View view) { }
        RegistSecondActivity.access$3(RegistSecondActivity.this);
        showLoading();
        RegistSecondActivity.access$1(RegistSecondActivity.this).sendEmptyMessage(1);
        return;
_L5:
        view = new Intent("android.intent.action.CALL", Uri.parse("tel:4008252525"));
        startActivity(view);
        confirmButton.setEnabled(true);
        nextbtn.setTextColor(getResources().getColorStateList(0x7f080001));
        return;
_L2:
        RegistSecondActivity.access$9(60);
        view = new Intent();
        setResult(3, view);
        finish();
        return;
_L3:
        if (countrycode != null)
        {
            showLoading();
            if (countrycode.equals("86") && clicknum < 1)
            {
                RegistSecondActivity.access$10(RegistSecondActivity.this, phone, et_code.getText().toString().trim(), "", password, "", "1", countrycode, "1", getApplicationContext());
                return;
            } else
            {
                RegistSecondActivity.access$10(RegistSecondActivity.this, phone, et_code.getText().toString().trim(), "", password, "", "1", countrycode, "2", getApplicationContext());
                return;
            }
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    ()
    {
        this$0 = RegistSecondActivity.this;
        super();
    }
}
