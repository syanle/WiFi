// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.tree.BackedList;
import org.dom4j.tree.DefaultElement;

public class IndexedElement extends DefaultElement
{

    private Map attributeIndex;
    private Map elementIndex;

    public IndexedElement(String s)
    {
        super(s);
    }

    public IndexedElement(QName qname)
    {
        super(qname);
    }

    public IndexedElement(QName qname, int i)
    {
        super(qname, i);
    }

    protected void addNode(Node node)
    {
        super.addNode(node);
        if (elementIndex != null && (node instanceof Element))
        {
            addToElementIndex((Element)node);
        } else
        if (attributeIndex != null && (node instanceof Attribute))
        {
            addToAttributeIndex((Attribute)node);
            return;
        }
    }

    protected void addToAttributeIndex(Object obj, Attribute attribute1)
    {
        if (attributeIndex.get(obj) != null)
        {
            attributeIndex.put(obj, attribute1);
        }
    }

    protected void addToAttributeIndex(Attribute attribute1)
    {
        QName qname = attribute1.getQName();
        String s = qname.getName();
        addToAttributeIndex(qname, attribute1);
        addToAttributeIndex(s, attribute1);
    }

    protected void addToElementIndex(Object obj, Element element1)
    {
        Object obj1 = elementIndex.get(obj);
        if (obj1 == null)
        {
            elementIndex.put(obj, element1);
            return;
        }
        if (obj1 instanceof List)
        {
            ((List)obj1).add(element1);
            return;
        } else
        {
            List list = createList();
            list.add(obj1);
            list.add(element1);
            elementIndex.put(obj, list);
            return;
        }
    }

    protected void addToElementIndex(Element element1)
    {
        QName qname = element1.getQName();
        String s = qname.getName();
        addToElementIndex(qname, element1);
        addToElementIndex(s, element1);
    }

    protected Element asElement(Object obj)
    {
        if (obj instanceof Element)
        {
            return (Element)obj;
        }
        if (obj != null)
        {
            obj = (List)obj;
            if (((List) (obj)).size() >= 1)
            {
                return (Element)((List) (obj)).get(0);
            }
        }
        return null;
    }

    protected Iterator asElementIterator(Object obj)
    {
        return asElementList(obj).iterator();
    }

    protected List asElementList(Object obj)
    {
        if (!(obj instanceof Element)) goto _L2; else goto _L1
_L1:
        obj = createSingleResultList(obj);
_L4:
        return ((List) (obj));
_L2:
label0:
        {
            if (obj == null)
            {
                break label0;
            }
            List list = (List)obj;
            BackedList backedlist = createResultList();
            int i = 0;
            int j = list.size();
            do
            {
                obj = backedlist;
                if (i >= j)
                {
                    break;
                }
                backedlist.addLocal(list.get(i));
                i++;
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        return createEmptyList();
    }

    public Attribute attribute(String s)
    {
        return (Attribute)attributeIndex().get(s);
    }

    public Attribute attribute(QName qname)
    {
        return (Attribute)attributeIndex().get(qname);
    }

    protected Map attributeIndex()
    {
        if (attributeIndex == null)
        {
            attributeIndex = createAttributeIndex();
            for (Iterator iterator = attributeIterator(); iterator.hasNext(); addToAttributeIndex((Attribute)iterator.next())) { }
        }
        return attributeIndex;
    }

    protected Map createAttributeIndex()
    {
        return createIndex();
    }

    protected Map createElementIndex()
    {
        return createIndex();
    }

    protected Map createIndex()
    {
        return new HashMap();
    }

    protected List createList()
    {
        return new ArrayList();
    }

    public Element element(String s)
    {
        return asElement(elementIndex().get(s));
    }

    public Element element(QName qname)
    {
        return asElement(elementIndex().get(qname));
    }

    protected Map elementIndex()
    {
        if (elementIndex == null)
        {
            elementIndex = createElementIndex();
            for (Iterator iterator = elementIterator(); iterator.hasNext(); addToElementIndex((Element)iterator.next())) { }
        }
        return elementIndex;
    }

    public List elements(String s)
    {
        return asElementList(elementIndex().get(s));
    }

    public List elements(QName qname)
    {
        return asElementList(elementIndex().get(qname));
    }

    protected void removeFromAttributeIndex(Object obj, Attribute attribute1)
    {
        Object obj1 = attributeIndex.get(obj);
        if (obj1 != null && obj1.equals(attribute1))
        {
            attributeIndex.remove(obj);
        }
    }

    protected void removeFromAttributeIndex(Attribute attribute1)
    {
        QName qname = attribute1.getQName();
        String s = qname.getName();
        removeFromAttributeIndex(qname, attribute1);
        removeFromAttributeIndex(s, attribute1);
    }

    protected void removeFromElementIndex(Object obj, Element element1)
    {
        Object obj1 = elementIndex.get(obj);
        if (obj1 instanceof List)
        {
            ((List)obj1).remove(element1);
            return;
        } else
        {
            elementIndex.remove(obj);
            return;
        }
    }

    protected void removeFromElementIndex(Element element1)
    {
        QName qname = element1.getQName();
        String s = qname.getName();
        removeFromElementIndex(qname, element1);
        removeFromElementIndex(s, element1);
    }

    protected boolean removeNode(Node node)
    {
        if (!super.removeNode(node)) goto _L2; else goto _L1
_L1:
        if (elementIndex == null || !(node instanceof Element)) goto _L4; else goto _L3
_L3:
        removeFromElementIndex((Element)node);
_L5:
        return true;
_L4:
        if (attributeIndex != null && (node instanceof Attribute))
        {
            removeFromAttributeIndex((Attribute)node);
        }
        if (true) goto _L5; else goto _L2
_L2:
        return false;
    }
}
