// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractNode

public abstract class AbstractDocumentType extends AbstractNode
    implements DocumentType
{

    public AbstractDocumentType()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        StringBuffer stringbuffer = new StringBuffer("<!DOCTYPE ");
        stringbuffer.append(getElementName());
        boolean flag1 = false;
        String s = getPublicID();
        boolean flag = flag1;
        if (s != null)
        {
            flag = flag1;
            if (s.length() > 0)
            {
                stringbuffer.append(" PUBLIC \"");
                stringbuffer.append(s);
                stringbuffer.append("\"");
                flag = true;
            }
        }
        s = getSystemID();
        if (s != null && s.length() > 0)
        {
            if (!flag)
            {
                stringbuffer.append(" SYSTEM");
            }
            stringbuffer.append(" \"");
            stringbuffer.append(s);
            stringbuffer.append("\"");
        }
        stringbuffer.append(">");
        return stringbuffer.toString();
    }

    public String getName()
    {
        return getElementName();
    }

    public short getNodeType()
    {
        return 10;
    }

    public String getPath(Element element)
    {
        return "";
    }

    public String getText()
    {
        Object obj = getInternalDeclarations();
        if (obj != null && ((List) (obj)).size() > 0)
        {
            StringBuffer stringbuffer = new StringBuffer();
            obj = ((List) (obj)).iterator();
            if (((Iterator) (obj)).hasNext())
            {
                stringbuffer.append(((Iterator) (obj)).next().toString());
                Object obj1;
                for (; ((Iterator) (obj)).hasNext(); stringbuffer.append(obj1.toString()))
                {
                    obj1 = ((Iterator) (obj)).next();
                    stringbuffer.append("\n");
                }

            }
            return stringbuffer.toString();
        } else
        {
            return "";
        }
    }

    public String getUniquePath(Element element)
    {
        return "";
    }

    public void setName(String s)
    {
        setElementName(s);
    }

    public String toString()
    {
        return super.toString() + " [DocumentType: " + asXML() + "]";
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write("<!DOCTYPE ");
        writer.write(getElementName());
        boolean flag1 = false;
        Object obj = getPublicID();
        boolean flag = flag1;
        if (obj != null)
        {
            flag = flag1;
            if (((String) (obj)).length() > 0)
            {
                writer.write(" PUBLIC \"");
                writer.write(((String) (obj)));
                writer.write("\"");
                flag = true;
            }
        }
        obj = getSystemID();
        if (obj != null && ((String) (obj)).length() > 0)
        {
            if (!flag)
            {
                writer.write(" SYSTEM");
            }
            writer.write(" \"");
            writer.write(((String) (obj)));
            writer.write("\"");
        }
        obj = getInternalDeclarations();
        if (obj != null && ((List) (obj)).size() > 0)
        {
            writer.write(" [");
            Object obj1;
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); writer.write(obj1.toString()))
            {
                obj1 = ((Iterator) (obj)).next();
                writer.write("\n  ");
            }

            writer.write("\n]");
        }
        writer.write(">");
    }
}
