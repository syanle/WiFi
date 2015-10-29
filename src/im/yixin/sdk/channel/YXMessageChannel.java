// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.channel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import im.yixin.sdk.util.SDKLogger;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package im.yixin.sdk.channel:
//            YXMessageUtil

public class YXMessageChannel
{
    public static interface CallBack
    {

        public abstract void handleMessage(Intent intent);
    }

    public static final class Receiver extends BroadcastReceiver
    {

        public static final Map callbacks = new HashMap();
        private final CallBack defaultCallback;

        public static void registerCallBack(String s, CallBack callback)
        {
            callbacks.put(s, callback);
        }

        public static void unregisterCallBack(String s)
        {
            callbacks.remove(s);
        }

        public final void onReceive(Context context, Intent intent)
        {
            if (defaultCallback != null)
            {
                defaultCallback.handleMessage(intent);
            } else
            {
                context = (CallBack)callbacks.get(intent.getAction());
                if (context != null)
                {
                    context.handleMessage(intent);
                    return;
                }
            }
        }


        public Receiver()
        {
            this(null);
        }

        public Receiver(CallBack callback)
        {
            defaultCallback = callback;
        }
    }


    public YXMessageChannel()
    {
    }

    public static void sendData2Yixin(Context context, String s, String s1, String s2)
    {
        sendData2Yixin(context, s, s1, s2, null);
    }

    public static boolean sendData2Yixin(Context context, String s, String s1, String s2, Bundle bundle)
    {
        SDKLogger.i(im/yixin/sdk/channel/YXMessageChannel, (new StringBuilder()).append("send@").append(new Date()).append(": action=").append(s1).append(",protocolData=").append(s2).append(",package=").append(context.getPackageName()).toString());
        s = new Intent(s1);
        if (bundle != null)
        {
            s.putExtras(bundle);
        }
        bundle = context.getPackageName();
        s.putExtra("_yxmessage_sdkVersion", 10000L);
        s.putExtra("_yxmessage_appPackage", bundle);
        s.putExtra("_yxmessage_content", s2);
        s.putExtra("_yxmessage_checksum", YXMessageUtil.generateCheckSum(s2, bundle));
        context.sendBroadcast(s, "im.yixin.sdk.permission.YIXIN_SDK_MESSAGE");
        SDKLogger.i(im/yixin/sdk/channel/YXMessageChannel, (new StringBuilder()).append("send success: action=").append(s1).append(",protocolData=").append(s2).append(",package=").append(context.getPackageName()).append(", intent=").append(s1).append(", perm=").append("im.yixin.sdk.permission.YIXIN_SDK_MESSAGE").toString());
        return true;
    }
}
