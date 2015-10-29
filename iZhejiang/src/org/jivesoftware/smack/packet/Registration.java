// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ

public class Registration extends IQ
{

    private Map attributes;
    private String instructions;
    private boolean registered;
    private boolean remove;
    private List requiredFields;

    public Registration()
    {
        instructions = null;
        attributes = new HashMap();
        requiredFields = new ArrayList();
        registered = false;
        remove = false;
    }

    public void addAttribute(String s, String s1)
    {
        attributes.put(s, s1);
    }

    public void addRequiredField(String s)
    {
        requiredFields.add(s);
    }

    public Map getAttributes()
    {
        return attributes;
    }

    public String getChildElementXML()
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        stringbuilder = new StringBuilder();
        stringbuilder.append("<query xmlns=\"jabber:iq:register\">");
        if (instructions != null && !remove)
        {
            stringbuilder.append("<instructions>").append(instructions).append("</instructions>");
        }
        if (attributes == null || attributes.size() <= 0 || remove)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        iterator = attributes.keySet().iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        stringbuilder.append(getExtensionsXML());
        stringbuilder.append("</query>");
        return stringbuilder.toString();
_L2:
        String s = (String)iterator.next();
        String s1 = (String)attributes.get(s);
        stringbuilder.append("<").append(s).append(">");
        stringbuilder.append(s1);
        stringbuilder.append("</").append(s).append(">");
          goto _L3
        if (remove)
        {
            stringbuilder.append("</remove>");
        }
          goto _L1
    }

    public String getField(String s)
    {
        return (String)attributes.get(s);
    }

    public List getFieldNames()
    {
        return new ArrayList(attributes.keySet());
    }

    public String getInstructions()
    {
        return instructions;
    }

    public List getRequiredFields()
    {
        return requiredFields;
    }

    public boolean isRegistered()
    {
        return registered;
    }

    public void setInstructions(String s)
    {
        instructions = s;
    }

    public void setPassword(String s)
    {
        attributes.put("password", s);
    }

    public void setRegistered(boolean flag)
    {
        registered = flag;
    }

    public void setRemove(boolean flag)
    {
        remove = flag;
    }

    public void setUsername(String s)
    {
        attributes.put("username", s);
    }
}
