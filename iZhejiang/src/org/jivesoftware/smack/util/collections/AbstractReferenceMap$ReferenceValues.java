// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractReferenceMap, AbstractHashedMap

static class  extends 
{

    public Object[] toArray()
    {
        return toArray(new Object[0]);
    }

    public Object[] toArray(Object aobj[])
    {
        ArrayList arraylist = new ArrayList(parent.size());
        Iterator iterator = iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist.toArray(aobj);
            }
            arraylist.add(iterator.next());
        } while (true);
    }

    protected (AbstractHashedMap abstracthashedmap)
    {
        super(abstracthashedmap);
    }
}
