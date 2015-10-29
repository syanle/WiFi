// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public final class SmackConfiguration
{

    private static final String SMACK_VERSION = "3.1.0";
    private static Vector defaultMechs;
    private static int keepAliveInterval;
    private static int packetReplyTimeout;

    private SmackConfiguration()
    {
    }

    public static void addSaslMech(String s)
    {
        if (!defaultMechs.contains(s))
        {
            defaultMechs.add(s);
        }
    }

    public static void addSaslMechs(Collection collection)
    {
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                return;
            }
            addSaslMech((String)collection.next());
        } while (true);
    }

    private static ClassLoader[] getClassLoaders()
    {
        int i = 0;
        ClassLoader aclassloader[] = new ClassLoader[2];
        aclassloader[0] = org/jivesoftware/smack/SmackConfiguration.getClassLoader();
        aclassloader[1] = Thread.currentThread().getContextClassLoader();
        ArrayList arraylist = new ArrayList();
        int j = aclassloader.length;
        do
        {
            if (i >= j)
            {
                return (ClassLoader[])arraylist.toArray(new ClassLoader[arraylist.size()]);
            }
            ClassLoader classloader = aclassloader[i];
            if (classloader != null)
            {
                arraylist.add(classloader);
            }
            i++;
        } while (true);
    }

    public static int getKeepAliveInterval()
    {
        return keepAliveInterval;
    }

    public static int getPacketReplyTimeout()
    {
        if (packetReplyTimeout <= 0)
        {
            packetReplyTimeout = 5000;
        }
        return packetReplyTimeout;
    }

    public static List getSaslMechs()
    {
        return defaultMechs;
    }

    public static String getVersion()
    {
        return "3.1.0";
    }

    private static void parseClassToLoad(XmlPullParser xmlpullparser)
        throws Exception
    {
        xmlpullparser = xmlpullparser.nextText();
        try
        {
            Class.forName(xmlpullparser);
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            System.err.println((new StringBuilder("Error! A startup class specified in smack-config.xml could not be loaded: ")).append(xmlpullparser).toString());
        }
    }

    private static int parseIntProperty(XmlPullParser xmlpullparser, int i)
        throws Exception
    {
        int j;
        try
        {
            j = Integer.parseInt(xmlpullparser.nextText());
        }
        // Misplaced declaration of an exception variable
        catch (XmlPullParser xmlpullparser)
        {
            xmlpullparser.printStackTrace();
            return i;
        }
        return j;
    }

    public static void removeSaslMech(String s)
    {
        if (defaultMechs.contains(s))
        {
            defaultMechs.remove(s);
        }
    }

    public static void removeSaslMechs(Collection collection)
    {
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                return;
            }
            removeSaslMech((String)collection.next());
        } while (true);
    }

    public static void setKeepAliveInterval(int i)
    {
        keepAliveInterval = i;
    }

    public static void setPacketReplyTimeout(int i)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException();
        } else
        {
            packetReplyTimeout = i;
            return;
        }
    }

    static 
    {
        packetReplyTimeout = 5000;
        keepAliveInterval = 30000;
        defaultMechs = new Vector();
        ClassLoader aclassloader[];
        int l;
        aclassloader = getClassLoaders();
        l = aclassloader.length;
        int i = 0;
          goto _L1
_L11:
        Enumeration enumeration = aclassloader[i].getResources("META-INF/smack-config.xml");
_L8:
        if (!enumeration.hasMoreElements())
        {
            i++;
            continue; /* Loop/switch isn't completed */
        }
        Object obj2 = (URL)enumeration.nextElement();
        Object obj;
        Object obj1;
        obj1 = null;
        obj = null;
        obj2 = ((URL) (obj2)).openStream();
        obj = obj2;
        obj1 = obj2;
        XmlPullParser xmlpullparser = XmlPullParserFactory.newInstance().newPullParser();
        obj = obj2;
        obj1 = obj2;
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        obj = obj2;
        obj1 = obj2;
        xmlpullparser.setInput(((InputStream) (obj2)), "UTF-8");
        obj = obj2;
        obj1 = obj2;
        int j = xmlpullparser.getEventType();
_L7:
        if (j != 2) goto _L3; else goto _L2
_L2:
        obj = obj2;
        obj1 = obj2;
        if (!xmlpullparser.getName().equals("className")) goto _L5; else goto _L4
_L4:
        obj = obj2;
        obj1 = obj2;
        parseClassToLoad(xmlpullparser);
_L3:
        obj = obj2;
        obj1 = obj2;
        int k = xmlpullparser.next();
        j = k;
        if (k != 1) goto _L7; else goto _L6
_L6:
        try
        {
            ((InputStream) (obj2)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L8
_L5:
        obj = obj2;
        obj1 = obj2;
        if (!xmlpullparser.getName().equals("packetReplyTimeout"))
        {
            break MISSING_BLOCK_LABEL_262;
        }
        obj = obj2;
        obj1 = obj2;
        packetReplyTimeout = parseIntProperty(xmlpullparser, packetReplyTimeout);
          goto _L3
        obj2;
        obj1 = obj;
        ((Exception) (obj2)).printStackTrace();
        try
        {
            ((InputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L8
        obj = obj2;
        obj1 = obj2;
        if (!xmlpullparser.getName().equals("keepAliveInterval"))
        {
            break MISSING_BLOCK_LABEL_312;
        }
        obj = obj2;
        obj1 = obj2;
        keepAliveInterval = parseIntProperty(xmlpullparser, keepAliveInterval);
          goto _L3
        obj;
        try
        {
            ((InputStream) (obj1)).close();
        }
        catch (Exception exception) { }
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        break; /* Loop/switch isn't completed */
        obj = obj2;
        obj1 = obj2;
        if (!xmlpullparser.getName().equals("mechName")) goto _L3; else goto _L9
_L9:
        obj = obj2;
        obj1 = obj2;
        defaultMechs.add(xmlpullparser.nextText());
          goto _L3
_L1:
        if (i < l) goto _L11; else goto _L10
_L10:
    }
}
