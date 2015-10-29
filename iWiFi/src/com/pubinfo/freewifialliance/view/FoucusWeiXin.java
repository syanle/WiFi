// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import com.pubinfo.wifi_core.AppBaseActivity;
import com.tencent.mm.sdk.openapi.BaseReq;
import com.tencent.mm.sdk.openapi.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

public class FoucusWeiXin extends AppBaseActivity
    implements IWXAPIEventHandler
{

    private IWXAPI api;
    ImageButton fresh;
    Button fresh2;

    public FoucusWeiXin()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030037);
        fresh = (ImageButton)findViewById(0x7f0c005b);
        fresh.setVisibility(8);
        fresh2 = (Button)findViewById(0x7f0c005c);
        fresh2.setBackgroundResource(0x7f02001c);
        fresh2.setText("\u524D\u5F80");
        fresh2.setVisibility(0);
        api = WXAPIFactory.createWXAPI(this, "wxa603e0696280ef9c", false);
        fresh2.setOnClickListener(new android.view.View.OnClickListener() {

            final FoucusWeiXin this$0;

            public void onClick(View view)
            {
                api.openWXApp();
            }

            
            {
                this$0 = FoucusWeiXin.this;
                super();
            }
        });
    }

    public void onReq(BaseReq basereq)
    {
    }

    public void onResp(BaseResp baseresp)
    {
    }

}
