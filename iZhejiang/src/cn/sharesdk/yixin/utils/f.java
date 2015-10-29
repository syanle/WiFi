// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;

public abstract class f
{

    public String c;

    public f()
    {
    }

    public abstract int a();

    public void a(Bundle bundle)
    {
        c = bundle.getString("_yxapi_basereq_transaction");
    }

    public void b(Bundle bundle)
    {
        bundle.putInt("_yxapi_command_type", a());
        bundle.putString("_yxapi_basereq_transaction", c);
    }
}
