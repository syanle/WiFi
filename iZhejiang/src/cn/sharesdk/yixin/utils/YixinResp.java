// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;

public abstract class YixinResp
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


    public int a;
    public String b;
    public String c;

    public YixinResp()
    {
    }

    public abstract int a();

    public void a(Bundle bundle)
    {
        a = bundle.getInt("_yxapi_baseresp_errcode");
        b = bundle.getString("_yxapi_baseresp_errstr");
        c = bundle.getString("_yxapi_baseresp_transaction");
    }
}
