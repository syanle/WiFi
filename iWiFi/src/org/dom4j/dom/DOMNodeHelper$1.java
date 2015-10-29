// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.dom;

import java.util.List;
import org.dom4j.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package org.dom4j.dom:
//            DOMNodeHelper

class val.list
    implements NodeList
{

    private final List val$list;

    public int getLength()
    {
        return val$list.size();
    }

    public org.w3c.dom.Node item(int i)
    {
        if (i >= getLength())
        {
            return null;
        } else
        {
            return DOMNodeHelper.asDOMNode((Node)val$list.get(i));
        }
    }

    ()
    {
        val$list = list1;
    }
}
