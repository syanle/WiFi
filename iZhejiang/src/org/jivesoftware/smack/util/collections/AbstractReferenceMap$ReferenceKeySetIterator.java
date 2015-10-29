// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.Iterator;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractReferenceMap

static class nit> extends nit>
    implements Iterator
{

    public Object next()
    {
        return nextEntry().nextEntry();
    }

    (AbstractReferenceMap abstractreferencemap)
    {
        super(abstractreferencemap);
    }
}
