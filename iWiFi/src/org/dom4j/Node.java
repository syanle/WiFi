// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

// Referenced classes of package org.dom4j:
//            InvalidXPathException, Visitor, Element, XPath, 
//            Document

public interface Node
    extends Cloneable
{

    public static final short ANY_NODE = 0;
    public static final short ATTRIBUTE_NODE = 2;
    public static final short CDATA_SECTION_NODE = 4;
    public static final short COMMENT_NODE = 8;
    public static final short DOCUMENT_NODE = 9;
    public static final short DOCUMENT_TYPE_NODE = 10;
    public static final short ELEMENT_NODE = 1;
    public static final short ENTITY_REFERENCE_NODE = 5;
    public static final short MAX_NODE_TYPE = 14;
    public static final short NAMESPACE_NODE = 13;
    public static final short PROCESSING_INSTRUCTION_NODE = 7;
    public static final short TEXT_NODE = 3;
    public static final short UNKNOWN_NODE = 14;

    public abstract void accept(Visitor visitor);

    public abstract String asXML();

    public abstract Node asXPathResult(Element element);

    public abstract Object clone();

    public abstract XPath createXPath(String s)
        throws InvalidXPathException;

    public abstract Node detach();

    public abstract Document getDocument();

    public abstract String getName();

    public abstract short getNodeType();

    public abstract String getNodeTypeName();

    public abstract Element getParent();

    public abstract String getPath();

    public abstract String getPath(Element element);

    public abstract String getStringValue();

    public abstract String getText();

    public abstract String getUniquePath();

    public abstract String getUniquePath(Element element);

    public abstract boolean hasContent();

    public abstract boolean isReadOnly();

    public abstract boolean matches(String s);

    public abstract Number numberValueOf(String s);

    public abstract List selectNodes(String s);

    public abstract List selectNodes(String s, String s1);

    public abstract List selectNodes(String s, String s1, boolean flag);

    public abstract Object selectObject(String s);

    public abstract Node selectSingleNode(String s);

    public abstract void setDocument(Document document);

    public abstract void setName(String s);

    public abstract void setParent(Element element);

    public abstract void setText(String s);

    public abstract boolean supportsParent();

    public abstract String valueOf(String s);

    public abstract void write(Writer writer)
        throws IOException;
}
