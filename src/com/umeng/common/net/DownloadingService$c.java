// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import android.widget.Toast;
import com.umeng.common.Log;
import com.umeng.common.a.c;
import com.umeng.common.b;
import java.util.Map;

// Referenced classes of package com.umeng.common.net:
//            DownloadingService, d, l

class a extends Handler
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
        obj = a(((android.os.Bundle) (obj)));
        if (DownloadingService.a(a).a(((a) (obj)), DownloadingService.r, com.umeng.common.net.DownloadingService.b(), message.replyTo))
        {
            Log.a(DownloadingService.a(), (new StringBuilder()).append(((a) (obj)).a).append(" is already in downloading list. ").toString());
            int i = DownloadingService.a(a).a(com.umeng.common.net.DownloadingService.c(), ((a) (obj)));
            if (i != -1 && ((a)com.umeng.common.net.DownloadingService.c().get(i)).a == null)
            {
                message = l.a(i, "continue");
                obj = new Intent(com.umeng.common.net.DownloadingService.b(a), com/umeng/common/net/DownloadingService);
                ((Intent) (obj)).putExtra("com.umeng.broadcast.download.msg", message);
                DownloadingService.a(a).a(a, com.umeng.common.net.DownloadingService.c(), com.umeng.common.net.DownloadingService.b(), ((Intent) (obj)));
                return;
            }
            Toast.makeText(com.umeng.common.net.DownloadingService.b(a), com.umeng.common.a.c.b(com.umeng.common.net.DownloadingService.b(a)), 0).show();
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
        if (b.n(a.getApplicationContext()))
        {
            com.umeng.common.net.DownloadingService.b().put(obj, message.replyTo);
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
            DownloadingService.a(a, ((a) (obj)));
            return;
        }
        Toast.makeText(com.umeng.common.net.DownloadingService.b(a), com.umeng.common.a.c.a(com.umeng.common.net.DownloadingService.b(a)), 0).show();
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

    (DownloadingService downloadingservice)
    {
        a = downloadingservice;
        super();
    }
}
