// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;

// Referenced classes of package com.hp.hpl.sparta:
//            Node, Element

public class Text extends Node
{

    private StringBuffer text_;

    public Text(char c)
    {
        text_ = new StringBuffer();
        text_.append(c);
    }

    public Text(String s)
    {
        text_ = new StringBuffer(s);
    }

    public void appendData(char c)
    {
        text_.append(c);
        notifyObservers();
    }

    public void appendData(String s)
    {
        text_.append(s);
        notifyObservers();
    }

    public void appendData(char ac[], int i, int j)
    {
        text_.append(ac, i, j);
        notifyObservers();
    }

    public Object clone()
    {
        return new Text(text_.toString());
    }

    protected int computeHashCode()
    {
        return text_.toString().hashCode();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof Text))
        {
            return false;
        } else
        {
            obj = (Text)obj;
            return text_.toString().equals(((Text) (obj)).text_.toString());
        }
    }

    public String getData()
    {
        return text_.toString();
    }

    public void setData(String s)
    {
        text_ = new StringBuffer(s);
        notifyObservers();
    }

    void toString(Writer writer)
        throws IOException
    {
        writer.write(text_.toString());
    }

    void toXml(Writer writer)
        throws IOException
    {
        String s = text_.toString();
        if (s.length() < 50)
        {
            Node.htmlEncode(writer, s);
            return;
        } else
        {
            writer.write("<![CDATA[");
            writer.write(s);
            writer.write("]]>");
            return;
        }
    }

    public Element xpathSelectElement(String s)
    {
        throw new Error("Sorry, not implemented");
    }

    public Enumeration xpathSelectElements(String s)
    {
        throw new Error("Sorry, not implemented");
    }

    public String xpathSelectString(String s)
    {
        throw new Error("Sorry, not implemented");
    }

    public Enumeration xpathSelectStrings(String s)
    {
        throw new Error("Sorry, not implemented");
    }
}
