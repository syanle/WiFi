// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.content.Intent;

// Referenced classes of package im.yixin.sdk.api:
//            IYXAPICallbackEventHandler, BaseReq

public interface IYXAPI
{

    public abstract String getAppId();

    public abstract boolean handleIntent(Intent intent, IYXAPICallbackEventHandler iyxapicallbackeventhandler);

    public abstract boolean isYXAppInstalled();

    public abstract boolean registerApp();

    public abstract boolean sendRequest(BaseReq basereq);

    public abstract void unRegisterApp();
}
