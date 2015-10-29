// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            FlyweightText

public class DefaultText extends FlyweightText
{

    private Element parent;

    public DefaultText(String s)
    {
        super(s);
    }

    public DefaultText(Element element, String s)
    {
        super(s);
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

    public void setText(String s)
    {
        text = s;
    }

    public boolean supportsParent()
    {
        return true;
    }
}
