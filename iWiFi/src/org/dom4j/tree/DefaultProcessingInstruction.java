// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Map;
import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            FlyweightProcessingInstruction

public class DefaultProcessingInstruction extends FlyweightProcessingInstruction
{

    private Element parent;

    public DefaultProcessingInstruction(String s, String s1)
    {
        super(s, s1);
    }

    public DefaultProcessingInstruction(String s, Map map)
    {
        super(s, map);
    }

    public DefaultProcessingInstruction(Element element, String s, String s1)
    {
        super(s, s1);
        parent = element;
    }

    public Element getParent()
    {
        return parent;
    }

    public boolean isReadOnly()
    {
        return false;
    }

    public void setParent(Element element)
    {
        parent = element;
    }

    public void setTarget(String s)
    {
        target = s;
    }

    public void setText(String s)
    {
        text = s;
        values = parseValues(s);
    }

    public void setValue(String s, String s1)
    {
        values.put(s, s1);
    }

    public void setValues(Map map)
    {
        values = map;
        text = toString(map);
    }

    public boolean supportsParent()
    {
        return true;
    }
}
