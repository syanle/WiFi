// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import com.umeng.common.Log;
import com.umeng.common.a.c;
import com.umeng.common.b;
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
//            DownloadingService, p, d, l, 
//            c, j

class i extends Thread
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
    private opSelf j;
    private opSelf k;

    static Context a(i i1)
    {
        return i1.b;
    }

    private String a(b b1)
    {
        Object obj;
        if (k.k != null)
        {
            b1 = (new StringBuilder()).append(k.k).append(".apk.tmp").toString();
        } else
        {
            b1 = (new StringBuilder()).append(com.umeng.common.util.h.a(k.k)).append(".apk.tmp").toString();
        }
        obj = b1;
        if (k.k.equalsIgnoreCase("delta_update"))
        {
            obj = b1.replace(".apk", ".patch");
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
        if (k.k)
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
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
        return;
        Object obj = (i)com.umeng.common.net.DownloadingService.c().get(i);
        ((i) (obj)).i[0] = f;
        ((f) (obj)).f[1] = g;
        ((g) (obj)).g[2] = e;
        obj = l.a(i, "continue");
        Intent intent = new Intent(b, com/umeng/common/net/DownloadingService);
        intent.putExtra("com.umeng.broadcast.download.msg", ((String) (obj)));
        DownloadingService.a(a).a(a, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), intent);
        DownloadingService.a(a, b.getString(com.umeng.common.a.c.c(b)));
        Log.c(DownloadingService.a(), "changed play state button on op-notification.");
        return;
    }

    private void a(File file, String s)
        throws RemoteException
    {
        if (k.k == null || k.k.equalsIgnoreCase(com.umeng.common.util.h.a(file)))
        {
            break MISSING_BLOCK_LABEL_157;
        }
        if (!k.k.equalsIgnoreCase("delta_update"))
        {
            break MISSING_BLOCK_LABEL_184;
        }
        com.umeng.common.net.DownloadingService.c(a).cancel(i);
        file = new Bundle();
        file.putString("filename", s);
        s = Message.obtain();
        s.what = 5;
        s.arg1 = 3;
        s.arg2 = i;
        s.setData(file);
        if (com.umeng.common.net.DownloadingService.b().get(k) != null)
        {
            ((Messenger)com.umeng.common.net.DownloadingService.b().get(k)).send(s);
        }
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
_L1:
        return;
        file;
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
        return;
        ((Messenger)com.umeng.common.net.DownloadingService.b().get(k)).send(Message.obtain(null, 5, 0, 0));
        if (!k.k)
        {
            DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
            file = new Notification(0x1080082, b.getString(com.umeng.common.a.c.h(b)), System.currentTimeMillis());
            s = PendingIntent.getActivity(b, 0, new Intent(), 0);
            file.setLatestEventInfo(b, com.umeng.common.b.w(b), (new StringBuilder()).append(k.k).append(b.getString(com.umeng.common.a.c.h(b))).toString(), s);
            file.flags = ((Notification) (file)).flags | 0x10;
            com.umeng.common.net.DownloadingService.c(a).notify(i, file);
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
        if (c || p.a(d.getAbsolutePath(), 3))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        ((FileOutputStream) (obj)).close();
        obj1 = b.openFileOutput(((String) (obj2)), 32771);
        d = b.getFileStreamPath(((String) (obj2)));
        obj = obj1;
        Log.c(DownloadingService.a(), String.format("saveAPK: url = %1$15s\t|\tfilename = %2$15s", new Object[] {
            k.k, d.getAbsolutePath()
        }));
        obj2 = a(new URL(k.k), d);
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
        Log.c(DownloadingService.a(), (new StringBuilder()).append(k.k).append("saveAPK getContentLength ").append(String.valueOf(g)).toString());
        obj6 = obj;
        obj3 = obj1;
        com.umeng.common.net.c.a(b).a(k.k, k.k);
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
        abyte0 = (h)com.umeng.common.net.DownloadingService.c().get(i);
        obj6 = obj;
        obj3 = obj1;
        ((i) (abyte0)).i[0] = f;
        obj6 = obj;
        obj3 = obj1;
        ((f) (abyte0)).f[1] = g;
        obj6 = obj;
        obj3 = obj1;
        ((g) (abyte0)).g[2] = e;
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
        if (!k.k) goto _L8; else goto _L9
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
        flag = k.k;
        if (flag) goto _L11; else goto _L12
_L12:
        Log.b(DownloadingService.a(), "Download Fail out of max repeat count");
        ((Messenger)com.umeng.common.net.DownloadingService.b().get(k)).send(Message.obtain(null, 5, 0, 0));
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
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
        com.umeng.common.net.c.a(b).a(k.k, k.k, i1);
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
        com.umeng.common.net.DownloadingService.c(a).cancel(i);
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
        ((Messenger)com.umeng.common.net.DownloadingService.b().get(k)).send(Message.obtain(null, 5, 0, 0));
        obj6 = obj;
        obj3 = obj1;
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
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
        String s = abyte0.getAbsolutePath();
        obj6 = obj;
        obj3 = obj1;
        a(((File) (abyte0)), s);
        obj6 = obj;
        obj3 = obj1;
        if (j == null) goto _L23; else goto _L22
_L22:
        obj6 = obj;
        obj3 = obj1;
        j.a(i, s);
          goto _L23
        abyte0;
_L31:
        obj6 = obj;
        obj3 = obj1;
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
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
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
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
        DownloadingService.a(a).a(b, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), i);
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
        if (k.k != null)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("dsize", String.valueOf(g));
            hashmap.put("dtime", com.umeng.common.util.h.a().split(" ")[1]);
            hashmap.put("ptimes", String.valueOf(e));
            DownloadingService.a(a).a(hashmap, true, k.k);
        }
    }

    private void b(int i1)
        throws RemoteException
    {
        try
        {
            if (com.umeng.common.net.DownloadingService.b().get(k) != null)
            {
                ((Messenger)com.umeng.common.net.DownloadingService.b().get(k)).send(Message.obtain(null, 3, i1, 0));
            }
            return;
        }
        catch (DeadObjectException deadobjectexception)
        {
            Log.b(DownloadingService.a(), String.format("Service Client for downloading %1$15s is dead. Removing messenger from the service", new Object[] {
                k.k
            }));
        }
        com.umeng.common.net.DownloadingService.b().put(k, null);
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
            if (com.umeng.common.net.DownloadingService.b().size() <= 0)
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

    public (DownloadingService downloadingservice, Context context,  , int i1, int j1,  1)
    {
        a = downloadingservice;
        super();
        e = 0;
        f = -1L;
        g = -1L;
        h = -1;
        b = context;
        k = ;
        e = j1;
        if (com.umeng.common.net.DownloadingService.c().indexOfKey(i1) < 0)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        downloadingservice = ((e)com.umeng.common.net.DownloadingService.c().get(i1)).e;
        if (downloadingservice == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        if (downloadingservice.length > 1)
        {
            f = downloadingservice[0];
            g = downloadingservice[1];
        }
        j = 1;
        i = i1;
        downloadingservice = new boolean[1];
        d = p.a("/apk", context, downloadingservice);
        c = downloadingservice[0];
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
            p.a(d, l1, 0xf731400L);
            downloadingservice = a(k);
            d = new File(d, downloadingservice);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (DownloadingService downloadingservice)
        {
            Log.c(DownloadingService.a(), downloadingservice.getMessage(), downloadingservice);
        }
        j.a(i, downloadingservice);
        return;
    }
}
