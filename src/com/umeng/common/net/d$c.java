// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import com.umeng.common.Log;
import com.umeng.common.a.c;
import com.umeng.common.b;
import com.umeng.common.util.DeltaUpdate;
import com.umeng.common.util.h;
import java.io.File;
import java.util.Map;

// Referenced classes of package com.umeng.common.net:
//            d

class h extends AsyncTask
{

    public int a;
    public String b;
    final d c;
    private eExecute d;
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

    public n(d d1, Context context, int i, n n, String s, SparseArray sparsearray, Map map)
    {
        c = d1;
        super();
        e = context.getApplicationContext();
        f = (NotificationManager)e.getSystemService("notification");
        a = i;
        d = n;
        b = s;
        g = sparsearray;
        h = map;
    }
}
