// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;

// Referenced classes of package com.tencent.open:
//            SocialApiIml

class val.listener
    implements geCallback
{

    final SocialApiIml this$0;
    final Activity val$activity;
    final IUiListener val$listener;
    final Bundle val$params;

    public void onFailed(String s)
    {
        val$params.remove("image_date");
        s = new UiError(-5, "\u56FE\u7247\u8BFB\u53D6\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u8BE5\u56FE\u7247\u662F\u5426\u6709\u6548", "\u56FE\u7247\u8BFB\u53D6\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u8BE5\u56FE\u7247\u662F\u5426\u6709\u6548");
        val$listener.onError(s);
        SocialApiIml.access$000(SocialApiIml.this);
    }

    public void onSuccess(String s)
    {
        val$params.remove("image_date");
        if (!TextUtils.isEmpty(s))
        {
            val$params.putString("image_date", s);
        }
        SocialApiIml.access$300(SocialApiIml.this, val$activity, val$params, val$listener);
    }

    geCallback()
    {
        this$0 = final_socialapiiml;
        val$params = bundle;
        val$activity = activity1;
        val$listener = IUiListener.this;
        super();
    }
}
