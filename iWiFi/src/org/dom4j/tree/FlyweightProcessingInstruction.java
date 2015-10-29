// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Collections;
import java.util.Map;
import org.dom4j.Element;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.tree:
//            AbstractProcessingInstruction, DefaultProcessingInstruction

public class FlyweightProcessingInstruction extends AbstractProcessingInstruction
{

    protected String target;
    protected String text;
    protected Map values;

    public FlyweightProcessingInstruction()
    {
    }

    public FlyweightProcessingInstruction(String s, String s1)
    {
        target = s;
        text = s1;
        values = parseValues(s1);
    }

    public FlyweightProcessingInstruction(String s, Map map)
    {
        target = s;
        values = map;
        text = toString(map);
    }

    protected Node createXPathResult(Element element)
    {
        return new DefaultProcessingInstruction(element, getTarget(), getText());
    }

    public String getTarget()
    {
        return target;
    }

    public String getText()
    {
        return text;
    }

    public String getValue(String s)
    {
        String s1 = (String)values.get(s);
        s = s1;
        if (s1 == null)
        {
            s = "";
        }
        return s;
    }

    public Map getValues()
    {
        return Collections.unmodifiableMap(values);
    }

    public void setTarget(String s)
    {
        throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
    }
}
