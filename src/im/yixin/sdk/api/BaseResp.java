// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;

public abstract class BaseResp
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


    public int errCode;
    public String errStr;
    public String transaction;

    public BaseResp()
    {
    }

    public abstract boolean checkArgs();

    public void fromBundle(Bundle bundle)
    {
        errCode = bundle.getInt("_yxapi_baseresp_errcode");
        errStr = bundle.getString("_yxapi_baseresp_errstr");
        transaction = bundle.getString("_yxapi_baseresp_transaction");
    }

    public abstract int getType();

    public void toBundle(Bundle bundle)
    {
        bundle.putInt("_yxapi_command_type", getType());
        bundle.putInt("_yxapi_baseresp_errcode", errCode);
        bundle.putString("_yxapi_baseresp_errstr", errStr);
        bundle.putString("_yxapi_baseresp_transaction", transaction);
    }
}
