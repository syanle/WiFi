// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.AbstractSet;
import java.util.Iterator;

// Referenced classes of package org.dom4j.tree:
//            ConcurrentReaderHashMap

private class <init> extends AbstractSet
{

    private final ConcurrentReaderHashMap this$0;

    public void clear()
    {
        ConcurrentReaderHashMap.this.clear();
    }

    public boolean contains(Object obj)
    {
        if (obj instanceof java.util.ySet)
        {
            obj = (java.util.ySet)obj;
            Object obj1 = get(((java.util.ySet) (obj)).ySet());
            if (obj1 != null && obj1.equals(((java.util.ySet) (obj)).ySet()))
            {
                return true;
            }
        }
        return false;
    }

    public Iterator iterator()
    {
        return new tor(ConcurrentReaderHashMap.this);
    }

    public boolean remove(Object obj)
    {
        if (!(obj instanceof java.util.ySet))
        {
            return false;
        } else
        {
            return findAndRemoveEntry((java.util.AndRemoveEntry)obj);
        }
    }

    public int size()
    {
        return ConcurrentReaderHashMap.this.size();
    }

    private tor()
    {
        this$0 = ConcurrentReaderHashMap.this;
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
