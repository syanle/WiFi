// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractHashedMap

protected static abstract class expectedModCount
{

    protected int expectedModCount;
    protected int hashIndex;
    protected Value last;
    protected Value next;
    protected final AbstractHashedMap parent;

    protected expectedModCount currentEntry()
    {
        return last;
    }

    public boolean hasNext()
    {
        return next != null;
    }

    protected next nextEntry()
    {
        if (parent.modCount != expectedModCount)
        {
            throw new ConcurrentModificationException();
        }
        next next2 = next;
        if (next2 == null)
        {
            throw new NoSuchElementException("No next() entry in the iteration");
        }
        next anext[] = parent.data;
        int i = hashIndex;
        next next1 = next2.t;
        do
        {
            if (next1 != null || i <= 0)
            {
                next = next1;
                hashIndex = i;
                last = next2;
                return next2;
            }
            i--;
            next1 = anext[i];
        } while (true);
    }

    public void remove()
    {
        if (last == null)
        {
            throw new IllegalStateException("remove() can only be called once after next()");
        }
        if (parent.modCount != expectedModCount)
        {
            throw new ConcurrentModificationException();
        } else
        {
            parent.remove(last.Key());
            last = null;
            expectedModCount = parent.modCount;
            return;
        }
    }

    public String toString()
    {
        if (last != null)
        {
            return (new StringBuilder("Iterator[")).append(last.Key()).append("=").append(last.Value()).append("]").toString();
        } else
        {
            return "Iterator[]";
        }
    }

    protected (AbstractHashedMap abstracthashedmap)
    {
        parent = abstracthashedmap;
         a[] = abstracthashedmap.data;
        int i = a.length;
          = null;
        do
        {
            if (i <= 0 ||  != null)
            {
                next = ;
                hashIndex = i;
                expectedModCount = abstracthashedmap.modCount;
                return;
            }
            i--;
             = a[i];
        } while (true);
    }
}
