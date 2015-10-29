// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.githang.android.apnbb.BroadcastUtil;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.androidpn.client:
//            LogUtil, NotificationIQ, XmppManager

public class NotificationPacketListener
    implements PacketListener
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/NotificationPacketListener);
    private final XmppManager xmppManager;

    public NotificationPacketListener(XmppManager xmppmanager)
    {
        xmppManager = xmppmanager;
    }

    public void processPacket(Packet packet)
    {
        Log.d(LOGTAG, "NotificationPacketListener.processPacket()...");
        Log.d(LOGTAG, (new StringBuilder("packet.toXML()=")).append(packet.toXML()).toString());
        if (packet instanceof NotificationIQ)
        {
            packet = (NotificationIQ)packet;
            if (packet.getChildElementXML().contains("androidpn:iq:notification"))
            {
                Object obj = packet.getId();
                String s = packet.getApiKey();
                String s1 = packet.getTitle();
                String s2 = packet.getMessage();
                String s3 = packet.getUri();
                String s4 = packet.getPushType();
                String s5 = packet.getPacketID();
                Intent intent = new Intent("org.androidpn.client.SHOW_NOTIFICATION");
                intent.putExtra("NOTIFICATION_ID", ((String) (obj)));
                intent.putExtra("NOTIFICATION_API_KEY", s);
                intent.putExtra("NOTIFICATION_TITLE", s1);
                intent.putExtra("NOTIFICATION_MESSAGE", s2);
                intent.putExtra("NOTIFICATION_URI", s3);
                intent.putExtra("NOTIFICATION_PUSH_TYPE", s4);
                intent.putExtra("PACKET_ID", s5);
                obj = new Intent("org.androidpn.client.ANDROIDPN_ACTION_RECEIPT");
                ((Intent) (obj)).putExtra("INTENT_IQ", packet);
                BroadcastUtil.sendBroadcast(xmppManager.getContext(), ((Intent) (obj)));
                xmppManager.getContext().sendBroadcast(intent);
            }
        }
    }

}
