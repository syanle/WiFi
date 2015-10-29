// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;


// Referenced classes of package org.jivesoftware.smack.util.collections:
//            MapIterator, AbstractHashedMap

protected static class it> extends it>
    implements MapIterator
{

    public Object getKey()
    {
        it> it> = currentEntry();
        if (it> == null)
        {
            throw new IllegalStateException("getKey() can only be called after next() and before remove()");
        } else
        {
            return it>.();
        }
    }

    public Object getValue()
    {
          = currentEntry();
        if ( == null)
        {
            throw new IllegalStateException("getValue() can only be called after next() and before remove()");
        } else
        {
            return .ue();
        }
    }

    public Object next()
    {
        return super.tEntry().();
    }

    public Object setValue(Object obj)
    {
          = currentEntry();
        if ( == null)
        {
            throw new IllegalStateException("setValue() can only be called after next() and before remove()");
        } else
        {
            return .ue(obj);
        }
    }

    protected (AbstractHashedMap abstracthashedmap)
    {
        super(abstracthashedmap);
    }
}
