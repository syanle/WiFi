// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import org.dom4j.tree.AbstractNode;
import org.dom4j.tree.DefaultNamespace;
import org.dom4j.tree.NamespaceCache;

// Referenced classes of package org.dom4j:
//            Visitor, Element, Node

public class Namespace extends AbstractNode
{

    protected static final NamespaceCache CACHE;
    public static final Namespace NO_NAMESPACE;
    public static final Namespace XML_NAMESPACE;
    private int hashCode;
    private String prefix;
    private String uri;

    public Namespace(String s, String s1)
    {
        if (s == null)
        {
            s = "";
        }
        prefix = s;
        if (s1 == null)
        {
            s1 = "";
        }
        uri = s1;
    }

    public static Namespace get(String s)
    {
        return CACHE.get(s);
    }

    public static Namespace get(String s, String s1)
    {
        return CACHE.get(s, s1);
    }

    public void accept(Visitor visitor)
    {
        visitor.visit(this);
    }

    public String asXML()
    {
        StringBuffer stringbuffer = new StringBuffer(10);
        String s = getPrefix();
        if (s != null && s.length() > 0)
        {
            stringbuffer.append("xmlns:");
            stringbuffer.append(s);
            stringbuffer.append("=\"");
        } else
        {
            stringbuffer.append("xmlns=\"");
        }
        stringbuffer.append(getURI());
        stringbuffer.append("\"");
        return stringbuffer.toString();
    }

    protected int createHashCode()
    {
        int j = uri.hashCode() ^ prefix.hashCode();
        int i = j;
        if (j == 0)
        {
            i = 47806;
        }
        return i;
    }

    protected Node createXPathResult(Element element)
    {
        return new DefaultNamespace(element, getPrefix(), getURI());
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof Namespace))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (Namespace)obj;
        if (hashCode() != ((Namespace) (obj)).hashCode())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!uri.equals(((Namespace) (obj)).getURI()) || !prefix.equals(((Namespace) (obj)).getPrefix()))
        {
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public short getNodeType()
    {
        return 13;
    }

    public String getPath(Element element)
    {
        StringBuffer stringbuffer = new StringBuffer(10);
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            stringbuffer.append(element1.getPath(element));
            stringbuffer.append('/');
        }
        stringbuffer.append(getXPathNameStep());
        return stringbuffer.toString();
    }

    public String getPrefix()
    {
        return prefix;
    }

    public String getStringValue()
    {
        return uri;
    }

    public String getText()
    {
        return uri;
    }

    public String getURI()
    {
        return uri;
    }

    public String getUniquePath(Element element)
    {
        StringBuffer stringbuffer = new StringBuffer(10);
        Element element1 = getParent();
        if (element1 != null && element1 != element)
        {
            stringbuffer.append(element1.getUniquePath(element));
            stringbuffer.append('/');
        }
        stringbuffer.append(getXPathNameStep());
        return stringbuffer.toString();
    }

    public String getXPathNameStep()
    {
        if (prefix != null && !"".equals(prefix))
        {
            return "namespace::" + prefix;
        } else
        {
            return "namespace::*[name()='']";
        }
    }

    public int hashCode()
    {
        if (hashCode == 0)
        {
            hashCode = createHashCode();
        }
        return hashCode;
    }

    public String toString()
    {
        return super.toString() + " [Namespace: prefix " + getPrefix() + " mapped to URI \"" + getURI() + "\"]";
    }

    static 
    {
        CACHE = new NamespaceCache();
        XML_NAMESPACE = CACHE.get("xml", "http://www.w3.org/XML/1998/namespace");
        NO_NAMESPACE = CACHE.get("", "");
    }
}
