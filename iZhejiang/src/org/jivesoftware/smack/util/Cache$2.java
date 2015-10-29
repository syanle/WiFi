// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.jivesoftware.smack.util.collections.AbstractMapEntry;

// Referenced classes of package org.jivesoftware.smack.util:
//            Cache

class p extends AbstractSet
{

    private final Set set;
    final Cache this$0;

    public Iterator iterator()
    {
        return new Iterator() {

            private final Iterator it;
            final Cache._cls2 this$1;

            public boolean hasNext()
            {
                return it.hasNext();
            }

            public volatile Object next()
            {
                return next();
            }

            public java.util.Map.Entry next()
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)it.next();
                return new AbstractMapEntry(entry.getKey(), ((Cache.CacheObject)entry.getValue()).object) {

                    final _cls1 this$2;

                    public Object setValue(Object obj)
                    {
                        throw new UnsupportedOperationException("Cannot set");
                    }

            
            {
                this$2 = _cls1.this;
                super(obj, obj1);
            }
                };
            }

            public void remove()
            {
                it.remove();
            }

            
            {
                this$1 = Cache._cls2.this;
                super();
                it = set.iterator();
            }
        };
    }

    public int size()
    {
        return set.size();
    }


    set()
    {
        this$0 = Cache.this;
        super();
        set = map.entrySet();
    }
}
