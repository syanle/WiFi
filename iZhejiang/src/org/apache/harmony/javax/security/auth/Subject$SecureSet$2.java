// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            Subject

class elements extends AbstractSet
{

    private LinkedList elements;
    final elements this$1;
    private final Class val$c;

    public boolean add(Object obj)
    {
        if (!val$c.isAssignableFrom(obj.getClass()))
        {
            throw new IllegalArgumentException((new StringBuilder("auth.0C ")).append(val$c.getName()).toString());
        }
        if (elements.contains(obj))
        {
            return false;
        } else
        {
            elements.add(obj);
            return true;
        }
    }

    public Iterator iterator()
    {
        return elements.iterator();
    }

    public boolean retainAll(Collection collection)
    {
        if (collection == null)
        {
            throw new NullPointerException();
        } else
        {
            return super.retainAll(collection);
        }
    }

    public int size()
    {
        return elements.size();
    }

    ()
    {
        this$1 = final_;
        val$c = Class.this;
        super();
        elements = new LinkedList();
    }
}
