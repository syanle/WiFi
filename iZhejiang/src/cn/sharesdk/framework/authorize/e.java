// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.content.Intent;
import cn.sharesdk.framework.Platform;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            a, f, AuthorizeHelper, AuthorizeListener, 
//            SSOListener

public class e extends a
{

    protected SSOListener b;
    private f c;

    public e()
    {
    }

    public void a(SSOListener ssolistener)
    {
        b = ssolistener;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        c.a(i, j, intent);
    }

    public void onCreate()
    {
        c = a.getSSOProcessor(this);
        if (c == null)
        {
            finish();
            AuthorizeListener authorizelistener = a.getAuthorizeListener();
            if (authorizelistener != null)
            {
                authorizelistener.onError(new Throwable((new StringBuilder()).append("Failed to start SSO for ").append(a.getPlatform().getName()).toString()));
            }
            return;
        } else
        {
            c.a(32973);
            c.a();
            return;
        }
    }

    protected void onNewIntent(Intent intent)
    {
        c.a(intent);
    }
}
