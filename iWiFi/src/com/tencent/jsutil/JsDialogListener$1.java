// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.tencent.sdkutil.PKDialog;
import com.tencent.sdkutil.TDialog;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.sdkutil.WebViewDialog;

// Referenced classes of package com.tencent.jsutil:
//            JsDialogListener

class this._cls0 extends Handler
{

    final JsDialogListener this$0;

    public void handleMessage(Message message)
    {
        Object obj = message.getData();
        String s = ((Bundle) (obj)).getString("action");
        String s1 = ((Bundle) (obj)).getString("actionUrl");
        obj = TemporaryStorage.getListener(((Bundle) (obj)).getInt("listenerKey"));
        if (message.what == 1)
        {
            (new PKDialog(JsDialogListener.access$000(JsDialogListener.this), s, s1, ((com.tencent.tauth.IUiListener) (obj)), JsDialogListener.access$100(JsDialogListener.this))).show();
        } else
        {
            if (message.what == 2)
            {
                Log.d("JsDialogListener", "creatDialog");
                if (JsDialogListener.access$000(JsDialogListener.this) == null)
                {
                    Log.e("mActivity", "null");
                }
                if (obj == null)
                {
                    Log.e("listener", "null");
                }
                if (obj == null)
                {
                    Log.e("mQQToken", "null");
                }
                Log.e("TDialog activity", JsDialogListener.access$000(JsDialogListener.this).toString());
                (new TDialog(JsDialogListener.access$000(JsDialogListener.this), s, s1, ((com.tencent.tauth.IUiListener) (obj)), JsDialogListener.access$100(JsDialogListener.this))).show();
                return;
            }
            if (message.what == 3)
            {
                (new WebViewDialog(JsDialogListener.access$000(JsDialogListener.this), s, s1, ((com.tencent.tauth.IUiListener) (obj)), JsDialogListener.access$100(JsDialogListener.this))).show();
                return;
            }
        }
    }

    ()
    {
        this$0 = JsDialogListener.this;
        super();
    }
}
