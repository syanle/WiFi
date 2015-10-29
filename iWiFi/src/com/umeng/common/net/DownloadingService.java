// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import android.widget.Toast;
import com.umeng.common.Log;
import com.umeng.common.util.h;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.umeng.common.net:
//            d, h, i, f, 
//            g, c, p, l, 
//            j

public class DownloadingService extends Service
{
    static interface a
    {

        public abstract void a(int i1);

        public abstract void a(int i1, int j1);

        public abstract void a(int i1, Exception exception);

        public abstract void a(int i1, String s1);
    }

    class b extends Thread
    {

        final DownloadingService a;
        private Context b;
        private boolean c;
        private File d;
        private int e;
        private long f;
        private long g;
        private int h;
        private int i;
        private a j;
        private a.a k;

        static Context a(b b1)
        {
            return b1.b;
        }

        private String a(a.a a1)
        {
            Object obj;
            if (k.e != null)
            {
                a1 = (new StringBuilder()).append(k.e).append(".apk.tmp").toString();
            } else
            {
                a1 = (new StringBuilder()).append(com.umeng.common.util.h.a(k.c)).append(".apk.tmp").toString();
            }
            obj = a1;
            if (k.a.equalsIgnoreCase("delta_update"))
            {
                obj = a1.replace(".apk", ".patch");
            }
            return ((String) (obj));
        }

        private HttpURLConnection a(URL url, File file)
            throws IOException
        {
            url = (HttpURLConnection)url.openConnection();
            url.setRequestMethod("GET");
            url.setRequestProperty("Accept-Encoding", "identity");
            url.addRequestProperty("Connection", "keep-alive");
            url.setConnectTimeout(5000);
            url.setReadTimeout(10000);
            if (file.exists() && file.length() > 0L)
            {
                url.setRequestProperty("Range", (new StringBuilder()).append("bytes=").append(file.length()).append("-").toString());
            }
            return url;
        }

        private void a()
        {
            Log.c(DownloadingService.a(), (new StringBuilder()).append("wait for repeating Test network repeat count=").append(e).toString());
            if (k.g)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            Thread.sleep(8000L);
            if (g < 1L)
            {
                a(false);
                return;
            }
            try
            {
                a(true);
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                a(((Exception) (interruptedexception)));
            }
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            return;
            Object obj = (d.b)DownloadingService.c().get(i);
            ((d.b) (obj)).f[0] = f;
            ((d.b) (obj)).f[1] = g;
            ((d.b) (obj)).f[2] = e;
            obj = com.umeng.common.net.l.a(i, "continue");
            Intent intent = new Intent(b, com/umeng/common/net/DownloadingService);
            intent.putExtra("com.umeng.broadcast.download.msg", ((String) (obj)));
            DownloadingService.a(a).a(a, DownloadingService.c(), DownloadingService.b(), intent);
            DownloadingService.a(a, b.getString(com.umeng.common.a.c.c(b)));
            Log.c(DownloadingService.a(), "changed play state button on op-notification.");
            return;
        }

        private void a(File file, String s1)
            throws RemoteException
        {
            if (k.d == null || k.d.equalsIgnoreCase(com.umeng.common.util.h.a(file)))
            {
                break MISSING_BLOCK_LABEL_157;
            }
            if (!k.a.equalsIgnoreCase("delta_update"))
            {
                break MISSING_BLOCK_LABEL_184;
            }
            DownloadingService.c(a).cancel(i);
            file = new Bundle();
            file.putString("filename", s1);
            s1 = Message.obtain();
            s1.what = 5;
            s1.arg1 = 3;
            s1.arg2 = i;
            s1.setData(file);
            if (DownloadingService.b().get(k) != null)
            {
                ((Messenger)DownloadingService.b().get(k)).send(s1);
            }
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
_L1:
            return;
            file;
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            return;
            ((Messenger)DownloadingService.b().get(k)).send(Message.obtain(null, 5, 0, 0));
            if (!k.h)
            {
                DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
                file = new Notification(0x1080082, b.getString(com.umeng.common.a.c.h(b)), System.currentTimeMillis());
                s1 = PendingIntent.getActivity(b, 0, new Intent(), 0);
                file.setLatestEventInfo(b, com.umeng.common.b.w(b), (new StringBuilder()).append(k.b).append(b.getString(com.umeng.common.a.c.h(b))).toString(), s1);
                file.flags = ((Notification) (file)).flags | 0x10;
                DownloadingService.c(a).notify(i, file);
                return;
            }
              goto _L1
        }

        private void a(Exception exception)
        {
            Log.b(DownloadingService.a(), (new StringBuilder()).append("can not install. ").append(exception.getMessage()).toString());
            if (j != null)
            {
                j.a(i, exception);
            }
            DownloadingService.a(a).a(k, f, g, e);
        }

        private void a(boolean flag)
        {
            Object obj1;
            Object obj2;
            boolean flag1;
            obj1 = null;
            flag1 = false;
            obj2 = d.getName();
            Object obj = new FileOutputStream(d, true);
            if (c || com.umeng.common.net.p.a(d.getAbsolutePath(), 3))
            {
                break MISSING_BLOCK_LABEL_80;
            }
            ((FileOutputStream) (obj)).close();
            obj1 = b.openFileOutput(((String) (obj2)), 32771);
            d = b.getFileStreamPath(((String) (obj2)));
            obj = obj1;
            Log.c(DownloadingService.a(), String.format("saveAPK: url = %1$15s\t|\tfilename = %2$15s", new Object[] {
                k.c, d.getAbsolutePath()
            }));
            obj2 = a(new URL(k.c), d);
            ((HttpURLConnection) (obj2)).connect();
            obj1 = ((HttpURLConnection) (obj2)).getInputStream();
            Object obj3;
            Object obj6;
            if (flag)
            {
                break MISSING_BLOCK_LABEL_214;
            }
            obj6 = obj;
            obj3 = obj1;
            f = 0L;
            obj6 = obj;
            obj3 = obj1;
            g = ((HttpURLConnection) (obj2)).getContentLength();
            obj6 = obj;
            obj3 = obj1;
            Log.c(DownloadingService.a(), String.format("getContentLength: %1$15s", new Object[] {
                Long.valueOf(g)
            }));
            obj6 = obj;
            obj3 = obj1;
            byte abyte0[] = new byte[4096];
            obj6 = obj;
            obj3 = obj1;
            Log.c(DownloadingService.a(), (new StringBuilder()).append(k.b).append("saveAPK getContentLength ").append(String.valueOf(g)).toString());
            obj6 = obj;
            obj3 = obj1;
            com.umeng.common.net.c.a(b).a(k.a, k.c);
            int i1 = 0;
_L15:
            obj6 = obj;
            obj3 = obj1;
            if (h >= 0)
            {
                break MISSING_BLOCK_LABEL_1842;
            }
            obj6 = obj;
            obj3 = obj1;
            int j1 = ((InputStream) (obj1)).read(abyte0);
            if (j1 <= 0)
            {
                break MISSING_BLOCK_LABEL_1842;
            }
            obj6 = obj;
            obj3 = obj1;
            ((FileOutputStream) (obj)).write(abyte0, 0, j1);
            obj6 = obj;
            obj3 = obj1;
            f = f + (long)j1;
            j1 = i1 + 1;
            if (i1 % 50 != 0) goto _L2; else goto _L1
_L1:
            obj6 = obj;
            obj3 = obj1;
            if (com.umeng.common.b.n(b)) goto _L4; else goto _L3
_L3:
            i1 = ((flag1) ? 1 : 0);
_L33:
            obj6 = obj;
            obj3 = obj1;
            ((InputStream) (obj1)).close();
            obj6 = obj;
            obj3 = obj1;
            ((FileOutputStream) (obj)).close();
            obj6 = obj;
            obj3 = obj1;
            if (h != 1) goto _L6; else goto _L5
_L5:
            obj6 = obj;
            obj3 = obj1;
            abyte0 = (d.b)DownloadingService.c().get(i);
            obj6 = obj;
            obj3 = obj1;
            ((d.b) (abyte0)).f[0] = f;
            obj6 = obj;
            obj3 = obj1;
            ((d.b) (abyte0)).f[1] = g;
            obj6 = obj;
            obj3 = obj1;
            ((d.b) (abyte0)).f[2] = e;
            if (obj1 == null)
            {
                break MISSING_BLOCK_LABEL_523;
            }
            ((InputStream) (obj1)).close();
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_531;
            }
            ((FileOutputStream) (obj)).close();
_L14:
            return;
_L4:
            obj6 = obj;
            obj3 = obj1;
            if (com.umeng.common.b.l(b)) goto _L8; else goto _L7
_L7:
            obj6 = obj;
            obj3 = obj1;
            if (!k.i) goto _L8; else goto _L9
_L9:
            obj6 = obj;
            obj3 = obj1;
            Log.b(DownloadingService.a(), "no wifi");
            obj6 = obj;
            obj3 = obj1;
            throw new IOException("no wifi");
            abyte0;
_L32:
            Log.c(DownloadingService.a(), abyte0.getMessage(), abyte0);
            i1 = e + 1;
            e = i1;
            if (i1 <= 3) goto _L11; else goto _L10
_L10:
            flag = k.g;
            if (flag) goto _L11; else goto _L12
_L12:
            Log.b(DownloadingService.a(), "Download Fail out of max repeat count");
            ((Messenger)DownloadingService.b().get(k)).send(Message.obtain(null, 5, 0, 0));
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            a(((Exception) (abyte0)));
            DownloadingService.d(a).post(new j(this));
_L26:
            if (obj1 == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            ((InputStream) (obj1)).close();
            if (obj == null) goto _L14; else goto _L13
_L13:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
_L8:
            obj6 = obj;
            obj3 = obj1;
            int k1 = (int)(((float)f * 100F) / (float)g);
            i1 = k1;
            if (k1 > 100)
            {
                i1 = 99;
            }
            obj6 = obj;
            obj3 = obj1;
            if (j == null)
            {
                break MISSING_BLOCK_LABEL_822;
            }
            obj6 = obj;
            obj3 = obj1;
            j.a(i, i1);
            obj6 = obj;
            obj3 = obj1;
            b(i1);
            obj6 = obj;
            obj3 = obj1;
            com.umeng.common.net.c.a(b).a(k.a, k.c, i1);
            i1 = j1;
              goto _L15
            obj;
            ((IOException) (obj)).printStackTrace();
            return;
            obj1;
            ((IOException) (obj1)).printStackTrace();
            if (obj == null) goto _L14; else goto _L16
_L16:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
            throw obj1;
_L6:
            obj6 = obj;
            obj3 = obj1;
            if (h != 2)
            {
                break MISSING_BLOCK_LABEL_1047;
            }
            obj6 = obj;
            obj3 = obj1;
            DownloadingService.a(a).a(k, f, g, e);
            obj6 = obj;
            obj3 = obj1;
            DownloadingService.c(a).cancel(i);
            if (obj1 == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            ((InputStream) (obj1)).close();
            if (obj == null) goto _L14; else goto _L17
_L17:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            ((IOException) (obj1)).printStackTrace();
            if (obj == null) goto _L14; else goto _L18
_L18:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
            throw obj1;
            if (i1 != 0) goto _L20; else goto _L19
_L19:
            obj6 = obj;
            obj3 = obj1;
            Log.b(DownloadingService.a(), (new StringBuilder()).append("Download Fail repeat count=").append(e).toString());
            obj6 = obj;
            obj3 = obj1;
            ((Messenger)DownloadingService.b().get(k)).send(Message.obtain(null, 5, 0, 0));
            obj6 = obj;
            obj3 = obj1;
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            obj6 = obj;
            obj3 = obj1;
            if (j == null)
            {
                break MISSING_BLOCK_LABEL_1181;
            }
            obj6 = obj;
            obj3 = obj1;
            j.a(i, null);
_L23:
            if (obj1 == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            ((InputStream) (obj1)).close();
            if (obj == null) goto _L14; else goto _L21
_L21:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
_L20:
            obj6 = obj;
            obj3 = obj1;
            b();
            obj6 = obj;
            obj3 = obj1;
            abyte0 = new File(d.getParent(), d.getName().replace(".tmp", ""));
            obj6 = obj;
            obj3 = obj1;
            d.renameTo(abyte0);
            obj6 = obj;
            obj3 = obj1;
            String s1 = abyte0.getAbsolutePath();
            obj6 = obj;
            obj3 = obj1;
            a(((File) (abyte0)), s1);
            obj6 = obj;
            obj3 = obj1;
            if (j == null) goto _L23; else goto _L22
_L22:
            obj6 = obj;
            obj3 = obj1;
            j.a(i, s1);
              goto _L23
            abyte0;
_L31:
            obj6 = obj;
            obj3 = obj1;
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            obj6 = obj;
            obj3 = obj1;
            abyte0.printStackTrace();
            if (obj1 == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            ((InputStream) (obj1)).close();
            if (obj == null) goto _L14; else goto _L24
_L24:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            ((IOException) (obj1)).printStackTrace();
            if (obj == null) goto _L14; else goto _L25
_L25:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
            throw obj1;
            obj3;
            ((RemoteException) (obj3)).printStackTrace();
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            a(((Exception) (abyte0)));
            DownloadingService.d(a).post(new j(this));
              goto _L26
            obj3;
            abyte0 = ((byte []) (obj1));
            obj1 = obj3;
_L30:
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_1514;
            }
            abyte0.close();
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
_L29:
            throw obj1;
            obj3;
            DownloadingService.a(a).a(b, DownloadingService.c(), DownloadingService.b(), i);
            a(((Exception) (abyte0)));
            DownloadingService.d(a).post(new j(this));
            throw obj3;
_L11:
            a();
              goto _L26
            obj1;
            ((IOException) (obj1)).printStackTrace();
            if (obj == null) goto _L14; else goto _L27
_L27:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
            throw obj1;
            obj1;
            ((IOException) (obj1)).printStackTrace();
            if (obj == null) goto _L14; else goto _L28
_L28:
            try
            {
                ((FileOutputStream) (obj)).close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return;
            obj1;
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
            throw obj1;
            abyte0;
            abyte0.printStackTrace();
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
              goto _L29
            obj1;
            if (obj != null)
            {
                try
                {
                    ((FileOutputStream) (obj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((IOException) (obj)).printStackTrace();
                }
            }
            throw obj1;
            obj1;
            obj = null;
            abyte0 = null;
              goto _L30
            obj1;
            abyte0 = null;
              goto _L30
            obj3;
            obj = obj1;
            abyte0 = null;
            obj1 = obj3;
              goto _L30
            obj1;
            abyte0 = null;
              goto _L30
            obj1;
            obj = obj6;
            abyte0 = ((byte []) (obj3));
              goto _L30
            abyte0;
            obj = null;
            obj1 = null;
              goto _L31
            abyte0;
            obj1 = null;
              goto _L31
            abyte0;
            obj = obj1;
            obj1 = null;
              goto _L31
            abyte0;
            obj1 = null;
              goto _L31
            abyte0;
            Object obj4 = null;
            obj = obj1;
            obj1 = obj4;
              goto _L32
            abyte0;
            obj1 = null;
              goto _L32
            abyte0;
            Object obj5 = null;
            obj = obj1;
            obj1 = obj5;
              goto _L32
            abyte0;
            obj1 = null;
              goto _L32
_L2:
            i1 = j1;
              goto _L15
            i1 = 1;
              goto _L33
        }

        private void b()
        {
            if (k.f != null)
            {
                HashMap hashmap = new HashMap();
                hashmap.put("dsize", String.valueOf(g));
                hashmap.put("dtime", com.umeng.common.util.h.a().split(" ")[1]);
                hashmap.put("ptimes", String.valueOf(e));
                DownloadingService.a(a).a(hashmap, true, k.f);
            }
        }

        private void b(int i1)
            throws RemoteException
        {
            try
            {
                if (DownloadingService.b().get(k) != null)
                {
                    ((Messenger)DownloadingService.b().get(k)).send(Message.obtain(null, 3, i1, 0));
                }
                return;
            }
            catch (DeadObjectException deadobjectexception)
            {
                Log.b(DownloadingService.a(), String.format("Service Client for downloading %1$15s is dead. Removing messenger from the service", new Object[] {
                    k.b
                }));
            }
            DownloadingService.b().put(k, null);
        }

        public void a(int i1)
        {
            h = i1;
        }

        public void run()
        {
            boolean flag;
            flag = false;
            e = 0;
            if (j != null)
            {
                j.a(i);
            }
            if (f > 0L)
            {
                flag = true;
            }
            try
            {
                a(flag);
                if (DownloadingService.b().size() <= 0)
                {
                    a.stopSelf();
                }
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return;
        }

        public b(Context context, a.a a1, int i1, int j1, a a2)
        {
            a = DownloadingService.this;
            super();
            e = 0;
            f = -1L;
            g = -1L;
            h = -1;
            b = context;
            k = a1;
            e = j1;
            if (DownloadingService.c().indexOfKey(i1) < 0)
            {
                break MISSING_BLOCK_LABEL_99;
            }
            downloadingservice = ((d.b)DownloadingService.c().get(i1)).f;
            if (DownloadingService.this == null)
            {
                break MISSING_BLOCK_LABEL_99;
            }
            if (DownloadingService.this.length > 1)
            {
                f = DownloadingService.this[0];
                g = DownloadingService.this[1];
            }
            j = a2;
            i = i1;
            downloadingservice = new boolean[1];
            d = com.umeng.common.net.p.a("/apk", context, DownloadingService.this);
            c = DownloadingService.this[0];
            long l1;
            if (c)
            {
                l1 = 0x6400000L;
            } else
            {
                l1 = 0xa00000L;
            }
            try
            {
                com.umeng.common.net.p.a(d, l1, 0xf731400L);
                downloadingservice = a(k);
                d = new File(d, DownloadingService.this);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (DownloadingService downloadingservice)
            {
                Log.c(DownloadingService.a(), getMessage(), DownloadingService.this);
            }
            j.a(i, DownloadingService.this);
            return;
        }
    }

    class c extends Handler
    {

        final DownloadingService a;

        public void handleMessage(Message message)
        {
            Log.c(DownloadingService.a(), (new StringBuilder()).append("IncomingHandler(msg.what:").append(message.what).append(" msg.arg1:").append(message.arg1).append(" msg.arg2:").append(message.arg2).append(" msg.replyTo:").append(message.replyTo).toString());
            Object obj;
            switch (message.what)
            {
            default:
                super.handleMessage(message);
                return;

            case 4: // '\004'
                obj = message.getData();
                break;
            }
            Log.c(DownloadingService.a(), (new StringBuilder()).append("IncomingHandler(msg.getData():").append(obj).toString());
            obj = com.umeng.common.net.a.a.a(((Bundle) (obj)));
            if (DownloadingService.a(a).a(((a.a) (obj)), DownloadingService.r, DownloadingService.b(), message.replyTo))
            {
                Log.a(DownloadingService.a(), (new StringBuilder()).append(((a.a) (obj)).b).append(" is already in downloading list. ").toString());
                int i1 = DownloadingService.a(a).a(DownloadingService.c(), ((a.a) (obj)));
                if (i1 != -1 && ((d.b)DownloadingService.c().get(i1)).a == null)
                {
                    message = com.umeng.common.net.l.a(i1, "continue");
                    obj = new Intent(DownloadingService.b(a), com/umeng/common/net/DownloadingService);
                    ((Intent) (obj)).putExtra("com.umeng.broadcast.download.msg", message);
                    DownloadingService.a(a).a(a, DownloadingService.c(), DownloadingService.b(), ((Intent) (obj)));
                    return;
                }
                Toast.makeText(DownloadingService.b(a), com.umeng.common.a.c.b(DownloadingService.b(a)), 0).show();
                obj = Message.obtain();
                obj.what = 2;
                obj.arg1 = 2;
                obj.arg2 = 0;
                try
                {
                    message.replyTo.send(((Message) (obj)));
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    message.printStackTrace();
                }
                return;
            }
            if (com.umeng.common.b.n(a.getApplicationContext()))
            {
                DownloadingService.b().put(obj, message.replyTo);
                Message message1 = Message.obtain();
                message1.what = 1;
                message1.arg1 = 1;
                message1.arg2 = 0;
                try
                {
                    message.replyTo.send(message1);
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    message.printStackTrace();
                }
                DownloadingService.a(a, ((a.a) (obj)));
                return;
            }
            Toast.makeText(DownloadingService.b(a), com.umeng.common.a.c.a(DownloadingService.b(a)), 0).show();
            obj = Message.obtain();
            obj.what = 2;
            obj.arg1 = 4;
            obj.arg2 = 0;
            try
            {
                message.replyTo.send(((Message) (obj)));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                message.printStackTrace();
            }
        }

        c()
        {
            a = DownloadingService.this;
            super();
        }
    }


    private static final long C = 8000L;
    private static final long D = 500L;
    private static Map E = new HashMap();
    private static SparseArray F = new SparseArray();
    private static Boolean G = Boolean.valueOf(false);
    static final int a = 1;
    static final int b = 2;
    static final int c = 3;
    static final int d = 4;
    static final int e = 5;
    static final int f = 6;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 4;
    public static final int l = 5;
    public static final int m = 6;
    public static final int n = 7;
    static final int o = 100;
    static final String p = "filename";
    public static boolean r = false;
    private static final String t = com/umeng/common/net/DownloadingService.getName();
    private static final long w = 0x6400000L;
    private static final long x = 0xa00000L;
    private static final long y = 0xf731400L;
    private static final int z = 3;
    private Context A;
    private Handler B;
    a q;
    final Messenger s = new Messenger(new c());
    private NotificationManager u;
    private d v;

    public DownloadingService()
    {
        v = new d();
    }

    static NotificationManager a(DownloadingService downloadingservice, NotificationManager notificationmanager)
    {
        downloadingservice.u = notificationmanager;
        return notificationmanager;
    }

    static d a(DownloadingService downloadingservice)
    {
        return downloadingservice.v;
    }

    static Boolean a(Boolean boolean1)
    {
        G = boolean1;
        return boolean1;
    }

    static String a()
    {
        return t;
    }

    static void a(DownloadingService downloadingservice, a.a a1)
    {
        downloadingservice.a(a1);
    }

    static void a(DownloadingService downloadingservice, String s1)
    {
        downloadingservice.a(s1);
    }

    private void a(a.a a1)
    {
        int i1 = 0;
        Log.c(t, (new StringBuilder()).append("startDownload([mComponentName:").append(a1.a).append(" mTitle:").append(a1.b).append(" mUrl:").append(a1.c).append("])").toString());
        int j1 = v.a(a1);
        b b1 = new b(getApplicationContext(), a1, j1, 0, q);
        a1 = new d.b(a1, j1);
        a1.a(F);
        a1.a = b1;
        b1.start();
        d();
        if (r)
        {
            for (; i1 < F.size(); i1++)
            {
                a1 = (d.b)F.valueAt(i1);
                Log.c(t, (new StringBuilder()).append("Running task ").append(((d.b) (a1)).e.b).toString());
            }

        }
    }

    private void a(String s1)
    {
        synchronized (G)
        {
            if (!G.booleanValue())
            {
                Log.c(t, (new StringBuilder()).append("show single toast.[").append(s1).append("]").toString());
                G = Boolean.valueOf(true);
                B.post(new com.umeng.common.net.h(this, s1));
                B.postDelayed(new i(this), 1200L);
            }
        }
        return;
        s1;
        boolean1;
        JVM INSTR monitorexit ;
        throw s1;
    }

    static Context b(DownloadingService downloadingservice)
    {
        return downloadingservice.A;
    }

    static Map b()
    {
        return E;
    }

    static NotificationManager c(DownloadingService downloadingservice)
    {
        return downloadingservice.u;
    }

    static SparseArray c()
    {
        return F;
    }

    static Handler d(DownloadingService downloadingservice)
    {
        return downloadingservice.B;
    }

    private void d()
    {
        if (r)
        {
            int i1 = E.size();
            int j1 = F.size();
            Log.a(t, (new StringBuilder()).append("Client size =").append(i1).append("   cacheSize = ").append(j1).toString());
            if (i1 != j1)
            {
                throw new RuntimeException((new StringBuilder()).append("Client size =").append(i1).append("   cacheSize = ").append(j1).toString());
            }
        }
    }

    public IBinder onBind(Intent intent)
    {
        Log.c(t, "onBind ");
        return s.getBinder();
    }

    public void onCreate()
    {
        super.onCreate();
        if (r)
        {
            Log.LOG = true;
            Debug.waitForDebugger();
        }
        Log.LOG = true;
        Log.c(t, "onCreate ");
        u = (NotificationManager)getSystemService("notification");
        A = this;
        B = new f(this);
        q = new g(this);
    }

    public void onDestroy()
    {
        try
        {
            com.umeng.common.net.c.a(getApplicationContext()).a(0x3f480);
            com.umeng.common.net.c.a(getApplicationContext()).finalize();
        }
        catch (Exception exception)
        {
            Log.b(t, exception.getMessage());
        }
        super.onDestroy();
    }

    public void onStart(Intent intent, int i1)
    {
        Log.c(t, "onStart ");
        v.a(this, F, E, intent);
        super.onStart(intent, i1);
    }

    static 
    {
        r = false;
    }
}
