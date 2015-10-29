// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractReferenceMap

static class expectedModCount
{

    Object currentKey;
    Object currentValue;
    nextEntry entry;
    int expectedModCount;
    int index;
    Object nextKey;
    Object nextValue;
    final AbstractReferenceMap parent;
    nextEntry previous;

    private void checkMod()
    {
        if (parent.modCount != expectedModCount)
        {
            throw new ConcurrentModificationException();
        } else
        {
            return;
        }
    }

    private boolean nextNull()
    {
        return nextKey == null || nextValue == null;
    }

    protected nextValue currentEntry()
    {
        checkMod();
        return previous;
    }

    public boolean hasNext()
    {
        checkMod();
        do
        {
            do
            {
                if (!nextNull())
                {
                    return true;
                }
                previous previous1 = entry;
                int i = index;
                do
                {
                    if (previous1 != null || i <= 0)
                    {
                        entry = previous1;
                        index = i;
                        if (previous1 == null)
                        {
                            currentKey = null;
                            currentValue = null;
                            return false;
                        }
                        break;
                    }
                    i--;
                    previous1 = (currentValue)parent.data[i];
                } while (true);
                nextKey = previous1.nextKey();
                nextValue = previous1.e();
            } while (!nextNull());
            entry = entry.entry();
        } while (true);
    }

    protected entry nextEntry()
    {
        checkMod();
        if (nextNull() && !hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            previous = entry;
            entry = entry.entry();
            currentKey = nextKey;
            currentValue = nextValue;
            nextKey = null;
            nextValue = null;
            return previous;
        }
    }

    public void remove()
    {
        checkMod();
        if (previous == null)
        {
            throw new IllegalStateException();
        } else
        {
            parent.remove(currentKey);
            previous = null;
            currentKey = null;
            currentValue = null;
            expectedModCount = parent.modCount;
            return;
        }
    }

    public parent superNext()
    {
        return nextEntry();
    }

    public (AbstractReferenceMap abstractreferencemap)
    {
        parent = abstractreferencemap;
        int i;
        if (abstractreferencemap.size() != 0)
        {
            i = abstractreferencemap.data.length;
        } else
        {
            i = 0;
        }
        index = i;
        expectedModCount = abstractreferencemap.modCount;
    }
}
