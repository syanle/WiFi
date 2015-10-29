// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;

// Referenced classes of package com.baidu.location:
//            ax, n, LLSInterface, t, 
//            ah, ae, q, k, 
//            ar, az, x, r, 
//            ay, y, aw, aa, 
//            d, ao, h, u, 
//            ak, a0, f, au

public class ab extends Service
    implements ax, n, LLSInterface
{
    public class a extends Handler
    {

        final ab a;

        public void handleMessage(Message message)
        {
            if (!ab.gv) goto _L2; else goto _L1
_L1:
            message.what;
            JVM INSTR lookupswitch 15: default 140
        //                       11: 175
        //                       12: 186
        //                       15: 197
        //                       22: 219
        //                       25: 239
        //                       28: 229
        //                       41: 249
        //                       57: 208
        //                       110: 258
        //                       111: 267
        //                       201: 276
        //                       202: 285
        //                       203: 294
        //                       206: 304
        //                       207: 317;
               goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17
_L2:
            if (message.what == 0)
            {
                ab._mthdo(a);
            }
            if (message.what == 1)
            {
                ab._mthif(a);
            }
            super.handleMessage(message);
            return;
_L3:
            ab._mthfor(a, message);
            continue; /* Loop/switch isn't completed */
_L4:
            ab._mthif(a, message);
            continue; /* Loop/switch isn't completed */
_L5:
            ab._mthdo(a, message);
            continue; /* Loop/switch isn't completed */
_L10:
            ab._mthint(a, message);
            continue; /* Loop/switch isn't completed */
_L6:
            ah.ay()._mthcase(message);
            continue; /* Loop/switch isn't completed */
_L8:
            ay.cd().j(message);
            continue; /* Loop/switch isn't completed */
_L7:
            u.aG()._mthlong(message);
            continue; /* Loop/switch isn't completed */
_L9:
            ah.ay().aw();
            continue; /* Loop/switch isn't completed */
_L11:
            ae.bp().bt();
            continue; /* Loop/switch isn't completed */
_L12:
            ae.bp().br();
            continue; /* Loop/switch isn't completed */
_L13:
            ak.a()._mthdo();
            continue; /* Loop/switch isn't completed */
_L14:
            ak.a()._mthif();
            continue; /* Loop/switch isn't completed */
_L15:
            ak.a().a(message);
            continue; /* Loop/switch isn't completed */
_L16:
            a0.cq()._mthif(f.getServiceContext(), message);
            continue; /* Loop/switch isn't completed */
_L17:
            au._mthint(f.getServiceContext());
            if (true) goto _L2; else goto _L18
_L18:
        }

        public a(Looper looper)
        {
            a = ab.this;
            super(looper);
        }
    }


    private static long gC = 0L;
    static a gD = null;
    public static boolean gE;
    public static boolean gv = false;
    public static long gw;
    private static Context gy = null;
    private HandlerThread gA;
    private Looper gB;
    private boolean gx;
    Messenger gz;

    public ab()
    {
        gz = null;
        gx = false;
    }

    public static long bi()
    {
        return gC;
    }

    public static Handler bj()
    {
        return gD;
    }

    private void bk()
    {
        t.an().as();
        ah.ay().ax();
        ae.bp().br();
        q.w();
        k.p().n();
        if (!gx)
        {
            Process.killProcess(Process.myPid());
        }
    }

    private void bl()
    {
        gv = true;
        t.an().am();
        ar.bW().b2();
        az.cn();
        x.a4().aU();
        r.H().K();
        ah.ay().aC();
        ay.cd().ci();
        y.a7().a8();
        aw._mthdo()._mthfor();
        aa.bg().bh();
    }

    private void d(Message message)
    {
        if (message != null)
        {
            if (message.obj == null);
        }
    }

    static void _mthdo(ab ab1)
    {
        ab1.bl();
    }

    static void _mthdo(ab ab1, Message message)
    {
        ab1.i(message);
    }

    private void e(Message message)
    {
        k.p()._mthdo(message);
    }

    static void _mthfor(ab ab1, Message message)
    {
        ab1.h(message);
    }

    private void h(Message message)
    {
        k.p()._mthnew(message);
        y.a7().a9();
        com.baidu.location.d.X().Z();
    }

    private void i(Message message)
    {
        k.p()._mthint(message);
    }

    static void _mthif(ab ab1)
    {
        ab1.bk();
    }

    static void _mthif(ab ab1, Message message)
    {
        ab1.e(message);
    }

    static void _mthint(ab ab1, Message message)
    {
        ab1.d(message);
    }

    public double getVersion()
    {
        return 4.1999998092651367D;
    }

    public IBinder onBind(Intent intent)
    {
        intent = intent.getExtras();
        boolean flag = false;
        if (intent != null)
        {
            flag = intent.getBoolean("cache_exception");
            gx = intent.getBoolean("kill_process");
            gE = intent.getBoolean("debug_dev");
            gw = intent.getLong("interval");
        }
        if (!flag)
        {
            Thread.setDefaultUncaughtExceptionHandler(aa.bg());
        }
        return gz.getBinder();
    }

    public void onCreate(Context context)
    {
        gC = System.currentTimeMillis();
        gy = context;
        gA = ao.a();
        gB = gA.getLooper();
        gD = new a(gB);
        gz = new Messenger(gD);
        gD.sendEmptyMessage(0);
        Log.d("baidu_location_service", (new StringBuilder()).append("baidu location service start1 ...").append(Process.myPid()).toString());
    }

    public void onDestroy()
    {
        gv = false;
        ar.bW().bT();
        com.baidu.location.h._mthfor()._mthdo();
        r.H().G();
        x.a4().aW();
        aw._mthdo()._mthif();
        gD.sendEmptyMessage(1);
        Log.d("baidu_location_service", "baidu location service stop ...");
    }

    public int onStartCommand(Intent intent, int j, int l)
    {
        return 1;
    }

    public boolean onUnBind(Intent intent)
    {
        return false;
    }

}
