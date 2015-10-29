// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

// Referenced classes of package org.androidpn.client:
//            LogUtil, Notifier

public final class NotificationReceiver extends BroadcastReceiver
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/NotificationReceiver);

    public NotificationReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.d(LOGTAG, "NotificationReceiver.onReceive()...");
        String s = intent.getAction();
        Log.d(LOGTAG, (new StringBuilder("action=")).append(s).toString());
        if ("org.androidpn.client.SHOW_NOTIFICATION".equals(s))
        {
            String s1 = intent.getStringExtra("NOTIFICATION_ID");
            String s2 = intent.getStringExtra("NOTIFICATION_API_KEY");
            String s3 = intent.getStringExtra("NOTIFICATION_TITLE");
            String s4 = intent.getStringExtra("NOTIFICATION_MESSAGE");
            String s5 = intent.getStringExtra("NOTIFICATION_URI");
            String s6 = intent.getStringExtra("NOTIFICATION_PUSH_TYPE");
            intent = intent.getStringExtra("PACKET_ID");
            (new Notifier(context)).notify(s1, s2, s3, s4, s5, s6, intent);
        }
    }

}
