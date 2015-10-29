// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.dom4j.Element;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Visitor;

// Referenced classes of package org.dom4j.tree:
//            AbstractNode

public abstract class AbstractProcessingInstruction extends AbstractNode
    implements ProcessingInstruction
{

    public AbstractProcessingInstruction()
    {
    }

    private String getName(StringTokenizer stringtokenizer)
    {
        StringBuffer stringbuffer = new StringBuffer(stringtokenizer.nextToken());
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s = stringtokenizer.nextToken();
            if (s.equals("="))
            {
                break;
            }
            stringbuffer.append(s);
        } while (true);
        return stringbuffer.toString().trim();
    }

    private String getValue(StringTokenizer stringtokenizer)
    {
        String s = stringtokenizer.nextToken();
        StringBuffer stringbuffer = new StringBuffer();
        for (; stringtokenizer.hasMoreTokens() && !s.equals("'") && !s.equals("\""); s = stringtokenizer.nextToken()) { }
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s1 = stringtokenizer.nextToken();
            if (s.equals(s1))
            {
                break;
            }
            stringbuffer.append(s1);
        } while (true);
        return stringbuffer.toString();
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        return "<?" + getName() + " " + getText() + "?>";
    }

    public String getName()
    {
        return getTarget();
    }

    public short getNodeType()
    {
        return 7;
    }

    public String getPath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getPath(element) + "/processing-instruction()";
        } else
        {
            return "processing-instruction()";
        }
    }

    public String getUniquePath(Element element)
    {
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            return element1.getUniquePath(element) + "/processing-instruction()";
        } else
        {
            return "processing-instruction()";
        }
    }

    protected Map parseValues(String s)
    {
        HashMap hashmap = new HashMap();
        s = new StringTokenizer(s, " ='\"", true);
        do
        {
            if (!s.hasMoreTokens())
            {
                break;
            }
            String s1 = getName(s);
            if (s.hasMoreTokens())
            {
                hashmap.put(s1, getValue(s));
            }
        } while (true);
        return hashmap;
    }

    public boolean removeValue(String s)
    {
        return false;
    }

    public void setName(String s)
    {
        setTarget(s);
    }

    public void setValue(String s, String s1)
    {
        throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
    }

    public void setValues(Map map)
    {
        throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
    }

    public String toString()
    {
        return super.toString() + " [ProcessingInstruction: &" + getName() + ";]";
    }

    protected String toString(Map map)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (map = map.entrySet().iterator(); map.hasNext(); stringbuffer.append("\" "))
        {
            Object obj = (java.util.Map.Entry)map.next();
            String s = (String)((java.util.Map.Entry) (obj)).getKey();
            obj = (String)((java.util.Map.Entry) (obj)).getValue();
            stringbuffer.append(s);
            stringbuffer.append("=\"");
            stringbuffer.append(((String) (obj)));
        }

        stringbuffer.setLength(stringbuffer.length() - 1);
        return stringbuffer.toString();
    }

    public void write(Writer writer)
        throws IOException
    {
        writer.write("<?");
        writer.write(getName());
        writer.write(" ");
        writer.write(getText());
        writer.write("?>");
    }
}
