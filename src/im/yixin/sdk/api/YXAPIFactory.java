// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.content.Context;
import im.yixin.sdk.channel.YXMessageUtil;
import im.yixin.sdk.util.SDKLogger;

// Referenced classes of package im.yixin.sdk.api:
//            YXApiImplementation, IYXAPI

public final class YXAPIFactory
{

    private static IYXAPI instance = null;

    public YXAPIFactory()
    {
    }

    public static IYXAPI createYXAPI(Context context, String s)
    {
        if (context == null || YXMessageUtil.isBlank(s))
        {
            SDKLogger.e(im/yixin/sdk/api/YXAPIFactory, "Error param: paramContext == null || YXMessageUtil.isBlank(paramAppId)");
            return null;
        }
        if (instance == null)
        {
            instance = new YXApiImplementation(context, s);
            SDKLogger.i(im/yixin/sdk/api/YXAPIFactory, (new StringBuilder()).append("createYXAPI called: PackageName=").append(context.getPackageName()).append(",paramAppId=").append(s).toString());
        }
        return instance;
    }

    public static IYXAPI getInstance()
    {
        return instance;
    }

}
