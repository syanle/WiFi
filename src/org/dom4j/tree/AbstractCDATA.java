// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import org.dom4j.CDATA;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractCharacterData

public abstract class AbstractCDATA extends AbstractCharacterData
    implements CDATA
{

    public AbstractCDATA()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        StringWriter stringwriter = new StringWriter();
        try
        {
            write(stringwriter);
        }
        catch (IOException ioexception) { }
        return stringwriter.toString();
    }

    public short getNodeType()
    {
        return 4;
    }

    public String toString()
    {
        return super.toString() + " [CDATA: \"" + getText() + "\"]";
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write("<![CDATA[");
        if (getText() != null)
        {
            writer.write(getText());
        }
        writer.write("]]>");
    }
}
