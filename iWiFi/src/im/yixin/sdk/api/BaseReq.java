// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;

public abstract class BaseReq
{

    public String transaction;

    public BaseReq()
    {
    }

    public abstract boolean checkArgs();

    public void fromBundle(Bundle bundle)
    {
        transaction = bundle.getString("_yxapi_basereq_transaction");
    }

    public abstract int getType();

    public void toBundle(Bundle bundle)
    {
        bundle.putInt("_yxapi_command_type", getType());
        bundle.putString("_yxapi_basereq_transaction", transaction);
    }
}
