// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            i, f

class g extends Thread
{

    final Platform a;
    final String b;
    final f c;

    g(f f1, Platform platform, String s)
    {
        c = f1;
        a = platform;
        b = s;
        super();
    }

    public void run()
    {
        Object obj = i.a(a);
        obj = ((i) (obj)).a(a.getContext(), b);
_L2:
        if (obj != null)
        {
            break; /* Loop/switch isn't completed */
        }
        Bundle bundle;
        try
        {
            f.b(c).onError(new Throwable("Authorize token is empty"));
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
        break MISSING_BLOCK_LABEL_169;
        obj;
        f.a(c).onError(((Throwable) (obj)));
        obj = null;
        if (true) goto _L2; else goto _L1
_L1:
        obj = (new Hashon()).fromJson(((String) (obj)));
        bundle = new Bundle();
        bundle.putString("access_token", String.valueOf(((HashMap) (obj)).get("access_token")));
        bundle.putString("remind_in", String.valueOf(((HashMap) (obj)).get("remind_in")));
        bundle.putString("expires_in", String.valueOf(((HashMap) (obj)).get("expires_in")));
        bundle.putString("uid", String.valueOf(((HashMap) (obj)).get("uid")));
        f.c(c).onComplete(bundle);
        return;
    }
}
