// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package org.dom4j.tree:
//            ConcurrentReaderHashMap

protected class tab
    implements Iterator, Enumeration
{

    protected Object currentKey;
    protected Object currentValue;
    protected entry entry;
    protected int index;
    protected entry lastReturned;
    protected final entry tab[];
    private final ConcurrentReaderHashMap this$0;

    public boolean hasMoreElements()
    {
        return hasNext();
    }

    public boolean hasNext()
    {
        do
        {
            if (entry != null)
            {
                Object obj = entry.entry;
                if (obj != null)
                {
                    currentKey = entry.entry;
                    currentValue = obj;
                    return true;
                }
                entry = entry.entry;
            }
            hasNext ahasnext[];
            int i;
            for (; entry == null && index >= 0; entry = ahasnext[i])
            {
                ahasnext = tab;
                i = index;
                index = i - 1;
            }

        } while (entry != null);
        currentValue = null;
        currentKey = null;
        return false;
    }

    public Object next()
    {
        if (currentKey == null && !hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            Object obj = returnValueOfNext();
            lastReturned = entry;
            currentValue = null;
            currentKey = null;
            entry = entry.entry;
            return obj;
        }
    }

    public Object nextElement()
    {
        return next();
    }

    public void remove()
    {
        if (lastReturned == null)
        {
            throw new IllegalStateException();
        } else
        {
            ConcurrentReaderHashMap.this.remove(lastReturned.lastReturned);
            lastReturned = null;
            return;
        }
    }

    protected Object returnValueOfNext()
    {
        return entry;
    }

    protected _cls9()
    {
        this$0 = ConcurrentReaderHashMap.this;
        entry = null;
        lastReturned = null;
        tab = getTableForReading();
        index = tab.length - 1;
    }
}
