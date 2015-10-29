// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.content.DialogInterface;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            IUiListener

class val.response
    implements android.content.er
{

    final val.response this$1;
    final JSONObject val$response;
    final IUiListener val$userListener;

    public void onCancel(DialogInterface dialoginterface)
    {
        if (val$userListener != null)
        {
            val$userListener.onComplete(val$response);
        }
    }

    ()
    {
        this$1 = final_;
        val$userListener = iuilistener;
        val$response = JSONObject.this;
        super();
    }
}
