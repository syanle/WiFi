// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.tencent.sdkutil:
//            PKDialog

class <init>
{

    final PKDialog this$0;

    public void onCancel(String s)
    {
        PKDialog.access$200(PKDialog.this).obtainMessage(2, s).sendToTarget();
        dismiss();
    }

    public void onComplete(String s)
    {
        PKDialog.access$200(PKDialog.this).obtainMessage(1, s).sendToTarget();
        Log.e("onComplete", s);
        dismiss();
    }

    public void onLoad(String s)
    {
        PKDialog.access$200(PKDialog.this).obtainMessage(4, s).sendToTarget();
    }

    public void showMsg(String s)
    {
        PKDialog.access$200(PKDialog.this).obtainMessage(3, s).sendToTarget();
    }

    private ()
    {
        this$0 = PKDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
