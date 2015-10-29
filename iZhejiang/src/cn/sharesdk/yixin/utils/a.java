// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Bundle;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            f, YXMessage

public class a extends f
{

    public YXMessage a;
    public int b;

    public a()
    {
    }

    public int a()
    {
        return 1;
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        a = YXMessage.a.a(bundle);
        b = bundle.getInt("_yxapi_sendmessagetoyx_req_scene");
    }

    public void b(Bundle bundle)
    {
        super.b(bundle);
        bundle.putAll(YXMessage.a.a(a));
        bundle.putInt("_yxapi_sendmessagetoyx_req_scene", b);
    }

    public boolean b()
    {
        return a != null && a.a();
    }
}
