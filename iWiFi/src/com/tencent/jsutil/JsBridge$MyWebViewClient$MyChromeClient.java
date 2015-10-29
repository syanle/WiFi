// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.util.Log;
import android.webkit.WebChromeClient;

class this._cls1 extends WebChromeClient
{

    final this._cls1 this$1;

    public void onConsoleMessage(String s, int i, String s1)
    {
        super.onConsoleMessage(s, i, s1);
        Log.e("onConsoleMessage", (new StringBuilder()).append("message:").append(s).append("-----lineNum:").append(i).append("sourceId:").append(s1).toString());
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
