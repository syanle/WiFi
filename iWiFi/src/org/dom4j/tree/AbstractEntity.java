// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractNode

public abstract class AbstractEntity extends AbstractNode
    implements Entity
{

    public AbstractEntity()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        return "&" + getName() + ";";
    }

    public short getNodeType()
    {
        return 5;
    }

    public String getPath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getPath(element) + "/text()";
        } else
        {
            return "text()";
        }
    }

    public String getStringValue()
    {
        return "&" + getName() + ";";
    }

    public String getUniquePath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getUniquePath(element) + "/text()";
        } else
        {
            return "text()";
        }
    }

    public String toString()
    {
        return super.toString() + " [Entity: &" + getName() + ";]";
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write("&");
        writer.write(getName());
        writer.write(";");
    }
}
