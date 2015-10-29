// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import org.dom4j.Comment;
import org.dom4j.Element;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractCharacterData

public abstract class AbstractComment extends AbstractCharacterData
    implements Comment
{

    public AbstractComment()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        return "<!--" + getText() + "-->";
    }

    public short getNodeType()
    {
        return 8;
    }

    public String getPath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getPath(element) + "/comment()";
        } else
        {
            return "comment()";
        }
    }

    public String getUniquePath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getUniquePath(element) + "/comment()";
        } else
        {
            return "comment()";
        }
    }

    public String toString()
    {
        return super.toString() + " [Comment: \"" + getText() + "\"]";
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write("<!--");
        writer.write(getText());
        writer.write("-->");
    }
}
