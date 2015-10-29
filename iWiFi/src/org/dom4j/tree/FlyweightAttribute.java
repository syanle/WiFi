// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.tree:
//            AbstractAttribute

public class FlyweightAttribute extends AbstractAttribute
{

    private QName qname;
    protected String value;

    public FlyweightAttribute(String s, String s1)
    {
        qname = getDocumentFactory().createQName(s);
        value = s1;
    }

    public FlyweightAttribute(String s, String s1, Namespace namespace)
    {
        qname = getDocumentFactory().createQName(s, namespace);
        value = s1;
    }

    public FlyweightAttribute(QName qname1)
    {
        qname = qname1;
    }

    public FlyweightAttribute(QName qname1, String s)
    {
        qname = qname1;
        value = s;
    }

    public QName getQName()
    {
        return qname;
    }

    public String getValue()
    {
        return value;
    }
}
