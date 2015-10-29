// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.umeng.common.Log;
import com.umeng.common.Res;
import com.umeng.common.a.a;
import com.umeng.common.a.b;
import com.umeng.common.a.c;
import com.umeng.common.util.DeltaUpdate;
import com.umeng.common.util.h;
import com.umeng.common.util.j;
import java.io.File;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

// Referenced classes of package com.umeng.common.net:
//            l, e, DownloadingService

class d
{
    static class a extends j
    {

        public a a()
        {
            b.contentView.setViewVisibility(com.umeng.common.a.a.e(a), 8);
            b.contentView.setViewVisibility(com.umeng.common.a.a.g(a), 8);
            return this;
        }

        public a a(int i, int k, boolean flag)
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                c.setProgress(i, k, flag);
            }
            b.contentView.setProgressBar(com.umeng.common.a.a.c(a), 100, k, false);
            return this;
        }

        public a a(PendingIntent pendingintent, PendingIntent pendingintent1)
        {
            b.contentView.setOnClickPendingIntent(com.umeng.common.a.a.e(a), pendingintent);
            b.contentView.setViewVisibility(com.umeng.common.a.a.e(a), 0);
            b.contentView.setViewVisibility(com.umeng.common.a.a.g(a), 0);
            b.contentView.setOnClickPendingIntent(com.umeng.common.a.a.g(a), pendingintent1);
            return this;
        }

        public a a(RemoteViews remoteviews)
        {
            b.contentView = remoteviews;
            return this;
        }

        public a a(CharSequence charsequence)
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                c.setContentText(charsequence);
            }
            b.contentView.setTextViewText(com.umeng.common.a.a.a(a), charsequence);
            return this;
        }

        public void a(int i, String s, PendingIntent pendingintent)
        {
            if (android.os.Build.VERSION.SDK_INT >= 16)
            {
                c.addAction(i, s, pendingintent);
            }
        }

        public a b()
        {
            int i = com.umeng.common.a.a.e(a);
            b.contentView.setTextViewText(i, a.getResources().getString(com.umeng.common.a.c.e(a.getApplicationContext())));
            b.contentView.setInt(i, "setBackgroundResource", Res.getInstance(a).c("umeng_common_gradient_green"));
            return this;
        }

        public a b(CharSequence charsequence)
        {
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                c.setContentTitle(charsequence);
            }
            b.contentView.setTextViewText(com.umeng.common.a.a.d(a), charsequence);
            return this;
        }

        public a c()
        {
            int i = com.umeng.common.a.a.e(a);
            b.contentView.setTextViewText(i, a.getResources().getString(com.umeng.common.a.c.d(a.getApplicationContext())));
            b.contentView.setInt(i, "setBackgroundResource", Res.getInstance(a).c("umeng_common_gradient_orange"));
            return this;
        }

        public Notification d()
        {
            if (android.os.Build.VERSION.SDK_INT >= 16)
            {
                return c.build();
            }
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                return c.getNotification();
            } else
            {
                return b;
            }
        }

        public a(Context context)
        {
            super(context);
        }
    }

    static class b
    {

        DownloadingService.b a;
        a b;
        int c;
        int d;
        a.a e;
        long f[];

        public void a(SparseArray sparsearray)
        {
            sparsearray.put(c, this);
        }

        public void b(SparseArray sparsearray)
        {
            if (sparsearray.indexOfKey(c) >= 0)
            {
                sparsearray.remove(c);
            }
        }

        public b(a.a a1, int i)
        {
            f = new long[3];
            c = i;
            e = a1;
        }
    }

    class c extends AsyncTask
    {

        public int a;
        public String b;
        final d c;
        private a.a d;
        private Context e;
        private NotificationManager f;
        private SparseArray g;
        private Map h;

        protected transient Integer a(String as[])
        {
            int i = DeltaUpdate.a(as[0], as[1], as[2]) + 1;
            (new File(as[2])).delete();
            if (i == 1)
            {
                if (!com.umeng.common.util.h.a(new File(as[1])).equalsIgnoreCase(d.e))
                {
                    Log.a(com.umeng.common.net.d.a(), "file patch error");
                    return Integer.valueOf(0);
                }
                Log.a(com.umeng.common.net.d.a(), "file patch success");
            } else
            {
                Log.a(com.umeng.common.net.d.a(), "file patch error");
            }
            return Integer.valueOf(i);
        }

        protected void a(Integer integer)
        {
            if (integer.intValue() == 1)
            {
                integer = new Notification(0x1080082, e.getString(com.umeng.common.a.c.k(e)), System.currentTimeMillis());
                Object obj = new Intent("android.intent.action.VIEW");
                ((Intent) (obj)).addFlags(0x10000000);
                ((Intent) (obj)).setDataAndType(Uri.fromFile(new File(b)), "application/vnd.android.package-archive");
                PendingIntent pendingintent = PendingIntent.getActivity(e, 0, ((Intent) (obj)), 0x8000000);
                integer.setLatestEventInfo(e, com.umeng.common.b.w(e), e.getString(com.umeng.common.a.c.k(e)), pendingintent);
                integer.flags = 16;
                f.notify(a + 1, integer);
                if (c.a(e) && !d.h)
                {
                    f.cancel(a + 1);
                    e.startActivity(((Intent) (obj)));
                }
                integer = new Bundle();
                integer.putString("filename", b);
                obj = Message.obtain();
                obj.what = 5;
                obj.arg1 = 1;
                obj.arg2 = a;
                ((Message) (obj)).setData(integer);
                try
                {
                    if (h.get(d) != null)
                    {
                        ((Messenger)h.get(d)).send(((Message) (obj)));
                    }
                    c.a(e, g, h, a);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Integer integer)
                {
                    c.a(e, g, h, a);
                }
                return;
            }
            f.cancel(a + 1);
            integer = new Bundle();
            integer.putString("filename", b);
            Message message = Message.obtain();
            message.what = 5;
            message.arg1 = 3;
            message.arg2 = a;
            message.setData(integer);
            try
            {
                if (h.get(d) != null)
                {
                    ((Messenger)h.get(d)).send(message);
                }
                c.a(e, g, h, a);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Integer integer)
            {
                c.a(e, g, h, a);
            }
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((String[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((Integer)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
        }

        public c(Context context, int i, a.a a1, String s, SparseArray sparsearray, Map map)
        {
            c = d.this;
            super();
            e = context.getApplicationContext();
            f = (NotificationManager)e.getSystemService("notification");
            a = i;
            d = a1;
            b = s;
            g = sparsearray;
            h = map;
        }
    }


    static final int a = 0;
    static final int b = 1;
    static final int c = 1;
    static final int d = 2;
    private static final String e = com/umeng/common/net/d.getName();

    d()
    {
    }

    static String a()
    {
        return e;
    }

    int a(SparseArray sparsearray, a.a a1)
    {
        for (int i = 0; i < sparsearray.size(); i++)
        {
            int k = sparsearray.keyAt(i);
            if (a1.e != null && a1.e.equals(((b)sparsearray.get(k)).e.e))
            {
                return ((b)sparsearray.get(k)).c;
            }
            if (((b)sparsearray.get(k)).e.c.equals(a1.c))
            {
                return ((b)sparsearray.get(k)).c;
            }
        }

        return -1;
    }

    int a(a.a a1)
    {
        return Math.abs((int)((long)((a1.b.hashCode() >> 2) + (a1.c.hashCode() >> 3)) + System.currentTimeMillis()));
    }

    a a(Context context, a.a a1, int i, int k)
    {
        context = context.getApplicationContext();
        a a2 = new a(context);
        Object obj = PendingIntent.getActivity(context, 0, new Intent(), 0x8000000);
        a2.c(context.getString(com.umeng.common.a.c.i(context))).a(0x1080081).a(((PendingIntent) (obj))).a(System.currentTimeMillis());
        obj = new RemoteViews(context.getPackageName(), com.umeng.common.a.b.a(context));
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            int i1 = context.getResources().getDimensionPixelSize(0x1050005);
            int i2 = context.getResources().getDimensionPixelSize(0x1050006);
            ((RemoteViews) (obj)).setInt(com.umeng.common.a.a.b(context), "setWidth", i1);
            ((RemoteViews) (obj)).setInt(com.umeng.common.a.a.b(context), "setHeight", i2);
            try
            {
                Field field = Class.forName("com.android.internal.R$drawable").getDeclaredField("notify_panel_notification_icon_bg_tile");
                field.setAccessible(true);
                int j1 = field.getInt(null);
                ((RemoteViews) (obj)).setInt(com.umeng.common.a.a.b(context), "setBackgroundResource", j1);
            }
            catch (Exception exception)
            {
                Log.a(e, "No notification icon background found:", exception);
            }
        } else
        {
            try
            {
                Field field1 = Class.forName("com.android.internal.R$drawable").getDeclaredField("status_bar_notification_icon_bg");
                field1.setAccessible(true);
                int k1 = field1.getInt(null);
                ((RemoteViews) (obj)).setInt(com.umeng.common.a.a.b(context), "setBackgroundResource", k1);
            }
            catch (Exception exception1)
            {
                try
                {
                    Object obj1 = Class.forName("com.android.internal.R$dimen");
                    Field field2 = ((Class) (obj1)).getDeclaredField("status_bar_edge_ignore");
                    field2.setAccessible(true);
                    int l1 = field2.getInt(null);
                    l1 = context.getResources().getDimensionPixelSize(l1);
                    obj1 = ((Class) (obj1)).getDeclaredField("status_bar_height");
                    ((Field) (obj1)).setAccessible(true);
                    int k2 = ((Field) (obj1)).getInt(null);
                    int j2 = context.getResources().getDimensionPixelSize(k2);
                    k2 = context.getResources().getDimensionPixelSize(k2);
                    ((RemoteViews) (obj)).setInt(com.umeng.common.a.a.b(context), "setWidth", k2 + (l1 + 0 + j2));
                }
                catch (Exception exception2)
                {
                    Log.a(e, "No notification size found:", exception2);
                }
            }
        }
        a2.a(((RemoteViews) (obj)));
        a2.b((new StringBuilder()).append(context.getResources().getString(com.umeng.common.a.c.g(context))).append(a1.b).toString()).a((new StringBuilder()).append(k).append("%").toString()).a(100, k, false);
        if (a1.g)
        {
            a2.b(((RemoteViews) (obj)));
            a2.e();
            a1 = com.umeng.common.net.l.b(context, com.umeng.common.net.l.a(i, "continue"));
            obj = com.umeng.common.net.l.b(context, com.umeng.common.net.l.a(i, "cancel"));
            a(context, a2, i, 2);
            a2.a(a1, ((PendingIntent) (obj))).c();
            return a2;
        } else
        {
            a2.a().a(false).b(true);
            return a2;
        }
    }

    void a(Context context, SparseArray sparsearray, Map map, int i)
    {
        context = (NotificationManager)context.getApplicationContext().getSystemService("notification");
        b b1 = (b)sparsearray.get(i);
        if (b1 != null)
        {
            Log.c(e, (new StringBuilder()).append("download service clear cache ").append(b1.e.b).toString());
            if (b1.a != null)
            {
                b1.a.a(2);
            }
            context.cancel(b1.c);
            if (map.containsKey(b1.e))
            {
                map.remove(b1.e);
            }
            b1.b(sparsearray);
        }
    }

    void a(Context context, a a1, int i)
    {
        context = context.getApplicationContext();
        NotificationManager notificationmanager = (NotificationManager)context.getSystemService("notification");
        a1.e();
        a(context, a1, i, 1);
        a1.b();
        notificationmanager.notify(i, a1.d());
    }

    void a(Context context, a a1, int i, int k)
    {
        if (android.os.Build.VERSION.SDK_INT < 16) goto _L2; else goto _L1
_L1:
        PendingIntent pendingintent;
        PendingIntent pendingintent1;
        pendingintent = com.umeng.common.net.l.b(context, com.umeng.common.net.l.a(i, "continue"));
        pendingintent1 = com.umeng.common.net.l.b(context, com.umeng.common.net.l.a(i, "cancel"));
        k;
        JVM INSTR tableswitch 1 2: default 56
    //                   1 77
    //                   2 100;
           goto _L3 _L4 _L5
_L3:
        a1.a(0x1080038, context.getResources().getString(com.umeng.common.a.c.f(context)), pendingintent1);
_L2:
        return;
_L4:
        a1.a(0x1080024, context.getResources().getString(com.umeng.common.a.c.e(context)), pendingintent);
        continue; /* Loop/switch isn't completed */
_L5:
        a1.a(0x1080023, context.getResources().getString(com.umeng.common.a.c.d(context)), pendingintent);
        if (true) goto _L3; else goto _L6
_L6:
    }

    void a(a.a a1, long l1, long l2, long l3)
    {
        if (a1.f != null)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("dsize", String.valueOf(l1));
            hashmap.put("dtime", h.a().split(" ")[1]);
            float f = 0.0F;
            if (l2 > 0L)
            {
                f = (float)l1 / (float)l2;
            }
            hashmap.put("dpcent", String.valueOf((int)(f * 100F)));
            hashmap.put("ptimes", String.valueOf(l3));
            a(((Map) (hashmap)), false, a1.f);
        }
    }

    final void a(Map map, boolean flag, String as[])
    {
        (new Thread(new e(this, as, flag, map))).start();
    }

    boolean a(Context context)
    {
        Object obj = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses();
        if (obj == null)
        {
            return false;
        }
        context = context.getPackageName();
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next();
            if (runningappprocessinfo.importance == 100 && runningappprocessinfo.processName.equals(context))
            {
                return true;
            }
        }

        return false;
    }

    boolean a(DownloadingService downloadingservice, SparseArray sparsearray, Map map, Intent intent)
    {
        Context context;
        Object obj;
        int i;
        context = downloadingservice.getApplicationContext();
        intent = intent.getExtras().getString("com.umeng.broadcast.download.msg").split(":");
        i = Integer.parseInt(intent[0]);
        obj = intent[1].trim();
        if (i == 0) goto _L2; else goto _L1
_L1:
        if (TextUtils.isEmpty(((CharSequence) (obj))) || sparsearray.indexOfKey(i) < 0) goto _L2; else goto _L3
_L3:
        DownloadingService.b b1;
        intent = (b)sparsearray.get(i);
        b1 = ((b) (intent)).a;
        if (!"continue".equals(obj)) goto _L5; else goto _L4
_L4:
        if (b1 != null) goto _L7; else goto _L6
_L6:
        Log.c(e, "Receive action do play click.");
        if (!com.umeng.common.b.a(context, "android.permission.ACCESS_NETWORK_STATE") || com.umeng.common.b.n(context))
        {
            break MISSING_BLOCK_LABEL_153;
        }
        Toast.makeText(context, context.getResources().getString(com.umeng.common.a.c.a(context.getApplicationContext())), 1).show();
        return false;
        downloadingservice.getClass();
        downloadingservice = new DownloadingService.b(downloadingservice, context, ((b) (intent)).e, i, ((b) (intent)).d, downloadingservice.q);
        intent.a = downloadingservice;
        downloadingservice.start();
        downloadingservice = Message.obtain();
        downloadingservice.what = 2;
        downloadingservice.arg1 = 7;
        downloadingservice.arg2 = i;
        if (map.get(((b) (intent)).e) != null)
        {
            ((Messenger)map.get(((b) (intent)).e)).send(downloadingservice);
        }
_L9:
        return true;
        downloadingservice;
        Log.b(e, "", downloadingservice);
        if (true) goto _L9; else goto _L8
_L8:
        downloadingservice;
        downloadingservice.printStackTrace();
_L2:
        return false;
_L7:
        Log.c(e, "Receive action do play click.");
        b1.a(1);
        intent.a = null;
        a(context, ((b) (intent)).b, i);
        downloadingservice = Message.obtain();
        downloadingservice.what = 2;
        downloadingservice.arg1 = 6;
        downloadingservice.arg2 = i;
        if (map.get(((b) (intent)).e) != null)
        {
            ((Messenger)map.get(((b) (intent)).e)).send(downloadingservice);
        }
_L10:
        return true;
        downloadingservice;
        Log.b(e, "", downloadingservice);
          goto _L10
_L5:
        if (!"cancel".equals(obj)) goto _L2; else goto _L11
_L11:
        Log.c(e, "Receive action do stop click.");
        if (b1 == null) goto _L13; else goto _L12
_L12:
        b1.a(2);
_L14:
        downloadingservice = Message.obtain();
        downloadingservice.what = 5;
        downloadingservice.arg1 = 5;
        downloadingservice.arg2 = i;
        if (map.get(((b) (intent)).e) != null)
        {
            ((Messenger)map.get(((b) (intent)).e)).send(downloadingservice);
        }
        a(context, sparsearray, map, i);
_L15:
        return true;
_L13:
        long l1 = ((b) (intent)).f[0];
        long l2 = ((b) (intent)).f[1];
        long l3 = ((b) (intent)).f[2];
        a(((b) (intent)).e, l1, l2, l3);
          goto _L14
        downloadingservice;
        downloadingservice = Message.obtain();
        downloadingservice.what = 5;
        downloadingservice.arg1 = 5;
        downloadingservice.arg2 = i;
        if (map.get(((b) (intent)).e) != null)
        {
            ((Messenger)map.get(((b) (intent)).e)).send(downloadingservice);
        }
        a(context, sparsearray, map, i);
          goto _L15
        downloadingservice;
        a(context, sparsearray, map, i);
          goto _L15
        downloadingservice;
        a(context, sparsearray, map, i);
          goto _L15
        downloadingservice;
        obj = Message.obtain();
        obj.what = 5;
        obj.arg1 = 5;
        obj.arg2 = i;
        if (map.get(((b) (intent)).e) != null)
        {
            ((Messenger)map.get(((b) (intent)).e)).send(((Message) (obj)));
        }
        a(context, sparsearray, map, i);
_L16:
        throw downloadingservice;
        intent;
        a(context, sparsearray, map, i);
          goto _L16
    }

    boolean a(a.a a1, boolean flag, Map map, Messenger messenger)
    {
        if (flag)
        {
            int i = (new Random()).nextInt(1000);
            if (map != null)
            {
                a.a a2;
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); Log.c(e, (new StringBuilder()).append("_").append(i).append(" downling  ").append(a2.b).append("   ").append(a2.c).toString()))
                {
                    a2 = (a.a)iterator.next();
                }

            } else
            {
                Log.c(e, (new StringBuilder()).append("_").append(i).append("downling  null").toString());
            }
        }
        if (map == null)
        {
            return false;
        }
        for (Iterator iterator1 = map.keySet().iterator(); iterator1.hasNext();)
        {
            a.a a3 = (a.a)iterator1.next();
            if (a1.e != null && a1.e.equals(a3.e))
            {
                map.put(a3, messenger);
                return true;
            }
            if (a3.c.equals(a1.c))
            {
                map.put(a3, messenger);
                return true;
            }
        }

        return false;
    }

}
