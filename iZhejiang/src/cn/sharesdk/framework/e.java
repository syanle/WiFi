// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.f;
import cn.sharesdk.framework.authorize.g;

// Referenced classes of package cn.sharesdk.framework:
//            Platform

public abstract class e
    implements AuthorizeHelper
{

    protected Platform a;
    private AuthorizeListener b;
    private SSOListener c;

    public e(Platform platform)
    {
        a = platform;
    }

    protected void a(SSOListener ssolistener)
    {
        c = ssolistener;
        cn.sharesdk.framework.authorize.e e1 = new cn.sharesdk.framework.authorize.e();
        e1.a(ssolistener);
        e1.a(this);
    }

    protected void b(AuthorizeListener authorizelistener)
    {
        b = authorizelistener;
        authorizelistener = new g();
        authorizelistener.a(b);
        authorizelistener.a(this);
    }

    public int c()
    {
        return a.getPlatformId();
    }

    public AuthorizeListener getAuthorizeListener()
    {
        return b;
    }

    public Platform getPlatform()
    {
        return a;
    }

    public SSOListener getSSOListener()
    {
        return c;
    }

    public f getSSOProcessor(cn.sharesdk.framework.authorize.e e1)
    {
        return null;
    }
}
