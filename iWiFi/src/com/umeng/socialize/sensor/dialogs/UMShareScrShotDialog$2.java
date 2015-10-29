// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.dialogs;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.Toast;

// Referenced classes of package com.umeng.socialize.sensor.dialogs:
//            UMShareScrShotDialog

class this._cls0
    implements TextWatcher
{

    final UMShareScrShotDialog this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        charsequence = charsequence.toString().trim();
        if (UMShareScrShotDialog.access$1(UMShareScrShotDialog.this))
        {
            UMShareScrShotDialog.access$2(UMShareScrShotDialog.this).startAnimation(UMShareScrShotDialog.access$3(UMShareScrShotDialog.this));
            Toast.makeText(UMShareScrShotDialog.access$4(UMShareScrShotDialog.this), "\u62B1\u6B49,\u5B57\u6570\u8D85\u8FC7140\u4E86...", 1).show();
            charsequence = charsequence.substring(0, 139);
            UMShareScrShotDialog.access$2(UMShareScrShotDialog.this).setText(charsequence);
            j = i;
            if (i > 139)
            {
                j = 139;
            }
            UMShareScrShotDialog.access$2(UMShareScrShotDialog.this).setSelection(j);
        }
    }

    ()
    {
        this$0 = UMShareScrShotDialog.this;
        super();
    }
}
