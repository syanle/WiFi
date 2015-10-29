// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.AbstractCollection;
import java.util.Iterator;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractHashedMap

protected static class parent extends AbstractCollection
{

    protected final AbstractHashedMap parent;

    public void clear()
    {
        parent.clear();
    }

    public boolean contains(Object obj)
    {
        return parent.containsValue(obj);
    }

    public Iterator iterator()
    {
        return parent.createValuesIterator();
    }

    public int size()
    {
        return parent.size();
    }

    protected (AbstractHashedMap abstracthashedmap)
    {
        parent = abstracthashedmap;
    }
}
