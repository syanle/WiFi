// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.baidu.mapapi.utils.PermissionCheck;
import com.baidu.platform.comapi.c.c;
import com.baidu.platform.comjni.engine.AppEngine;
import com.baidu.vi.VMsg;
import com.baidu.vi.b;

// Referenced classes of package com.baidu.mapapi:
//            b

public class a
    implements com.baidu.mapapi.utils.PermissionCheck.c
{

    private static final String a = com/baidu/mapapi/a.getSimpleName();
    private static a f;
    private Context b;
    private Handler c;
    private com.baidu.platform.comapi.a d;
    private int e;

    private a()
    {
    }

    public static a a()
    {
        if (f == null)
        {
            f = new a();
        }
        return f;
    }

    private void e()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentfilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        if (b != null && d != null)
        {
            b.registerReceiver(d, intentfilter);
        }
    }

    private void f()
    {
        if (d != null && b != null)
        {
            b.unregisterReceiver(d);
        }
    }

    public void a(Context context)
    {
        b = context;
    }

    public void a(Message message)
    {
        if (message.what == 2012)
        {
            Intent intent = new Intent("permission check error");
            intent.putExtra("error_code", message.arg1);
            b.sendBroadcast(intent);
        } else
        {
            if (message.arg2 == 3)
            {
                Intent intent1 = new Intent("network error");
                b.sendBroadcast(intent1);
            }
            if (message.arg2 == 2 || message.arg2 == 404 || message.arg2 == 5 || message.arg2 == 8)
            {
                message = new Intent("network error");
                b.sendBroadcast(message);
                return;
            }
        }
    }

    public void a(com.baidu.mapapi.utils.PermissionCheck.b b1)
    {
        if (b1 == null)
        {
            return;
        }
        if (c != null && b1.a != 0)
        {
            Message.obtain(c, 2012, b1.a, b1.a, null).sendToTarget();
        }
        if (b1.a == 0)
        {
            c.F = b1.e;
            com.baidu.platform.comapi.c.c.a(b1.b, b1.c);
            return;
        } else
        {
            Log.e("baidumapsdk", (new StringBuilder()).append("Authentication Error ").append(b1.toString()).toString());
            return;
        }
    }

    public void b()
    {
        if (e == 0)
        {
            if (b == null)
            {
                throw new IllegalStateException("you have not supplyed the global app context info from SDKInitializer.initialize(Context) function.");
            }
            com.baidu.platform.comjni.engine.a.a(2000, c);
            c = new com.baidu.mapapi.b(this);
            com.baidu.platform.comapi.c.c.c(b);
            com.baidu.platform.comapi.c.c.d(b);
            com.baidu.vi.b.a(b);
            VMsg.init();
            AppEngine.InitEngine(b, com.baidu.platform.comapi.c.c.c());
            com.baidu.platform.comapi.c.c.e();
            com.baidu.platform.comapi.c.c.h();
            AppEngine.StartSocketProc();
            PermissionCheck.init(b);
            PermissionCheck.setPermissionCheckResultListener(this);
            d = new com.baidu.platform.comapi.a();
            e();
            com.baidu.platform.comapi.c.b.a(b);
        }
        e = e + 1;
    }

    public void c()
    {
        e = e - 1;
        if (e == 0)
        {
            com.baidu.platform.comjni.engine.a.b(2000, c);
            PermissionCheck.destory();
            f();
            VMsg.destroy();
            com.baidu.platform.comjni.engine.a.a();
            com.baidu.platform.comapi.c.c.b();
            AppEngine.UnInitEngine();
        }
    }

    public Context d()
    {
        if (b == null)
        {
            throw new IllegalStateException("you have not supplyed the global app context info from SDKInitializer.initialize(Context) function.");
        } else
        {
            return b;
        }
    }

    static 
    {
        System.loadLibrary("BaiduMapSDK_v3_2_0_15");
        AppEngine.InitClass();
    }
}
