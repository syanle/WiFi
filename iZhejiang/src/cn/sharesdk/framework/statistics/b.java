// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.statistics.b.c;
import cn.sharesdk.framework.statistics.b.e;
import cn.sharesdk.framework.statistics.b.g;
import com.mob.tools.SSDKHandlerThread;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Ln;
import java.io.PrintStream;
import java.util.Calendar;

// Referenced classes of package cn.sharesdk.framework.statistics:
//            a, NewAppReceiver

public class b extends SSDKHandlerThread
{

    private static b a;
    private Context b;
    private DeviceHelper c;
    private a d;
    private String e;
    private Handler f;
    private boolean g;
    private int h;
    private boolean i;
    private long j;
    private boolean k;

    private b(Context context)
    {
        super((new StringBuilder()).append("Thread-").append(Math.abs(4736)).toString());
        b = context;
        c = DeviceHelper.getInstance(context);
        d = cn.sharesdk.framework.statistics.a.a(context);
    }

    public static b a(Context context)
    {
        cn/sharesdk/framework/statistics/b;
        JVM INSTR monitorenter ;
        b b1 = a;
        if (b1 != null) goto _L2; else goto _L1
_L1:
        if (context != null) goto _L4; else goto _L3
_L3:
        context = null;
_L6:
        cn/sharesdk/framework/statistics/b;
        JVM INSTR monitorexit ;
        return context;
_L4:
        a = new b(context.getApplicationContext());
_L2:
        context = a;
        if (true) goto _L6; else goto _L5
_L5:
        context;
        throw context;
    }

    private void a()
    {
        boolean flag = b();
        if (flag)
        {
            if (!k)
            {
                k = flag;
                j = System.currentTimeMillis();
                a(((c) (new g())));
            }
        } else
        if (k)
        {
            k = flag;
            long l = System.currentTimeMillis();
            long l1 = j;
            e e1 = new e();
            e1.a = l - l1;
            a(((c) (e1)));
            return;
        }
    }

    private void b(c c1)
    {
        c1.f = c.getDeviceKey();
        c1.g = e;
        c1.h = c.getPackageName();
        c1.i = c.getAppVersion();
        c1.j = String.valueOf(50000 + h);
        c1.k = c.getPlatformCode();
        c1.l = c.getDetailNetworkTypeForStatic();
        if (!"cn.sharesdk.demo".equals(c1.h) && "api20".equals(e) && ShareSDK.isDebug())
        {
            System.err.println("Your application is using the appkey of ShareSDK Demo, this will cause its data won't be count!");
        }
        c1.m = c.getDeviceData();
    }

    private boolean b()
    {
        Object obj = DeviceHelper.getInstance(b);
        String s = ((DeviceHelper) (obj)).getTopTaskPackageName();
        obj = ((DeviceHelper) (obj)).getPackageName();
        return obj != null && ((String) (obj)).equals(s);
    }

    private void c()
    {
        try
        {
            cn.sharesdk.framework.statistics.a.a(b).a();
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
    }

    private void c(c c1)
    {
        try
        {
            d.a(c1);
            c1.b(b);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
        Ln.e(c1.toString(), new Object[0]);
    }

    public void a(int l)
    {
        h = l;
    }

    public void a(Handler handler)
    {
        f = handler;
    }

    public void a(c c1)
    {
        Message message;
        if (!i)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        b(c1);
        if (!c1.a(b))
        {
            break MISSING_BLOCK_LABEL_58;
        }
        message = new Message();
        message.what = 3;
        message.obj = c1;
        handler.sendMessage(message);
        return;
        c1;
        Ln.e(c1);
        return;
        Ln.d((new StringBuilder()).append("Drop event: ").append(c1.toString()).toString(), new Object[0]);
        return;
    }

    public void a(String s)
    {
        e = s;
    }

    public void a(boolean flag)
    {
        g = flag;
    }

    protected void onMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 56
    //                   2 80
    //                   3 37
    //                   4 104;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L4:
        if (message.obj != null)
        {
            c((c)message.obj);
            return;
        }
          goto _L1
_L2:
        a();
        try
        {
            handler.sendEmptyMessageDelayed(1, 100L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            Ln.e(message);
        }
        return;
_L3:
        c();
        try
        {
            handler.sendEmptyMessageDelayed(2, 10000L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            Ln.e(message);
        }
        return;
_L5:
        long l2 = cn.sharesdk.framework.statistics.a.c.a(b).g().longValue();
        message = Calendar.getInstance();
        message.setTimeInMillis(l2);
        int l = message.get(1);
        int i1 = message.get(2);
        int j1 = message.get(5);
        message.setTimeInMillis(System.currentTimeMillis());
        int k1 = message.get(1);
        int l1 = message.get(2);
        int i2 = message.get(5);
        if (l != k1 || i1 != l1 || j1 != i2)
        {
            d.b(e);
        } else
        {
            d.d(e);
        }
        handler.sendEmptyMessageDelayed(4, 0x36ee80L);
        return;
    }

    protected void onStart(Message message)
    {
        if (!i)
        {
            i = true;
            d.a(e);
            d.b(e);
            handler.sendEmptyMessageDelayed(4, 0x36ee80L);
            d.a(g);
            handler.sendEmptyMessage(1);
            handler.sendEmptyMessage(2);
            NewAppReceiver.a(b);
        }
    }

    protected void onStop(Message message)
    {
        if (i)
        {
            long l = System.currentTimeMillis();
            long l1 = j;
            message = new e();
            message.a = l - l1;
            a(message);
            i = false;
            try
            {
                f.sendEmptyMessage(1);
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                Ln.e(message);
            }
            a = null;
            handler.getLooper().quit();
        }
    }
}
