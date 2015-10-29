// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;


// Referenced classes of package im.yixin.sdk.api:
//            BaseReq, BaseResp

public interface IYXAPICallbackEventHandler
{

    public abstract void onReq(BaseReq basereq);

    public abstract void onResp(BaseResp baseresp);
}
