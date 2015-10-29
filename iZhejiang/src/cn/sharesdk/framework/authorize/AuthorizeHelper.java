// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import cn.sharesdk.framework.Platform;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            AuthorizeListener, g, b, SSOListener, 
//            e, f

public interface AuthorizeHelper
{

    public abstract AuthorizeListener getAuthorizeListener();

    public abstract String getAuthorizeUrl();

    public abstract b getAuthorizeWebviewClient(g g);

    public abstract Platform getPlatform();

    public abstract String getRedirectUri();

    public abstract SSOListener getSSOListener();

    public abstract f getSSOProcessor(e e);
}
