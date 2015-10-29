// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            FlyweightEntity

public class DefaultEntity extends FlyweightEntity
{

    private Element parent;

    public DefaultEntity(String s)
    {
        super(s);
    }

    public DefaultEntity(String s, String s1)
    {
        super(s, s1);
    }

    public DefaultEntity(Element element, String s, String s1)
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

    public void setName(String s)
    {
        name = s;
    }

    public void setParent(Element element)
    {
        parent = element;
    }

    public void setText(String s)
    {
        text = s;
    }

    public boolean supportsParent()
    {
        return true;
    }
}
