// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.channel;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.util.SDKLogger;
import java.util.Date;

// Referenced classes of package im.yixin.sdk.channel:
//            YXMessageUtil

public class YXMessageActivityChannel
{

    public YXMessageActivityChannel()
    {
    }

    public static boolean sendData2Yixin(Context context, String s, String s1, String s2, Bundle bundle)
    {
        if (context == null || s == null || s.length() == 0 || s1 == null || s1.length() == 0)
        {
            SDKLogger.i(im/yixin/sdk/channel/YXMessageActivityChannel, (new StringBuilder()).append("sendToYx fail - invalid arguments: action=").append(s1).append(",protocolData=").append(s2).append(", intent=").append(s1).toString());
            return false;
        }
        SDKLogger.i(im/yixin/sdk/channel/YXMessageActivityChannel, (new StringBuilder()).append("sendToYx@").append(new Date()).append(": action=").append(s1).append(",protocolData=").append(s2).append(",package=").append(context.getPackageName()).append(", intent=").append(s1).toString());
        Intent intent = new Intent();
        intent.setClassName(s, s1);
        if (bundle != null)
        {
            intent.putExtras(bundle);
        }
        s = context.getPackageName();
        intent.putExtra("_yxmessage_sdkVersion", 10000L);
        intent.putExtra("_yxmessage_appPackage", s);
        intent.putExtra("_yxmessage_content", s2);
        intent.putExtra("_yxmessage_checksum", YXMessageUtil.generateCheckSum(s2, s));
        intent.addFlags(0x10000000);
        intent.addFlags(0x8000000);
        try
        {
            context.startActivity(intent);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            SDKLogger.e(im/yixin/sdk/channel/YXMessageActivityChannel, (new StringBuilder()).append("sendToYx Failed -  target ActivityNotFound: action=").append(s1).append(",protocolData=").append(s2).append(",package=").append(context.getPackageName()).append(", intent=").append(s1).toString());
            return false;
        }
        SDKLogger.i(im/yixin/sdk/channel/YXMessageActivityChannel, (new StringBuilder()).append("sendToYx success: action=").append(s1).append(",protocolData=").append(s2).append(",package=").append(context.getPackageName()).append(", intent=").append(s1).toString());
        return true;
    }
}
