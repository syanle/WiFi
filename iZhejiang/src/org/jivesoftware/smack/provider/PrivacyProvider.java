// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.provider;

import java.util.ArrayList;
import org.jivesoftware.smack.packet.DefaultPacketExtension;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Privacy;
import org.jivesoftware.smack.packet.PrivacyItem;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package org.jivesoftware.smack.provider:
//            IQProvider

public class PrivacyProvider
    implements IQProvider
{

    public PrivacyProvider()
    {
    }

    public IQ parseIQ(XmlPullParser xmlpullparser)
        throws Exception
    {
        Privacy privacy = new Privacy();
        privacy.addExtension(new DefaultPacketExtension(xmlpullparser.getName(), xmlpullparser.getNamespace()));
        boolean flag = false;
        do
        {
            if (flag)
            {
                return privacy;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("active"))
                {
                    String s = xmlpullparser.getAttributeValue("", "name");
                    if (s == null)
                    {
                        privacy.setDeclineActiveList(true);
                    } else
                    {
                        privacy.setActiveName(s);
                    }
                } else
                if (xmlpullparser.getName().equals("default"))
                {
                    String s1 = xmlpullparser.getAttributeValue("", "name");
                    if (s1 == null)
                    {
                        privacy.setDeclineDefaultList(true);
                    } else
                    {
                        privacy.setDefaultName(s1);
                    }
                } else
                if (xmlpullparser.getName().equals("list"))
                {
                    parseList(xmlpullparser, privacy);
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("query"))
            {
                flag = true;
            }
        } while (true);
    }

    public PrivacyItem parseItem(XmlPullParser xmlpullparser)
        throws Exception
    {
        boolean flag = false;
        Object obj = xmlpullparser.getAttributeValue("", "action");
        String s = xmlpullparser.getAttributeValue("", "order");
        String s1 = xmlpullparser.getAttributeValue("", "type");
        boolean flag1 = true;
        if ("allow".equalsIgnoreCase(((String) (obj))))
        {
            flag1 = true;
        } else
        if ("deny".equalsIgnoreCase(((String) (obj))))
        {
            flag1 = false;
        }
        obj = new PrivacyItem(s1, flag1, Integer.parseInt(s));
        ((PrivacyItem) (obj)).setValue(xmlpullparser.getAttributeValue("", "value"));
        do
        {
            if (flag)
            {
                return ((PrivacyItem) (obj));
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("iq"))
                {
                    ((PrivacyItem) (obj)).setFilterIQ(true);
                }
                if (xmlpullparser.getName().equals("message"))
                {
                    ((PrivacyItem) (obj)).setFilterMessage(true);
                }
                if (xmlpullparser.getName().equals("presence-in"))
                {
                    ((PrivacyItem) (obj)).setFilterPresence_in(true);
                }
                if (xmlpullparser.getName().equals("presence-out"))
                {
                    ((PrivacyItem) (obj)).setFilterPresence_out(true);
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("item"))
            {
                flag = true;
            }
        } while (true);
    }

    public void parseList(XmlPullParser xmlpullparser, Privacy privacy)
        throws Exception
    {
        boolean flag = false;
        String s = xmlpullparser.getAttributeValue("", "name");
        ArrayList arraylist = new ArrayList();
        do
        {
            if (flag)
            {
                privacy.setPrivacyList(s, arraylist);
                return;
            }
            int i = xmlpullparser.next();
            if (i == 2)
            {
                if (xmlpullparser.getName().equals("item"))
                {
                    arraylist.add(parseItem(xmlpullparser));
                }
            } else
            if (i == 3 && xmlpullparser.getName().equals("list"))
            {
                flag = true;
            }
        } while (true);
    }
}
