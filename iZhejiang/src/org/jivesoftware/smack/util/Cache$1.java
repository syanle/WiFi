// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package org.jivesoftware.smack.util:
//            Cache

class p extends AbstractCollection
{

    final Cache this$0;
    Collection values;

    public Iterator iterator()
    {
        return new Iterator() {

            Iterator it;
            final Cache._cls1 this$1;

            public boolean hasNext()
            {
                return it.hasNext();
            }

            public Object next()
            {
                return ((Cache.CacheObject)it.next()).object;
            }

            public void remove()
            {
                it.remove();
            }

            
            {
                this$1 = Cache._cls1.this;
                super();
                it = values.iterator();
            }
        };
    }

    public int size()
    {
        return values.size();
    }

    values()
    {
        this$0 = Cache.this;
        super();
        values = map.values();
    }
}
