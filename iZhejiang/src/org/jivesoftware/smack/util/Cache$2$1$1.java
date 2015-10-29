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

class AbstractMapEntry extends AbstractMapEntry
{

    final <init> this$2;

    public Object setValue(Object obj)
    {
        throw new UnsupportedOperationException("Cannot set");
    }

    ._cls0(Object obj, Object obj1)
    {
        this$2 = this._cls2.this;
        super(obj, obj1);
    }

    // Unreferenced inner class org/jivesoftware/smack/util/Cache$2

/* anonymous class */
    class Cache._cls2 extends AbstractSet
    {

        private final Set set;
        final Cache this$0;

        public Iterator iterator()
        {
            return new Cache._cls2._cls1();
        }

        public int size()
        {
            return set.size();
        }


            
            {
                this$0 = Cache.this;
                super();
                set = map.entrySet();
            }
    }


    // Unreferenced inner class org/jivesoftware/smack/util/Cache$2$1

/* anonymous class */
    class Cache._cls2._cls1
        implements Iterator
    {

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
            return new Cache._cls2._cls1._cls1(entry.getKey(), ((Cache.CacheObject)entry.getValue()).object);
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
    }

}
