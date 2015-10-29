// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.iwifi.sdk.chinanet:
//            WelcomePage

class val.url
    implements android.content.
{

    final this._cls1 this$1;
    private final String val$url;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(val$url));
        cess._mth0(this._cls1.this).startActivity(intent);
        dialoginterface.cancel();
    }

    ()
    {
        this$1 = final_;
        val$url = String.this;
        super();
    }
}
