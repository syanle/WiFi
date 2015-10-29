// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Node;

// Referenced classes of package org.dom4j.tree:
//            AbstractEntity, DefaultEntity

public class FlyweightEntity extends AbstractEntity
{

    protected String name;
    protected String text;

    protected FlyweightEntity()
    {
    }

    public FlyweightEntity(String s)
    {
        name = s;
    }

    public FlyweightEntity(String s, String s1)
    {
        name = s;
        text = s1;
    }

    protected Node createXPathResult(Element element)
    {
        return new DefaultEntity(element, getName(), getText());
    }

    public String getName()
    {
        return name;
    }

    public String getText()
    {
        return text;
    }

    public void setText(String s)
    {
        if (text != null)
        {
            text = s;
            return;
        } else
        {
            throw new UnsupportedOperationException("This Entity is read-only. It cannot be modified");
        }
    }
}
