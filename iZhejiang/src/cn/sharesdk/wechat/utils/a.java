// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            m

public class a extends m
{

    public String a;
    public String b;

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
        bundle.putString("_wxapi_sendauth_req_scope", a);
        bundle.putString("_wxapi_sendauth_req_state", b);
    }

    public boolean b()
    {
        if (a == null || a.length() == 0 || a.length() > 1024)
        {
            Ln.e("MicroMsg.SDK.SendAuth.Req", new Object[] {
                "checkArgs fail, scope is invalid"
            });
            return false;
        }
        if (b != null && b.length() > 1024)
        {
            Ln.e("MicroMsg.SDK.SendAuth.Req", new Object[] {
                "checkArgs fail, state is invalid"
            });
            return false;
        } else
        {
            return true;
        }
    }
}
