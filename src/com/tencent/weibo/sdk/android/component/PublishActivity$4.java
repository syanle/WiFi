// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.TextView;
import java.io.UnsupportedEncodingException;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class this._cls0
    implements TextWatcher
{

    final PublishActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        try
        {
            PublishActivity.access$6(PublishActivity.this, editable.toString());
            editable = (new StringBuilder(String.valueOf(140 - editable.toString().getBytes("gbk").length / 2))).toString();
            Log.d("contentafter", editable);
            PublishActivity.access$7(PublishActivity.this).setText(editable);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Editable editable)
        {
            editable.printStackTrace();
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        try
        {
            Log.d("contentafter", (new StringBuilder(String.valueOf(charsequence.toString().getBytes("gbk").length))).toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (CharSequence charsequence)
        {
            charsequence.printStackTrace();
        }
    }

    ()
    {
        this$0 = PublishActivity.this;
        super();
    }
}
