// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.sdk.plugin:
//            MMPluginOAuth

public static class bK extends BroadcastReceiver
{

    private static final Map ah = new HashMap();
    private final MMPluginOAuth bK;

    public static void register(String s, MMPluginOAuth mmpluginoauth)
    {
        ah.put(s, mmpluginoauth);
    }

    public static void unregister(String s)
    {
        ah.remove(s);
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.d("MicroMsg.SDK.MMPluginOAuth", "receive oauth result");
        String s = intent.getStringExtra("com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN");
        intent = intent.getStringExtra("com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN");
        class _cls1
            implements Runnable
        {

            final MMPluginOAuth bL;
            final String bM;
            final MMPluginOAuth.Receiver bN;

            public void run()
            {
                MMPluginOAuth.a(bL, bM);
            }

            _cls1(MMPluginOAuth mmpluginoauth, String s)
            {
                bN = MMPluginOAuth.Receiver.this;
                bL = mmpluginoauth;
                bM = s;
                super();
            }
        }

        if (bK != null)
        {
            context = bK;
        } else
        {
            context = (MMPluginOAuth)ah.get(s);
            if (context == null)
            {
                Log.e("MicroMsg.SDK.MMPluginOAuth", (new StringBuilder("oauth unregistered, request token = ")).append(s).toString());
                return;
            }
            unregister(MMPluginOAuth.a(context));
        }
        (new Handler()).post(new _cls1(context, intent));
    }


    public _cls1()
    {
        this(null);
    }

    public <init>(MMPluginOAuth mmpluginoauth)
    {
        bK = mmpluginoauth;
    }
}
