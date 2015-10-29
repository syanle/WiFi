// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class FilterIterator
    implements Iterator
{

    private boolean first;
    private Object next;
    protected Iterator proxy;

    public FilterIterator(Iterator iterator)
    {
        first = true;
        proxy = iterator;
    }

    protected Object findNext()
    {
        if (proxy != null)
        {
            while (proxy.hasNext()) 
            {
                Object obj = proxy.next();
                if (obj != null && matches(obj))
                {
                    return obj;
                }
            }
            proxy = null;
        }
        return null;
    }

    public boolean hasNext()
    {
        boolean flag = false;
        if (first)
        {
            next = findNext();
            first = false;
        }
        if (next != null)
        {
            flag = true;
        }
        return flag;
    }

    protected abstract boolean matches(Object obj);

    public Object next()
        throws NoSuchElementException
    {
        if (!hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            Object obj = next;
            next = findNext();
            return obj;
        }
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }
}
