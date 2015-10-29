// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;


// Referenced classes of package org.jivesoftware.smack.util.collections:
//            MapIterator, AbstractReferenceMap

static class  extends 
    implements MapIterator
{

    public Object getKey()
    {
          = currentEntry();
        if ( == null)
        {
            throw new IllegalStateException("getKey() can only be called after next() and before remove()");
        } else
        {
            return .currentEntry();
        }
    }

    public Object getValue()
    {
        currentEntry currententry = currentEntry();
        if (currententry == null)
        {
            throw new IllegalStateException("getValue() can only be called after next() and before remove()");
        } else
        {
            return currententry.currentEntry();
        }
    }

    public Object next()
    {
        return nextEntry().();
    }

    public Object setValue(Object obj)
    {
          = currentEntry();
        if ( == null)
        {
            throw new IllegalStateException("setValue() can only be called after next() and before remove()");
        } else
        {
            return .currentEntry(obj);
        }
    }

    protected (AbstractReferenceMap abstractreferencemap)
    {
        super(abstractreferencemap);
    }
}
