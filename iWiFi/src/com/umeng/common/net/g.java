// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.NotificationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import com.umeng.common.Log;
import java.util.Map;

// Referenced classes of package com.umeng.common.net:
//            DownloadingService, d, c

class g
    implements DownloadingService.a
{

    SparseArray a;
    final DownloadingService b;

    g(DownloadingService downloadingservice)
    {
        b = downloadingservice;
        super();
        a = new SparseArray();
    }

    public void a(int i)
    {
        boolean flag = false;
        if (DownloadingService.c().indexOfKey(i) >= 0)
        {
            d.b b1 = (d.b)DownloadingService.c().get(i);
            long al[] = b1.f;
            int j = ((flag) ? 1 : 0);
            if (al != null)
            {
                j = ((flag) ? 1 : 0);
                if (al[1] > 0L)
                {
                    int k = (int)(((float)al[0] / (float)al[1]) * 100F);
                    j = k;
                    if (k > 100)
                    {
                        j = 99;
                    }
                }
            }
            if (!b1.e.h)
            {
                a.put(i, Long.valueOf(-1L));
                d.a a1 = DownloadingService.a(b).a(b, b1.e, i, j);
                b1.b = a1;
                DownloadingService.c(b).notify(i, a1.d());
            }
        }
    }

    public void a(int i, int j)
    {
        if (DownloadingService.c().indexOfKey(i) >= 0)
        {
            Object obj = (d.b)DownloadingService.c().get(i);
            a.a a1 = ((d.b) (obj)).e;
            long l = System.currentTimeMillis();
            if (!a1.h && l - ((Long)a.get(i)).longValue() > 500L)
            {
                a.put(i, Long.valueOf(l));
                obj = ((d.b) (obj)).b;
                ((d.a) (obj)).a(100, j, false).a((new StringBuilder()).append(String.valueOf(j)).append("%").toString());
                DownloadingService.c(b).notify(i, ((d.a) (obj)).d());
            }
            Log.c(DownloadingService.a(), String.format("%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s", new Object[] {
                Integer.valueOf(i), Integer.valueOf(j), a1.b
            }));
        }
    }

    public void a(int i, Exception exception)
    {
        if (DownloadingService.c().indexOfKey(i) >= 0)
        {
            DownloadingService.a(b).a(DownloadingService.b(b), DownloadingService.c(), DownloadingService.b(), i);
        }
    }

    public void a(int i, String s)
    {
        Object obj;
        Bundle bundle;
label0:
        {
            if (DownloadingService.c().indexOfKey(i) >= 0)
            {
                obj = (d.b)DownloadingService.c().get(i);
                if (obj != null)
                {
                    obj = ((d.b) (obj)).e;
                    c.a(DownloadingService.b(b)).a(((a.a) (obj)).a, ((a.a) (obj)).c, 100);
                    bundle = new Bundle();
                    bundle.putString("filename", s);
                    if (!((a.a) (obj)).a.equalsIgnoreCase("delta_update"))
                    {
                        break label0;
                    }
                    s = Message.obtain();
                    s.what = 6;
                    s.arg1 = 1;
                    s.obj = obj;
                    s.arg2 = i;
                    s.setData(bundle);
                    DownloadingService.d(b).sendMessage(s);
                }
            }
            return;
        }
        s = Message.obtain();
        s.what = 5;
        s.arg1 = 1;
        s.obj = obj;
        s.arg2 = i;
        s.setData(bundle);
        DownloadingService.d(b).sendMessage(s);
        s = Message.obtain();
        s.what = 5;
        s.arg1 = 1;
        s.arg2 = i;
        s.setData(bundle);
        try
        {
            if (DownloadingService.b().get(obj) != null)
            {
                ((Messenger)DownloadingService.b().get(obj)).send(s);
            }
            DownloadingService.a(b).a(DownloadingService.b(b), DownloadingService.c(), DownloadingService.b(), i);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            DownloadingService.a(b).a(DownloadingService.b(b), DownloadingService.c(), DownloadingService.b(), i);
        }
    }
}
