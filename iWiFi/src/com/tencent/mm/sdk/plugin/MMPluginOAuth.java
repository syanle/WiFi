// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

public class MMPluginOAuth
{
    public static interface IResult
    {

        public abstract void onResult(MMPluginOAuth mmpluginoauth);

        public abstract void onSessionTimeOut();
    }

    public static class Receiver extends BroadcastReceiver
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
                final Receiver bN;

                public void run()
                {
                    MMPluginOAuth.a(bL, bM);
                }

                _cls1(String s)
                {
                    bN = Receiver.this;
                    bL = MMPluginOAuth.this;
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
            (new Handler()).post(context. new _cls1(intent));
        }


        public Receiver()
        {
            this(null);
        }

        public Receiver(MMPluginOAuth mmpluginoauth)
        {
            bK = mmpluginoauth;
        }
    }


    private final IResult bG;
    private String bH;
    private String bI;
    private Handler handler;
    private final Context q;

    public MMPluginOAuth(Context context, IResult iresult)
    {
        q = context;
        bG = iresult;
    }

    static String a(MMPluginOAuth mmpluginoauth)
    {
        return mmpluginoauth.bI;
    }

    static void a(MMPluginOAuth mmpluginoauth, String s)
    {
        Receiver.unregister(mmpluginoauth.bI);
        mmpluginoauth.bH = s;
        Log.i("MicroMsg.SDK.MMPluginOAuth", (new StringBuilder("access token: ")).append(s).toString());
        if (mmpluginoauth.bG != null)
        {
            mmpluginoauth.bG.onResult(mmpluginoauth);
        }
    }

    static IResult b(MMPluginOAuth mmpluginoauth)
    {
        return mmpluginoauth.bG;
    }

    public String getAccessToken()
    {
        return bH;
    }

    public String getRequestToken()
    {
        return bI;
    }

    public void start()
    {
        start(null);
    }

    public boolean start(Handler handler1)
    {
        Handler handler2 = handler1;
        if (handler1 == null)
        {
            handler2 = new Handler();
        }
        handler = handler2;
        handler1 = q.getContentResolver().query(MMPluginProviderConstants.OAuth.CONTENT_URI, null, null, new String[] {
            q.getPackageName(), "request_token"
        }, null);
        if (handler1 != null)
        {
            if (handler1.moveToFirst() && handler1.getColumnCount() >= 2)
            {
                bI = handler1.getString(0);
                bH = handler1.getString(1);
            }
            handler1.close();
        }
        Log.i("MicroMsg.SDK.MMPluginOAuth", (new StringBuilder("request token = ")).append(bI).toString());
        if (bI == null)
        {
            Log.e("MicroMsg.SDK.MMPluginOAuth", "request token failed");
            return false;
        }
        if (bH != null)
        {
            handler.post(new _cls1());
            return true;
        }
        Log.d("MicroMsg.SDK.MMPluginOAuth", "begin to show user oauth page");
        handler1 = new Intent();
        handler1.setClassName("com.tencent.mm", "com.tencent.mm.plugin.PluginOAuthUI");
        handler1.putExtra("com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN", bI);
        handler1.putExtra("com.tencent.mm.sdk.plugin.Intent.PACKAGE", q.getPackageName());
        boolean flag;
        if (q.getPackageManager().resolveActivity(handler1, 0x10000) == null)
        {
            Log.e("MicroMsg.SDK.MMPluginOAuth", "show oauth page failed, activity not found");
            flag = false;
        } else
        {
            if (!(q instanceof Activity))
            {
                handler1.setFlags(0x10000000);
            }
            q.startActivity(handler1);
            flag = true;
        }
        if (flag)
        {
            Receiver.register(bI, this);
            return true;
        } else
        {
            return false;
        }
    }

    private class _cls1
        implements Runnable
    {

        final MMPluginOAuth bJ;

        public void run()
        {
            if (MMPluginOAuth.b(bJ) != null)
            {
                MMPluginOAuth.b(bJ).onResult(bJ);
            }
        }

        _cls1()
        {
            bJ = MMPluginOAuth.this;
            super();
        }
    }

}
