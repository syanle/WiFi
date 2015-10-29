// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import org.dom4j.Text;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractCharacterData

public abstract class AbstractText extends AbstractCharacterData
    implements Text
{

    public AbstractText()
    {
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        return getText();
    }

    public short getNodeType()
    {
        return 3;
    }

    public String toString()
    {
        return super.toString() + " [Text: \"" + getText() + "\"]";
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write(getText());
    }
}
