// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package org.jivesoftware.smack.packet:
//            PacketExtension

public class DefaultPacketExtension
    implements PacketExtension
{

    private String elementName;
    private Map map;
    private String namespace;

    public DefaultPacketExtension(String s, String s1)
    {
        elementName = s;
        namespace = s1;
    }

    public String getElementName()
    {
        return elementName;
    }

    public Collection getNames()
    {
        this;
        JVM INSTR monitorenter ;
        if (map != null) goto _L2; else goto _L1
_L1:
        java.util.Set set = Collections.emptySet();
_L4:
        this;
        JVM INSTR monitorexit ;
        return set;
_L2:
        set = Collections.unmodifiableSet((new HashMap(map)).keySet());
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public String getNamespace()
    {
        return namespace;
    }

    public String getValue(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Map map1 = map;
        if (map1 != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = (String)map.get(s);
        if (true) goto _L4; else goto _L3
_L3:
        s;
        throw s;
    }

    public void setValue(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (map == null)
        {
            map = new HashMap();
        }
        map.put(s, s1);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public String toXML()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<").append(elementName).append(" xmlns=\"").append(namespace).append("\">");
        Iterator iterator = getNames().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                stringbuilder.append("</").append(elementName).append(">");
                return stringbuilder.toString();
            }
            String s = (String)iterator.next();
            String s1 = getValue(s);
            stringbuilder.append("<").append(s).append(">");
            stringbuilder.append(s1);
            stringbuilder.append("</").append(s).append(">");
        } while (true);
    }
}
