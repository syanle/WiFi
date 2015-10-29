// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.provider;

import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.PacketExtension;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package org.jivesoftware.smack.provider:
//            PacketExtensionProvider, IQProvider

public class ProviderManager
{

    private static ProviderManager instance;
    private Map extensionProviders;
    private Map iqProviders;

    private ProviderManager()
    {
        extensionProviders = new ConcurrentHashMap();
        iqProviders = new ConcurrentHashMap();
        initialize();
    }

    private ClassLoader[] getClassLoaders()
    {
        int i = 0;
        ClassLoader aclassloader[] = new ClassLoader[2];
        aclassloader[0] = org/jivesoftware/smack/provider/ProviderManager.getClassLoader();
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

    public static ProviderManager getInstance()
    {
        org/jivesoftware/smack/provider/ProviderManager;
        JVM INSTR monitorenter ;
        ProviderManager providermanager;
        if (instance == null)
        {
            instance = new ProviderManager();
        }
        providermanager = instance;
        org/jivesoftware/smack/provider/ProviderManager;
        JVM INSTR monitorexit ;
        return providermanager;
        Exception exception;
        exception;
        throw exception;
    }

    private String getProviderKey(String s, String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<").append(s).append("/><").append(s1).append("/>");
        return stringbuilder.toString();
    }

    public static void setInstance(ProviderManager providermanager)
    {
        org/jivesoftware/smack/provider/ProviderManager;
        JVM INSTR monitorenter ;
        if (instance != null)
        {
            throw new IllegalStateException("ProviderManager singleton already set");
        }
        break MISSING_BLOCK_LABEL_25;
        providermanager;
        org/jivesoftware/smack/provider/ProviderManager;
        JVM INSTR monitorexit ;
        throw providermanager;
        instance = providermanager;
        org/jivesoftware/smack/provider/ProviderManager;
        JVM INSTR monitorexit ;
    }

    public void addExtensionProvider(String s, String s1, Object obj)
    {
        if (!(obj instanceof PacketExtensionProvider) && !(obj instanceof Class))
        {
            throw new IllegalArgumentException("Provider must be a PacketExtensionProvider or a Class instance.");
        } else
        {
            s = getProviderKey(s, s1);
            extensionProviders.put(s, obj);
            return;
        }
    }

    public void addIQProvider(String s, String s1, Object obj)
    {
        if (!(obj instanceof IQProvider) && (!(obj instanceof Class) || !org/jivesoftware/smack/packet/IQ.isAssignableFrom((Class)obj)))
        {
            throw new IllegalArgumentException("Provider must be an IQProvider or a Class instance.");
        } else
        {
            s = getProviderKey(s, s1);
            iqProviders.put(s, obj);
            return;
        }
    }

    public Object getExtensionProvider(String s, String s1)
    {
        s = getProviderKey(s, s1);
        return extensionProviders.get(s);
    }

    public Collection getExtensionProviders()
    {
        return Collections.unmodifiableCollection(extensionProviders.values());
    }

    public Object getIQProvider(String s, String s1)
    {
        s = getProviderKey(s, s1);
        return iqProviders.get(s);
    }

    public Collection getIQProviders()
    {
        return Collections.unmodifiableCollection(iqProviders.values());
    }

    protected void initialize()
    {
        ClassLoader aclassloader[];
        int l;
        aclassloader = getClassLoaders();
        l = aclassloader.length;
        int i = 0;
          goto _L1
_L17:
        Enumeration enumeration = aclassloader[i].getResources("META-INF/smack.providers");
_L11:
        if (!enumeration.hasMoreElements())
        {
            i++;
            continue; /* Loop/switch isn't completed */
        }
        Object obj1 = (URL)enumeration.nextElement();
        Object obj = null;
        obj1 = ((URL) (obj1)).openStream();
        obj = obj1;
        XmlPullParser xmlpullparser = XmlPullParserFactory.newInstance().newPullParser();
        obj = obj1;
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        obj = obj1;
        xmlpullparser.setInput(((InputStream) (obj1)), "UTF-8");
        obj = obj1;
        int j = xmlpullparser.getEventType();
_L10:
        if (j != 2) goto _L3; else goto _L2
_L2:
        obj = obj1;
        if (!xmlpullparser.getName().equals("iqProvider")) goto _L5; else goto _L4
_L4:
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        String s = xmlpullparser.nextText();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        String s2 = xmlpullparser.nextText();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        Object obj2 = xmlpullparser.nextText();
        obj = obj1;
        s = getProviderKey(s, s2);
        obj = obj1;
        boolean flag = iqProviders.containsKey(s);
        if (flag) goto _L3; else goto _L6
_L6:
        obj = obj1;
        obj2 = Class.forName(((String) (obj2)));
        obj = obj1;
        if (!org/jivesoftware/smack/provider/IQProvider.isAssignableFrom(((Class) (obj2)))) goto _L8; else goto _L7
_L7:
        obj = obj1;
        iqProviders.put(s, ((Class) (obj2)).newInstance());
_L3:
        obj = obj1;
        int k = xmlpullparser.next();
        j = k;
        if (k != 1) goto _L10; else goto _L9
_L9:
        try
        {
            ((InputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L11
_L8:
        obj = obj1;
        if (!org/jivesoftware/smack/packet/IQ.isAssignableFrom(((Class) (obj2)))) goto _L3; else goto _L12
_L12:
        obj = obj1;
        iqProviders.put(s, obj2);
          goto _L3
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        obj = obj1;
        classnotfoundexception.printStackTrace();
          goto _L3
        obj1;
        Object obj3;
        String s1;
        String s3;
        boolean flag1;
        try
        {
            ((InputStream) (obj)).close();
        }
        catch (Exception exception) { }
        try
        {
            throw obj1;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
        }
        return;
_L5:
        obj = obj1;
        if (!xmlpullparser.getName().equals("extensionProvider")) goto _L3; else goto _L13
_L13:
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        s1 = xmlpullparser.nextText();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        s3 = xmlpullparser.nextText();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        xmlpullparser.next();
        obj = obj1;
        obj3 = xmlpullparser.nextText();
        obj = obj1;
        s1 = getProviderKey(s1, s3);
        obj = obj1;
        flag1 = extensionProviders.containsKey(s1);
        if (flag1) goto _L3; else goto _L14
_L14:
        obj = obj1;
        obj3 = Class.forName(((String) (obj3)));
        obj = obj1;
        if (!org/jivesoftware/smack/provider/PacketExtensionProvider.isAssignableFrom(((Class) (obj3))))
        {
            break MISSING_BLOCK_LABEL_581;
        }
        obj = obj1;
        extensionProviders.put(s1, ((Class) (obj3)).newInstance());
          goto _L3
        obj3;
        obj = obj1;
        ((ClassNotFoundException) (obj3)).printStackTrace();
          goto _L3
        obj = obj1;
        if (!org/jivesoftware/smack/packet/PacketExtension.isAssignableFrom(((Class) (obj3)))) goto _L3; else goto _L15
_L15:
        obj = obj1;
        extensionProviders.put(s1, obj3);
          goto _L3
_L1:
        if (i < l) goto _L17; else goto _L16
_L16:
    }

    public void removeExtensionProvider(String s, String s1)
    {
        s = getProviderKey(s, s1);
        extensionProviders.remove(s);
    }

    public void removeIQProvider(String s, String s1)
    {
        s = getProviderKey(s, s1);
        iqProviders.remove(s);
    }
}
