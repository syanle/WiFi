// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.channel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.sdk.channel:
//            MMessageUtil

public class MMessage
{
    public static interface CallBack
    {

        public abstract void handleMessage(Intent intent);
    }

    public static final class Receiver extends BroadcastReceiver
    {

        public static final Map callbacks = new HashMap();
        private final CallBack o;

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
            Log.d("MicroMsg.SDK.MMessage", (new StringBuilder("receive intent=")).append(intent).toString());
            if (o != null)
            {
                o.handleMessage(intent);
                Log.d("MicroMsg.SDK.MMessage", "mm message self-handled");
            } else
            {
                context = (CallBack)callbacks.get(intent.getAction());
                if (context != null)
                {
                    context.handleMessage(intent);
                    Log.d("MicroMsg.SDK.MMessage", "mm message handled");
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
            o = callback;
        }
    }


    public MMessage()
    {
    }

    public static void send(Context context, String s, String s1)
    {
        send(context, s, "com.tencent.mm.sdk.channel.Intent.ACTION_MESSAGE", s1);
    }

    public static void send(Context context, String s, String s1, String s2)
    {
        send(context, s, s1, s2, null);
    }

    public static boolean send(Context context, String s, String s1, String s2, Bundle bundle)
    {
        s = (new StringBuilder()).append(s).append(".permission.MM_MESSAGE").toString();
        s1 = new Intent(s1);
        if (bundle != null)
        {
            s1.putExtras(bundle);
        }
        bundle = context.getPackageName();
        s1.putExtra("_mmessage_sdkVersion", 0x21040001);
        s1.putExtra("_mmessage_appPackage", bundle);
        s1.putExtra("_mmessage_content", s2);
        s1.putExtra("_mmessage_checksum", MMessageUtil.a(s2, bundle));
        context.sendBroadcast(s1, s);
        Log.d("MicroMsg.SDK.MMessage", (new StringBuilder("send mm message, intent=")).append(s1).append(", perm=").append(s).toString());
        return true;
    }
}
