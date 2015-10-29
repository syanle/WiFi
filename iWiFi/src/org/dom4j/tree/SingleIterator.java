// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Iterator;

public class SingleIterator
    implements Iterator
{

    private boolean first;
    private Object object;

    public SingleIterator(Object obj)
    {
        first = true;
        object = obj;
    }

    public boolean hasNext()
    {
        return first;
    }

    public Object next()
    {
        Object obj = object;
        object = null;
        first = false;
        return obj;
    }

    public void remove()
    {
        throw new UnsupportedOperationException("remove() is not supported by this iterator");
    }
}
