// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j;

import java.util.Map;
import org.xml.sax.EntityResolver;

// Referenced classes of package org.dom4j:
//            Branch, DocumentType, Element

public interface Document
    extends Branch
{

    public abstract Document addComment(String s);

    public abstract Document addDocType(String s, String s1, String s2);

    public abstract Document addProcessingInstruction(String s, String s1);

    public abstract Document addProcessingInstruction(String s, Map map);

    public abstract DocumentType getDocType();

    public abstract EntityResolver getEntityResolver();

    public abstract Element getRootElement();

    public abstract String getXMLEncoding();

    public abstract void setDocType(DocumentType documenttype);

    public abstract void setEntityResolver(EntityResolver entityresolver);

    public abstract void setRootElement(Element element);

    public abstract void setXMLEncoding(String s);
}
