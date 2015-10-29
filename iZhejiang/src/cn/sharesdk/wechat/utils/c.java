// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            WechatResp, WXMediaMessage

public class c extends WechatResp
{

    public WXMediaMessage a;

    public c(Bundle bundle)
    {
        super(bundle);
    }

    public int a()
    {
        return 3;
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        a = WXMediaMessage.a.a(bundle);
    }

    public void b(Bundle bundle)
    {
        super.b(bundle);
        bundle.putAll(WXMediaMessage.a.a(a));
    }
}
