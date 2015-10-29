// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.app.Dialog;
import android.view.View;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            IUiListener

class ttonListener extends ttonListener
{

    final val.response this$1;
    final JSONObject val$response;
    final IUiListener val$userListener;

    public void onClick(View view)
    {
        if (dialog != null && dialog.isShowing())
        {
            dialog.dismiss();
        }
        if (val$userListener != null)
        {
            val$userListener.onComplete(val$response);
        }
    }

    ttonListener(JSONObject jsonobject)
    {
        this$1 = final_ttonlistener;
        val$userListener = IUiListener.this;
        val$response = jsonobject;
        super(final_ttonlistener, final_dialog);
    }
}
