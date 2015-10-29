// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package org.dom4j:
//            Branch, Attribute, CDATA, Entity, 
//            Namespace, Text, QName, Node

public interface Element
    extends Branch
{

    public abstract void add(Attribute attribute1);

    public abstract void add(CDATA cdata);

    public abstract void add(Entity entity);

    public abstract void add(Namespace namespace);

    public abstract void add(Text text);

    public abstract Element addAttribute(String s, String s1);

    public abstract Element addAttribute(QName qname, String s);

    public abstract Element addCDATA(String s);

    public abstract Element addComment(String s);

    public abstract Element addEntity(String s, String s1);

    public abstract Element addNamespace(String s, String s1);

    public abstract Element addProcessingInstruction(String s, String s1);

    public abstract Element addProcessingInstruction(String s, Map map);

    public abstract Element addText(String s);

    public abstract List additionalNamespaces();

    public abstract void appendAttributes(Element element1);

    public abstract Attribute attribute(int i);

    public abstract Attribute attribute(String s);

    public abstract Attribute attribute(QName qname);

    public abstract int attributeCount();

    public abstract Iterator attributeIterator();

    public abstract String attributeValue(String s);

    public abstract String attributeValue(String s, String s1);

    public abstract String attributeValue(QName qname);

    public abstract String attributeValue(QName qname, String s);

    public abstract List attributes();

    public abstract Element createCopy();

    public abstract Element createCopy(String s);

    public abstract Element createCopy(QName qname);

    public abstract List declaredNamespaces();

    public abstract Element element(String s);

    public abstract Element element(QName qname);

    public abstract Iterator elementIterator();

    public abstract Iterator elementIterator(String s);

    public abstract Iterator elementIterator(QName qname);

    public abstract String elementText(String s);

    public abstract String elementText(QName qname);

    public abstract String elementTextTrim(String s);

    public abstract String elementTextTrim(QName qname);

    public abstract List elements();

    public abstract List elements(String s);

    public abstract List elements(QName qname);

    public abstract Object getData();

    public abstract Namespace getNamespace();

    public abstract Namespace getNamespaceForPrefix(String s);

    public abstract Namespace getNamespaceForURI(String s);

    public abstract String getNamespacePrefix();

    public abstract String getNamespaceURI();

    public abstract List getNamespacesForURI(String s);

    public abstract QName getQName();

    public abstract QName getQName(String s);

    public abstract String getQualifiedName();

    public abstract String getStringValue();

    public abstract String getText();

    public abstract String getTextTrim();

    public abstract Node getXPathResult(int i);

    public abstract boolean hasMixedContent();

    public abstract boolean isRootElement();

    public abstract boolean isTextOnly();

    public abstract boolean remove(Attribute attribute1);

    public abstract boolean remove(CDATA cdata);

    public abstract boolean remove(Entity entity);

    public abstract boolean remove(Namespace namespace);

    public abstract boolean remove(Text text);

    public abstract void setAttributeValue(String s, String s1);

    public abstract void setAttributeValue(QName qname, String s);

    public abstract void setAttributes(List list);

    public abstract void setData(Object obj);

    public abstract void setQName(QName qname);
}
