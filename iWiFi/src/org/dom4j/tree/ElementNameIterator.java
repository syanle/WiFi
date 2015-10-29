// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Iterator;
import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            FilterIterator

public class ElementNameIterator extends FilterIterator
{

    private String name;

    public ElementNameIterator(Iterator iterator, String s)
    {
        super(iterator);
        name = s;
    }

    protected boolean matches(Object obj)
    {
        if (obj instanceof Element)
        {
            obj = (Element)obj;
            return name.equals(((Element) (obj)).getName());
        } else
        {
            return false;
        }
    }
}
