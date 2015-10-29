// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.sdkutil:
//            WebViewDialog

class <init>
{

    final WebViewDialog this$0;

    public void onAddShare(String s)
    {
        onComplete(s);
    }

    public void onCancel(String s)
    {
        WebViewDialog.access$700(WebViewDialog.this).obtainMessage(2, s).sendToTarget();
        dismiss();
    }

    public void onCancelAddShare(int i)
    {
        onCancel(null);
    }

    public void onCancelInvite()
    {
        onCancel(null);
    }

    public void onCancelLogin()
    {
        onCancel(null);
    }

    public void onComplete(String s)
    {
        WebViewDialog.access$700(WebViewDialog.this).obtainMessage(1, s).sendToTarget();
        dismiss();
    }

    public void onInvite(String s)
    {
        onComplete(s);
    }

    public void onLoad(String s)
    {
        WebViewDialog.access$700(WebViewDialog.this).obtainMessage(4, s).sendToTarget();
    }

    public void showMsg(String s)
    {
        WebViewDialog.access$700(WebViewDialog.this).obtainMessage(3, s).sendToTarget();
    }

    private ()
    {
        this$0 = WebViewDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
