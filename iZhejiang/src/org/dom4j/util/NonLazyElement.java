// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.util;

import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.BaseElement;

public class NonLazyElement extends BaseElement
{

    public NonLazyElement(String s)
    {
        super(s);
        attributes = createAttributeList();
        content = createContentList();
    }

    public NonLazyElement(String s, Namespace namespace)
    {
        super(s, namespace);
        attributes = createAttributeList();
        content = createContentList();
    }

    public NonLazyElement(QName qname)
    {
        super(qname);
        attributes = createAttributeList();
        content = createContentList();
    }

    public NonLazyElement(QName qname, int i)
    {
        super(qname);
        attributes = createAttributeList(i);
        content = createContentList();
    }
}
