// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            WechatResp

public class b extends WechatResp
{

    public String a;
    public String b;
    public int c;
    public String d;
    public String e;

    public b(Bundle bundle)
    {
        super(bundle);
    }

    public int a()
    {
        return 1;
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        a = bundle.getString("_wxapi_sendauth_resp_userName");
        b = bundle.getString("_wxapi_sendauth_resp_token");
        c = bundle.getInt("_wxapi_sendauth_resp_expireDate", 0);
        d = bundle.getString("_wxapi_sendauth_resp_state");
        e = bundle.getString("_wxapi_sendauth_resp_url");
    }

    public void b(Bundle bundle)
    {
        super.b(bundle);
        bundle.putString("_wxapi_sendauth_resp_userName", a);
        bundle.putString("_wxapi_sendauth_resp_token", b);
        bundle.putInt("_wxapi_sendauth_resp_expireDate", c);
        bundle.putString("_wxapi_sendauth_resp_state", d);
        bundle.putString("_wxapi_sendauth_resp_url", e);
    }
}
