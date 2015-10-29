// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component.sso;


// Referenced classes of package com.tencent.weibo.sdk.android.component.sso:
//            WeiboToken

public interface OnAuthListener
{

    public abstract void onAuthFail(int i, String s);

    public abstract void onAuthPassed(String s, WeiboToken weibotoken);

    public abstract void onWeiBoNotInstalled();

    public abstract void onWeiboVersionMisMatch();
}
