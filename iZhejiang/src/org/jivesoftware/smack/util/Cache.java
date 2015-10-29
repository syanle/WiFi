// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.io.PrintStream;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.jivesoftware.smack.util.collections.AbstractMapEntry;

public class Cache
    implements Map
{
    private static class CacheObject
    {

        public LinkedListNode ageListNode;
        public LinkedListNode lastAccessedListNode;
        public Object object;
        public int readCount;

        public boolean equals(Object obj)
        {
            if (this == obj)
            {
                return true;
            }
            if (!(obj instanceof CacheObject))
            {
                return false;
            } else
            {
                obj = (CacheObject)obj;
                return object.equals(((CacheObject) (obj)).object);
            }
        }

        public int hashCode()
        {
            return object.hashCode();
        }

        public CacheObject(Object obj)
        {
            readCount = 0;
            object = obj;
        }
    }

    private static class LinkedList
    {

        private LinkedListNode head;

        public LinkedListNode addFirst(Object obj)
        {
            obj = new LinkedListNode(obj, head.next, head);
            ((LinkedListNode) (obj)).previous.next = ((LinkedListNode) (obj));
            ((LinkedListNode) (obj)).next.previous = ((LinkedListNode) (obj));
            return ((LinkedListNode) (obj));
        }

        public LinkedListNode addFirst(LinkedListNode linkedlistnode)
        {
            linkedlistnode.next = head.next;
            linkedlistnode.previous = head;
            linkedlistnode.previous.next = linkedlistnode;
            linkedlistnode.next.previous = linkedlistnode;
            return linkedlistnode;
        }

        public LinkedListNode addLast(Object obj)
        {
            obj = new LinkedListNode(obj, head, head.previous);
            ((LinkedListNode) (obj)).previous.next = ((LinkedListNode) (obj));
            ((LinkedListNode) (obj)).next.previous = ((LinkedListNode) (obj));
            return ((LinkedListNode) (obj));
        }

        public void clear()
        {
            LinkedListNode linkedlistnode = getLast();
            do
            {
                if (linkedlistnode == null)
                {
                    linkedlistnode = head;
                    LinkedListNode linkedlistnode1 = head;
                    LinkedListNode linkedlistnode2 = head;
                    linkedlistnode1.previous = linkedlistnode2;
                    linkedlistnode.next = linkedlistnode2;
                    return;
                }
                linkedlistnode.remove();
                linkedlistnode = getLast();
            } while (true);
        }

        public LinkedListNode getFirst()
        {
            LinkedListNode linkedlistnode1 = head.next;
            LinkedListNode linkedlistnode = linkedlistnode1;
            if (linkedlistnode1 == head)
            {
                linkedlistnode = null;
            }
            return linkedlistnode;
        }

        public LinkedListNode getLast()
        {
            LinkedListNode linkedlistnode1 = head.previous;
            LinkedListNode linkedlistnode = linkedlistnode1;
            if (linkedlistnode1 == head)
            {
                linkedlistnode = null;
            }
            return linkedlistnode;
        }

        public String toString()
        {
            LinkedListNode linkedlistnode = head.next;
            StringBuilder stringbuilder = new StringBuilder();
            do
            {
                if (linkedlistnode == head)
                {
                    return stringbuilder.toString();
                }
                stringbuilder.append(linkedlistnode.toString()).append(", ");
                linkedlistnode = linkedlistnode.next;
            } while (true);
        }

        public LinkedList()
        {
            head = new LinkedListNode("head", null, null);
            LinkedListNode linkedlistnode = head;
            LinkedListNode linkedlistnode1 = head;
            LinkedListNode linkedlistnode2 = head;
            linkedlistnode1.previous = linkedlistnode2;
            linkedlistnode.next = linkedlistnode2;
        }
    }

    private static class LinkedListNode
    {

        public LinkedListNode next;
        public Object object;
        public LinkedListNode previous;
        public long timestamp;

        public void remove()
        {
            previous.next = next;
            next.previous = previous;
        }

        public String toString()
        {
            return object.toString();
        }

        public LinkedListNode(Object obj, LinkedListNode linkedlistnode, LinkedListNode linkedlistnode1)
        {
            object = obj;
            next = linkedlistnode;
            previous = linkedlistnode1;
        }
    }


    protected LinkedList ageList;
    protected long cacheHits;
    protected long cacheMisses;
    protected LinkedList lastAccessedList;
    protected Map map;
    protected int maxCacheSize;
    protected long maxLifetime;

    public Cache(int i, long l)
    {
        cacheMisses = 0L;
        if (i == 0)
        {
            throw new IllegalArgumentException("Max cache size cannot be 0.");
        } else
        {
            maxCacheSize = i;
            maxLifetime = l;
            map = new HashMap(103);
            lastAccessedList = new LinkedList();
            ageList = new LinkedList();
            return;
        }
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        Object aobj[];
        int j;
        aobj = map.keySet().toArray();
        j = aobj.length;
        int i = 0;
_L2:
        if (i < j)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        map.clear();
        lastAccessedList.clear();
        ageList.clear();
        cacheHits = 0L;
        cacheMisses = 0L;
        this;
        JVM INSTR monitorexit ;
        return;
        remove(aobj[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean containsKey(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        deleteExpiredEntries();
        flag = map.containsKey(obj);
        this;
        JVM INSTR monitorexit ;
        return flag;
        obj;
        throw obj;
    }

    public boolean containsValue(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        deleteExpiredEntries();
        obj = new CacheObject(obj);
        flag = map.containsValue(obj);
        this;
        JVM INSTR monitorexit ;
        return flag;
        obj;
        throw obj;
    }

    protected void cullCache()
    {
        this;
        JVM INSTR monitorenter ;
        int i = maxCacheSize;
        if (i >= 0) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int j;
        if (map.size() <= maxCacheSize)
        {
            break; /* Loop/switch isn't completed */
        }
        deleteExpiredEntries();
        j = (int)((double)maxCacheSize * 0.90000000000000002D);
        i = map.size();
_L4:
        if (i <= j)
        {
            break; /* Loop/switch isn't completed */
        }
        if (remove(lastAccessedList.getLast().object, true) == null)
        {
            System.err.println((new StringBuilder("Error attempting to cullCache with remove(")).append(lastAccessedList.getLast().object.toString()).append(") - ").append("cacheObject not found in cache!").toString());
            lastAccessedList.getLast().remove();
        }
        i--;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    protected void deleteExpiredEntries()
    {
        this;
        JVM INSTR monitorenter ;
        long l = maxLifetime;
        if (l > 0L) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        LinkedListNode linkedlistnode;
        return;
_L2:
        if ((linkedlistnode = ageList.getLast()) == null) goto _L1; else goto _L3
_L3:
        long l1;
        l = System.currentTimeMillis();
        l1 = maxLifetime;
_L4:
        LinkedListNode linkedlistnode1;
        if (l - l1 <= linkedlistnode.timestamp)
        {
            break; /* Loop/switch isn't completed */
        }
        if (remove(linkedlistnode.object, true) == null)
        {
            System.err.println((new StringBuilder("Error attempting to remove(")).append(linkedlistnode.object.toString()).append(") - cacheObject not found in cache!").toString());
            linkedlistnode.remove();
        }
        linkedlistnode1 = ageList.getLast();
        linkedlistnode = linkedlistnode1;
        if (linkedlistnode1 != null) goto _L4; else goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public Set entrySet()
    {
        this;
        JVM INSTR monitorenter ;
        AbstractSet abstractset;
        deleteExpiredEntries();
        abstractset = new AbstractSet() {

            private final Set set;
            final Cache this$0;

            public Iterator iterator()
            {
                return new Iterator() {

                    private final Iterator it;
                    final _cls2 this$1;

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
                        return new AbstractMapEntry(entry.getKey(), ((CacheObject)entry.getValue()).object) {

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
                this$1 = _cls2.this;
                super();
                it = set.iterator();
            }
                };
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
        };
        this;
        JVM INSTR monitorexit ;
        return abstractset;
        Exception exception;
        exception;
        throw exception;
    }

    public Object get(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        deleteExpiredEntries();
        obj = (CacheObject)map.get(obj);
        if (obj != null) goto _L2; else goto _L1
_L1:
        cacheMisses = cacheMisses + 1L;
        obj = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return obj;
_L2:
        ((CacheObject) (obj)).lastAccessedListNode.remove();
        lastAccessedList.addFirst(((CacheObject) (obj)).lastAccessedListNode);
        cacheHits = cacheHits + 1L;
        obj.readCount = ((CacheObject) (obj)).readCount + 1;
        obj = ((CacheObject) (obj)).object;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        throw obj;
    }

    public long getCacheHits()
    {
        return cacheHits;
    }

    public long getCacheMisses()
    {
        return cacheMisses;
    }

    public int getMaxCacheSize()
    {
        return maxCacheSize;
    }

    public long getMaxLifetime()
    {
        return maxLifetime;
    }

    public boolean isEmpty()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        deleteExpiredEntries();
        flag = map.isEmpty();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Set keySet()
    {
        this;
        JVM INSTR monitorenter ;
        Set set;
        deleteExpiredEntries();
        set = Collections.unmodifiableSet(map.keySet());
        this;
        JVM INSTR monitorexit ;
        return set;
        Exception exception;
        exception;
        throw exception;
    }

    public Object put(Object obj, Object obj1)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj2 = null;
        if (map.containsKey(obj))
        {
            obj2 = remove(obj, true);
        }
        obj1 = new CacheObject(obj1);
        map.put(obj, obj1);
        obj1.lastAccessedListNode = lastAccessedList.addFirst(obj);
        obj = ageList.addFirst(obj);
        obj.timestamp = System.currentTimeMillis();
        obj1.ageListNode = ((LinkedListNode) (obj));
        cullCache();
        this;
        JVM INSTR monitorexit ;
        return obj2;
        obj;
        throw obj;
    }

    public void putAll(Map map1)
    {
        Iterator iterator = map1.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Object obj = entry.getValue();
            map1 = ((Map) (obj));
            if (obj instanceof CacheObject)
            {
                map1 = ((Map) (((CacheObject)obj).object));
            }
            put(entry.getKey(), map1);
        } while (true);
    }

    public Object remove(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        obj = remove(obj, false);
        this;
        JVM INSTR monitorexit ;
        return obj;
        obj;
        throw obj;
    }

    public Object remove(Object obj, boolean flag)
    {
        Object obj1 = null;
        this;
        JVM INSTR monitorenter ;
        obj = (CacheObject)map.remove(obj);
        if (obj != null) goto _L2; else goto _L1
_L1:
        obj = obj1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return obj;
_L2:
        ((CacheObject) (obj)).lastAccessedListNode.remove();
        ((CacheObject) (obj)).ageListNode.remove();
        obj.ageListNode = null;
        obj.lastAccessedListNode = null;
        obj = ((CacheObject) (obj)).object;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        throw obj;
    }

    public void setMaxCacheSize(int i)
    {
        this;
        JVM INSTR monitorenter ;
        maxCacheSize = i;
        cullCache();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setMaxLifetime(long l)
    {
        maxLifetime = l;
    }

    public int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        deleteExpiredEntries();
        i = map.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public Collection values()
    {
        this;
        JVM INSTR monitorenter ;
        Collection collection;
        deleteExpiredEntries();
        collection = Collections.unmodifiableCollection(new AbstractCollection() {

            final Cache this$0;
            Collection values;

            public Iterator iterator()
            {
                return new Iterator() {

                    Iterator it;
                    final _cls1 this$1;

                    public boolean hasNext()
                    {
                        return it.hasNext();
                    }

                    public Object next()
                    {
                        return ((CacheObject)it.next()).object;
                    }

                    public void remove()
                    {
                        it.remove();
                    }

            
            {
                this$1 = _cls1.this;
                super();
                it = values.iterator();
            }
                };
            }

            public int size()
            {
                return values.size();
            }

            
            {
                this$0 = Cache.this;
                super();
                values = map.values();
            }
        });
        this;
        JVM INSTR monitorexit ;
        return collection;
        Exception exception;
        exception;
        throw exception;
    }
}
