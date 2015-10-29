// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public abstract class WechatResp
{
    public static interface ErrCode
    {

        public static final int ERR_AUTH_DENIED = -4;
        public static final int ERR_COMM = -1;
        public static final int ERR_OK = 0;
        public static final int ERR_SENT_FAILED = -3;
        public static final int ERR_UNSUPPORT = -5;
        public static final int ERR_USER_CANCEL = -2;
    }


    public int f;
    public String g;
    public String h;

    public WechatResp(Bundle bundle)
    {
        a(bundle);
    }

    public abstract int a();

    public void a(Bundle bundle)
    {
        f = bundle.getInt("_wxapi_baseresp_errcode");
        g = bundle.getString("_wxapi_baseresp_errstr");
        h = bundle.getString("_wxapi_baseresp_transaction");
    }

    public void b(Bundle bundle)
    {
        bundle.putInt("_wxapi_command_type", a());
        bundle.putInt("_wxapi_baseresp_errcode", f);
        bundle.putString("_wxapi_baseresp_errstr", g);
        bundle.putString("_wxapi_baseresp_transaction", h);
    }
}
