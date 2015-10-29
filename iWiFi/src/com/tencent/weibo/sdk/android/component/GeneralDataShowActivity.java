// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.widget.TextView;

public class GeneralDataShowActivity extends Activity
{

    private TextView tv;

    public GeneralDataShowActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        tv = new TextView(this);
        bundle = getIntent().getExtras().getString("data");
        tv.setText(bundle);
        tv.setMovementMethod(ScrollingMovementMethod.getInstance());
        setContentView(tv);
    }
}
