// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import com.umeng.common.Log;

// Referenced classes of package com.umeng.common.net:
//            b, DownloadingService, k

public class com.umeng.common.net.a
{
    static class a
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f[];
        public boolean g;
        public boolean h;
        public boolean i;

        public static a a(Bundle bundle)
        {
            a a1 = new a(bundle.getString("mComponentName"), bundle.getString("mTitle"), bundle.getString("mUrl"));
            a1.d = bundle.getString("mMd5");
            a1.e = bundle.getString("mTargetMd5");
            a1.f = bundle.getStringArray("reporturls");
            a1.g = bundle.getBoolean("rich_notification");
            a1.h = bundle.getBoolean("mSilent");
            a1.i = bundle.getBoolean("mWifiOnly");
            return a1;
        }

        public Bundle a()
        {
            Bundle bundle = new Bundle();
            bundle.putString("mComponentName", a);
            bundle.putString("mTitle", b);
            bundle.putString("mUrl", c);
            bundle.putString("mMd5", d);
            bundle.putString("mTargetMd5", e);
            bundle.putStringArray("reporturls", f);
            bundle.putBoolean("rich_notification", g);
            bundle.putBoolean("mSilent", h);
            bundle.putBoolean("mWifiOnly", i);
            return bundle;
        }

        public a(String s, String s1, String s2)
        {
            f = null;
            g = false;
            h = false;
            i = false;
            a = s;
            b = s1;
            c = s2;
        }
    }

    class b extends Handler
    {

        final com.umeng.common.net.a a;

        public void handleMessage(Message message)
        {
            Log.c(com.umeng.common.net.a.b(), (new StringBuilder()).append("DownloadAgent.handleMessage(").append(message.what).append("): ").toString());
            message.what;
            JVM INSTR tableswitch 1 5: default 296
        //                       1 78
        //                       2 279
        //                       3 147
        //                       4 72
        //                       5 174;
               goto _L1 _L2 _L3 _L4 _L1 _L5
_L1:
            super.handleMessage(message);
            return;
_L2:
            try
            {
                if (com.umeng.common.net.a.a(a) != null)
                {
                    com.umeng.common.net.a.a(a).a();
                    return;
                }
                break; /* Loop/switch isn't completed */
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                Log.c(com.umeng.common.net.a.b(), (new StringBuilder()).append("DownloadAgent.handleMessage(").append(message.what).append("): ").append(exception.getMessage()).toString());
                return;
            }
_L4:
            if (com.umeng.common.net.a.a(a) != null)
            {
                com.umeng.common.net.a.a(a).a(message.arg1);
                return;
            }
            break; /* Loop/switch isn't completed */
_L5:
            com.umeng.common.net.a.c(a).unbindService(com.umeng.common.net.a.b(a));
            if (com.umeng.common.net.a.a(a) == null)
            {
                break; /* Loop/switch isn't completed */
            }
            if (message.arg1 == 1 || message.arg1 == 3 || message.arg1 == 5)
            {
                com.umeng.common.net.a.a(a).a(message.arg1, message.arg2, message.getData().getString("filename"));
                return;
            }
            com.umeng.common.net.a.a(a).a(0, 0, null);
            Log.c(com.umeng.common.net.a.b(), "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): ");
            return;
_L3:
            com.umeng.common.net.a.a(a).b(message.arg1);
            return;
        }

        b()
        {
            a = com.umeng.common.net.a.this;
            super();
        }
    }


    private static final String b = com/umeng/common/net/a.getName();
    final Messenger a = new Messenger(new b());
    private Context c;
    private k d;
    private Messenger e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k[];
    private boolean l;
    private boolean m;
    private boolean n;
    private ServiceConnection o;

    public com.umeng.common.net.a(Context context, String s, String s1, String s2, k k1)
    {
        l = false;
        m = false;
        n = false;
        o = new com.umeng.common.net.b(this);
        c = context.getApplicationContext();
        f = s;
        g = s1;
        h = s2;
        d = k1;
    }

    static Messenger a(com.umeng.common.net.a a1, Messenger messenger)
    {
        a1.e = messenger;
        return messenger;
    }

    static k a(com.umeng.common.net.a a1)
    {
        return a1.d;
    }

    static ServiceConnection b(com.umeng.common.net.a a1)
    {
        return a1.o;
    }

    static String b()
    {
        return b;
    }

    static Context c(com.umeng.common.net.a a1)
    {
        return a1.c;
    }

    static String d(com.umeng.common.net.a a1)
    {
        return a1.f;
    }

    static String e(com.umeng.common.net.a a1)
    {
        return a1.g;
    }

    static String f(com.umeng.common.net.a a1)
    {
        return a1.h;
    }

    static String g(com.umeng.common.net.a a1)
    {
        return a1.i;
    }

    static String h(com.umeng.common.net.a a1)
    {
        return a1.j;
    }

    static String[] i(com.umeng.common.net.a a1)
    {
        return a1.k;
    }

    static boolean j(com.umeng.common.net.a a1)
    {
        return a1.l;
    }

    static boolean k(com.umeng.common.net.a a1)
    {
        return a1.m;
    }

    static boolean l(com.umeng.common.net.a a1)
    {
        return a1.n;
    }

    static Messenger m(com.umeng.common.net.a a1)
    {
        return a1.e;
    }

    public void a()
    {
        Intent intent = new Intent(c, com/umeng/common/net/DownloadingService);
        c.bindService(intent, o, 1);
    }

    public void a(String s)
    {
        i = s;
    }

    public void a(boolean flag)
    {
        l = flag;
    }

    public void a(String as[])
    {
        k = as;
    }

    public void b(String s)
    {
        j = s;
    }

    public void b(boolean flag)
    {
        m = flag;
    }

    public void c(boolean flag)
    {
        n = flag;
    }

}
