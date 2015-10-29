// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.provider.IQProvider;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package org.androidpn.client:
//            NotificationIQ

public class NotificationIQProvider
    implements IQProvider
{

    public NotificationIQProvider()
    {
    }

    public IQ parseIQ(XmlPullParser xmlpullparser)
        throws Exception
    {
        NotificationIQ notificationiq = new NotificationIQ();
        boolean flag = false;
        do
        {
            if (flag)
            {
                return notificationiq;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if ("id".equals(xmlpullparser.getName()))
                {
                    notificationiq.setId(xmlpullparser.nextText());
                }
                if ("apiKey".equals(xmlpullparser.getName()))
                {
                    notificationiq.setApiKey(xmlpullparser.nextText());
                }
                if ("title".equals(xmlpullparser.getName()))
                {
                    notificationiq.setTitle(xmlpullparser.nextText());
                }
                if ("message".equals(xmlpullparser.getName()))
                {
                    notificationiq.setMessage(xmlpullparser.nextText());
                }
                if ("uri".equals(xmlpullparser.getName()))
                {
                    notificationiq.setUri(xmlpullparser.nextText());
                }
                if ("pushtype".equals(xmlpullparser.getName()))
                {
                    notificationiq.setPushType(xmlpullparser.nextText());
                }
            } else
            if (i == 3 && "notification".equals(xmlpullparser.getName()))
            {
                flag = true;
            }
        } while (true);
    }
}
