// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Iterator;
import org.dom4j.Element;
import org.dom4j.QName;

// Referenced classes of package org.dom4j.tree:
//            FilterIterator

public class ElementQNameIterator extends FilterIterator
{

    private QName qName;

    public ElementQNameIterator(Iterator iterator, QName qname)
    {
        super(iterator);
        qName = qname;
    }

    protected boolean matches(Object obj)
    {
        if (obj instanceof Element)
        {
            obj = (Element)obj;
            return qName.equals(((Element) (obj)).getQName());
        } else
        {
            return false;
        }
    }
}
