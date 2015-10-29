// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.List;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.tree:
//            AbstractElement, ContentListFacade

public class BaseElement extends AbstractElement
{

    protected List attributes;
    protected List content;
    private Branch parentBranch;
    private QName qname;

    public BaseElement(String s)
    {
        qname = getDocumentFactory().createQName(s);
    }

    public BaseElement(String s, Namespace namespace)
    {
        qname = getDocumentFactory().createQName(s, namespace);
    }

    public BaseElement(QName qname1)
    {
        qname = qname1;
    }

    protected List attributeList()
    {
        if (attributes == null)
        {
            attributes = createAttributeList();
        }
        return attributes;
    }

    protected List attributeList(int i)
    {
        if (attributes == null)
        {
            attributes = createAttributeList(i);
        }
        return attributes;
    }

    public void clearContent()
    {
        contentList().clear();
    }

    protected List contentList()
    {
        if (content == null)
        {
            content = createContentList();
        }
        return content;
    }

    public Document getDocument()
    {
        if (parentBranch instanceof Document)
        {
            return (Document)parentBranch;
        }
        if (parentBranch instanceof Element)
        {
            return ((Element)parentBranch).getDocument();
        } else
        {
            return null;
        }
    }

    public Element getParent()
    {
        Element element = null;
        if (parentBranch instanceof Element)
        {
            element = (Element)parentBranch;
        }
        return element;
    }

    public QName getQName()
    {
        return qname;
    }

    protected void setAttributeList(List list)
    {
        attributes = list;
    }

    public void setAttributes(List list)
    {
        attributes = list;
        if (list instanceof ContentListFacade)
        {
            attributes = ((ContentListFacade)list).getBackingList();
        }
    }

    public void setContent(List list)
    {
        content = list;
        if (list instanceof ContentListFacade)
        {
            content = ((ContentListFacade)list).getBackingList();
        }
    }

    public void setDocument(Document document)
    {
        if ((parentBranch instanceof Document) || document != null)
        {
            parentBranch = document;
        }
    }

    public void setParent(Element element)
    {
        if ((parentBranch instanceof Element) || element != null)
        {
            parentBranch = element;
        }
    }

    public void setQName(QName qname1)
    {
        qname = qname1;
    }

    public boolean supportsParent()
    {
        return true;
    }
}
