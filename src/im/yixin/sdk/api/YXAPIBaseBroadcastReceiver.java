// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.channel.YXMessageProtocol;
import im.yixin.sdk.channel.YXMessageUtil;
import im.yixin.sdk.util.SDKLogger;
import java.util.Date;

// Referenced classes of package im.yixin.sdk.api:
//            YXAPIFactory, IYXAPI

public abstract class YXAPIBaseBroadcastReceiver extends BroadcastReceiver
{

    public YXAPIBaseBroadcastReceiver()
    {
    }

    protected abstract String getAppId();

    protected void onAfterYixinStart(YXMessageProtocol yxmessageprotocol)
    {
    }

    protected void onOtherYixinNotify(YXMessageProtocol yxmessageprotocol, Bundle bundle)
    {
    }

    public final void onReceive(Context context, Intent intent)
    {
        YXMessageProtocol yxmessageprotocol = YXMessageProtocol.parseProtocol(intent);
        if (yxmessageprotocol == null || !yxmessageprotocol.isValid())
        {
            SDKLogger.i(im/yixin/sdk/api/YXAPIBaseBroadcastReceiver, "data received, but !protocol.isValid()");
            return;
        }
        SDKLogger.i(im/yixin/sdk/api/YXAPIBaseBroadcastReceiver, (new StringBuilder()).append("Client data received@").append(new Date()).append(": PackageName=").append(context.getPackageName()).append(",AppId=").append(yxmessageprotocol.getAppId()).append(",Command=").append(yxmessageprotocol.getCommand()).append(",SdkVersion=").append(yxmessageprotocol.getSdkVersion()).append(",appPackage=").append(yxmessageprotocol.getAppPackage()).toString());
        if ("yixinlaunch".equalsIgnoreCase(yxmessageprotocol.getCommand()))
        {
            intent = getAppId();
            if (YXMessageUtil.isBlank(intent))
            {
                SDKLogger.e(im/yixin/sdk/api/YXAPIBaseBroadcastReceiver, (new StringBuilder()).append("Error app id\uFF0C appid=").append(intent).toString());
            } else
            {
                YXAPIFactory.createYXAPI(context, intent).registerApp();
            }
            onAfterYixinStart(yxmessageprotocol);
            return;
        } else
        {
            onOtherYixinNotify(yxmessageprotocol, intent.getExtras());
            return;
        }
    }
}
