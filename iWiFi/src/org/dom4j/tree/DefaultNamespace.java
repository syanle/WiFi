// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Namespace;

public class DefaultNamespace extends Namespace
{

    private Element parent;

    public DefaultNamespace(String s, String s1)
    {
        super(s, s1);
    }

    public DefaultNamespace(Element element, String s, String s1)
    {
        super(s, s1);
        parent = element;
    }

    protected int createHashCode()
    {
        int j = super.createHashCode();
        int i = j;
        if (parent != null)
        {
            i = j ^ parent.hashCode();
        }
        return i;
    }

    public boolean equals(Object obj)
    {
        if ((obj instanceof DefaultNamespace) && ((DefaultNamespace)obj).parent == parent)
        {
            return super.equals(obj);
        } else
        {
            return false;
        }
    }

    public Element getParent()
    {
        return parent;
    }

    public int hashCode()
    {
        return super.hashCode();
    }

    public boolean isReadOnly()
    {
        return false;
    }

    public void setParent(Element element)
    {
        parent = element;
    }

    public boolean supportsParent()
    {
        return true;
    }
}
