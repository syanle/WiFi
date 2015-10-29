// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            FlyweightComment

public class DefaultComment extends FlyweightComment
{

    private Element parent;

    public DefaultComment(String s)
    {
        super(s);
    }

    public DefaultComment(Element element, String s)
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
