// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.util:
//            IndexedElement

public class IndexedDocumentFactory extends DocumentFactory
{

    protected static transient IndexedDocumentFactory singleton = new IndexedDocumentFactory();

    public IndexedDocumentFactory()
    {
    }

    public static DocumentFactory getInstance()
    {
        return singleton;
    }

    public Element createElement(QName qname)
    {
        return new IndexedElement(qname);
    }

    public Element createElement(QName qname, int i)
    {
        return new IndexedElement(qname, i);
    }

}
