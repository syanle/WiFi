// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.tencent.jsutil.JsBridge;
import com.tencent.jsutil.JsDialogListener;
import com.tencent.jsutil.JumpController;
import com.tencent.sdkutil.AppUtils;
import com.tencent.sdkutil.TemporaryStorage;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            Tencent, IUiListener

class val.activity
    implements Runnable
{

    final Tencent this$0;
    final Activity val$activity;
    final IUiListener val$listener;
    final Bundle val$params;

    public void run()
    {
        Log.i("params", val$params.toString());
        Tencent.mBridge.executeMethod("reportUtils.startQQ4Connect", new String[] {
            "false"
        });
        JSONObject jsonobject = parseBundleToJSON4QQShare(val$params, 1);
        if (Tencent.access$100(Tencent.this) != null)
        {
            TemporaryStorage.setListener(val$listener);
        }
        Tencent.mController.setActivity(val$activity);
        Tencent.mJsDialogListener.setActivity(val$activity);
        Tencent.appUtils.setActivity(val$activity);
        Tencent.mBridge.executeMethod("tencent.share.shareMessageToQQ", new String[] {
            jsonobject.toString()
        });
    }

    r()
    {
        this$0 = final_tencent;
        val$params = bundle;
        val$listener = iuilistener;
        val$activity = Activity.this;
        super();
    }
}
