// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Iterator;
import org.dom4j.Element;

// Referenced classes of package org.dom4j.tree:
//            FilterIterator

public class ElementIterator extends FilterIterator
{

    public ElementIterator(Iterator iterator)
    {
        super(iterator);
    }

    protected boolean matches(Object obj)
    {
        return obj instanceof Element;
    }
}
