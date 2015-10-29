// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

class ConcurrentReaderHashMap extends AbstractMap
    implements Map, Cloneable, Serializable
{
    protected static class BarrierLock
        implements Serializable
    {

        protected BarrierLock()
        {
        }
    }

    protected static class Entry
        implements java.util.Map.Entry
    {

        protected final int hash;
        protected final Object key;
        protected final Entry next;
        protected volatile Object value;

        public boolean equals(Object obj)
        {
            if (obj instanceof java.util.Map.Entry)
            {
                if (key.equals(((java.util.Map.Entry) (obj = (java.util.Map.Entry)obj)).getKey()) && value.equals(((java.util.Map.Entry) (obj)).getValue()))
                {
                    return true;
                }
            }
            return false;
        }

        public Object getKey()
        {
            return key;
        }

        public Object getValue()
        {
            return value;
        }

        public int hashCode()
        {
            return key.hashCode() ^ value.hashCode();
        }

        public Object setValue(Object obj)
        {
            if (obj == null)
            {
                throw new NullPointerException();
            } else
            {
                Object obj1 = value;
                value = obj;
                return obj1;
            }
        }

        public String toString()
        {
            return key + "=" + value;
        }

        Entry(int i, Object obj, Object obj1, Entry entry)
        {
            hash = i;
            key = obj;
            next = entry;
            value = obj1;
        }
    }

    private class EntrySet extends AbstractSet
    {

        private final ConcurrentReaderHashMap this$0;

        public void clear()
        {
            ConcurrentReaderHashMap.this.clear();
        }

        public boolean contains(Object obj)
        {
            if (obj instanceof java.util.Map.Entry)
            {
                obj = (java.util.Map.Entry)obj;
                Object obj1 = get(((java.util.Map.Entry) (obj)).getKey());
                if (obj1 != null && obj1.equals(((java.util.Map.Entry) (obj)).getValue()))
                {
                    return true;
                }
            }
            return false;
        }

        public Iterator iterator()
        {
            return new HashIterator();
        }

        public boolean remove(Object obj)
        {
            if (!(obj instanceof java.util.Map.Entry))
            {
                return false;
            } else
            {
                return findAndRemoveEntry((java.util.Map.Entry)obj);
            }
        }

        public int size()
        {
            return ConcurrentReaderHashMap.this.size();
        }

        private EntrySet()
        {
            this$0 = ConcurrentReaderHashMap.this;
        }

    }

    protected class HashIterator
        implements Iterator, Enumeration
    {

        protected Object currentKey;
        protected Object currentValue;
        protected ConcurrentReaderHashMap.Entry entry;
        protected int index;
        protected ConcurrentReaderHashMap.Entry lastReturned;
        protected final ConcurrentReaderHashMap.Entry tab[];
        private final ConcurrentReaderHashMap this$0;

        public boolean hasMoreElements()
        {
            return hasNext();
        }

        public boolean hasNext()
        {
            do
            {
                if (entry != null)
                {
                    Object obj = entry.value;
                    if (obj != null)
                    {
                        currentKey = entry.key;
                        currentValue = obj;
                        return true;
                    }
                    entry = entry.next;
                }
                ConcurrentReaderHashMap.Entry aentry[];
                int i;
                for (; entry == null && index >= 0; entry = aentry[i])
                {
                    aentry = tab;
                    i = index;
                    index = i - 1;
                }

            } while (entry != null);
            currentValue = null;
            currentKey = null;
            return false;
        }

        public Object next()
        {
            if (currentKey == null && !hasNext())
            {
                throw new NoSuchElementException();
            } else
            {
                Object obj = returnValueOfNext();
                lastReturned = entry;
                currentValue = null;
                currentKey = null;
                entry = entry.next;
                return obj;
            }
        }

        public Object nextElement()
        {
            return next();
        }

        public void remove()
        {
            if (lastReturned == null)
            {
                throw new IllegalStateException();
            } else
            {
                ConcurrentReaderHashMap.this.remove(lastReturned.key);
                lastReturned = null;
                return;
            }
        }

        protected Object returnValueOfNext()
        {
            return entry;
        }

        protected HashIterator()
        {
            this$0 = ConcurrentReaderHashMap.this;
            entry = null;
            lastReturned = null;
            tab = getTableForReading();
            index = tab.length - 1;
        }
    }

    protected class KeyIterator extends HashIterator
    {

        private final ConcurrentReaderHashMap this$0;

        protected Object returnValueOfNext()
        {
            return currentKey;
        }

        protected KeyIterator()
        {
            this$0 = ConcurrentReaderHashMap.this;
        }
    }

    private class KeySet extends AbstractSet
    {

        private final ConcurrentReaderHashMap this$0;

        public void clear()
        {
            ConcurrentReaderHashMap.this.clear();
        }

        public boolean contains(Object obj)
        {
            return containsKey(obj);
        }

        public Iterator iterator()
        {
            return new KeyIterator();
        }

        public boolean remove(Object obj)
        {
            return ConcurrentReaderHashMap.this.remove(obj) != null;
        }

        public int size()
        {
            return ConcurrentReaderHashMap.this.size();
        }

        private KeySet()
        {
            this$0 = ConcurrentReaderHashMap.this;
        }

    }

    protected class ValueIterator extends HashIterator
    {

        private final ConcurrentReaderHashMap this$0;

        protected Object returnValueOfNext()
        {
            return currentValue;
        }

        protected ValueIterator()
        {
            this$0 = ConcurrentReaderHashMap.this;
        }
    }

    private class Values extends AbstractCollection
    {

        private final ConcurrentReaderHashMap this$0;

        public void clear()
        {
            ConcurrentReaderHashMap.this.clear();
        }

        public boolean contains(Object obj)
        {
            return containsValue(obj);
        }

        public Iterator iterator()
        {
            return new ValueIterator();
        }

        public int size()
        {
            return ConcurrentReaderHashMap.this.size();
        }

        private Values()
        {
            this$0 = ConcurrentReaderHashMap.this;
        }

    }


    public static int DEFAULT_INITIAL_CAPACITY = 0;
    public static final float DEFAULT_LOAD_FACTOR = 0.75F;
    private static final int MAXIMUM_CAPACITY = 0x40000000;
    private static final int MINIMUM_CAPACITY = 4;
    protected final BarrierLock barrierLock;
    protected transient int count;
    protected transient Set entrySet;
    protected transient Set keySet;
    protected transient Object lastWrite;
    protected float loadFactor;
    protected transient Entry table[];
    protected int threshold;
    protected transient Collection values;

    public ConcurrentReaderHashMap()
    {
        this(DEFAULT_INITIAL_CAPACITY, 0.75F);
    }

    public ConcurrentReaderHashMap(int i)
    {
        this(i, 0.75F);
    }

    public ConcurrentReaderHashMap(int i, float f)
    {
        barrierLock = new BarrierLock();
        keySet = null;
        entrySet = null;
        values = null;
        if (f <= 0.0F)
        {
            throw new IllegalArgumentException("Illegal Load factor: " + f);
        } else
        {
            loadFactor = f;
            i = p2capacity(i);
            table = new Entry[i];
            threshold = (int)((float)i * f);
            return;
        }
    }

    public ConcurrentReaderHashMap(Map map)
    {
        this(Math.max((int)((float)map.size() / 0.75F) + 1, 16), 0.75F);
        putAll(map);
    }

    private static int hash(Object obj)
    {
        int i = obj.hashCode();
        return ((i << 7) - i) + (i >>> 9) + (i >>> 17);
    }

    private int p2capacity(int i)
    {
        if (i <= 0x40000000 && i >= 0) goto _L2; else goto _L1
_L1:
        int k = 0x40000000;
_L4:
        return k;
_L2:
        int j = 4;
        do
        {
            k = j;
            if (j >= i)
            {
                continue;
            }
            j <<= 1;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        this;
        JVM INSTR monitorenter ;
        int j;
        objectinputstream.defaultReadObject();
        table = new Entry[objectinputstream.readInt()];
        j = objectinputstream.readInt();
        int i = 0;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        put(objectinputstream.readObject(), objectinputstream.readObject());
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        objectinputstream;
        throw objectinputstream;
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        objectoutputstream.defaultWriteObject();
        objectoutputstream.writeInt(table.length);
        objectoutputstream.writeInt(count);
        i = table.length - 1;
_L5:
        if (i < 0) goto _L2; else goto _L1
_L1:
        Entry entry = table[i];
_L4:
        if (entry == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        objectoutputstream.writeObject(entry.key);
        objectoutputstream.writeObject(entry.value);
        entry = entry.next;
        if (true) goto _L4; else goto _L3
_L3:
        i--;
          goto _L5
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        objectoutputstream;
        throw objectoutputstream;
    }

    public int capacity()
    {
        this;
        JVM INSTR monitorenter ;
        int i = table.length;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        Entry aentry[] = table;
        int i = 0;
_L6:
        if (i >= aentry.length) goto _L2; else goto _L1
_L1:
        Entry entry = aentry[i];
_L4:
        if (entry == null)
        {
            break; /* Loop/switch isn't completed */
        }
        entry.value = null;
        entry = entry.next;
        if (true) goto _L4; else goto _L3
_L2:
        count = 0;
        recordModification(aentry);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
_L3:
        aentry[i] = null;
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Object clone()
    {
        this;
        JVM INSTR monitorenter ;
        ConcurrentReaderHashMap concurrentreaderhashmap;
        Entry aentry[];
        Entry aentry1[];
        concurrentreaderhashmap = (ConcurrentReaderHashMap)super.clone();
        concurrentreaderhashmap.keySet = null;
        concurrentreaderhashmap.entrySet = null;
        concurrentreaderhashmap.values = null;
        aentry = table;
        concurrentreaderhashmap.table = new Entry[aentry.length];
        aentry1 = concurrentreaderhashmap.table;
        int i = 0;
_L4:
        if (i >= aentry.length)
        {
            break; /* Loop/switch isn't completed */
        }
        Entry entry;
        Entry entry1;
        entry = aentry[i];
        entry1 = null;
_L2:
        if (entry == null)
        {
            break; /* Loop/switch isn't completed */
        }
        entry1 = new Entry(entry.hash, entry.key, entry.value, entry1);
        entry = entry.next;
        if (true) goto _L2; else goto _L1
_L1:
        aentry1[i] = entry1;
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        Object obj;
        break MISSING_BLOCK_LABEL_129;
        obj;
        throw new InternalError();
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        return concurrentreaderhashmap;
    }

    public boolean contains(Object obj)
    {
        return containsValue(obj);
    }

    public boolean containsKey(Object obj)
    {
        return get(obj) != null;
    }

    public boolean containsValue(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException();
        }
        Entry aentry[] = getTableForReading();
        for (int i = 0; i < aentry.length; i++)
        {
            for (Entry entry = aentry[i]; entry != null; entry = entry.next)
            {
                if (obj.equals(entry.value))
                {
                    return true;
                }
            }

        }

        return false;
    }

    public Enumeration elements()
    {
        return new ValueIterator();
    }

    public Set entrySet()
    {
        Set set = entrySet;
        if (set != null)
        {
            return set;
        } else
        {
            EntrySet entryset = new EntrySet();
            entrySet = entryset;
            return entryset;
        }
    }

    protected boolean eq(Object obj, Object obj1)
    {
        return obj == obj1 || obj.equals(obj1);
    }

    protected boolean findAndRemoveEntry(java.util.Map.Entry entry)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Object obj1;
        obj = entry.getKey();
        obj1 = get(obj);
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        if (!obj1.equals(entry.getValue())) goto _L2; else goto _L3
_L3:
        remove(obj);
        boolean flag = true;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        entry;
        throw entry;
    }

    public Object get(Object obj)
    {
        Object obj1;
        Object obj2;
        Entry aentry[];
        int i;
        int j;
        j = hash(obj);
        aentry = table;
        i = j & aentry.length - 1;
        obj2 = aentry[i];
        obj1 = obj2;
_L8:
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        obj1 = getTableForReading();
        if (aentry != obj1 || obj2 != aentry[i]) goto _L4; else goto _L3
_L3:
        obj1 = null;
_L6:
        return obj1;
_L4:
        aentry = ((Entry []) (obj1));
        i = j & aentry.length - 1;
        obj2 = aentry[i];
        obj1 = obj2;
        continue; /* Loop/switch isn't completed */
_L2:
        if (((Entry) (obj1)).hash != j || !eq(obj, ((Entry) (obj1)).key))
        {
            break MISSING_BLOCK_LABEL_150;
        }
        obj2 = ((Entry) (obj1)).value;
        obj1 = obj2;
        if (obj2 != null) goto _L6; else goto _L5
_L5:
        this;
        JVM INSTR monitorenter ;
        aentry = table;
        this;
        JVM INSTR monitorexit ;
        i = j & aentry.length - 1;
        obj2 = aentry[i];
        obj1 = obj2;
        continue; /* Loop/switch isn't completed */
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj1 = ((Entry) (obj1)).next;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected final Entry[] getTableForReading()
    {
        Entry aentry[];
        synchronized (barrierLock)
        {
            aentry = table;
        }
        return aentry;
        exception;
        barrierlock;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isEmpty()
    {
        this;
        JVM INSTR monitorenter ;
        int i = count;
        boolean flag;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Set keySet()
    {
        Set set = keySet;
        if (set != null)
        {
            return set;
        } else
        {
            KeySet keyset = new KeySet();
            keySet = keyset;
            return keyset;
        }
    }

    public Enumeration keys()
    {
        return new KeyIterator();
    }

    public float loadFactor()
    {
        return loadFactor;
    }

    public Object put(Object obj, Object obj1)
    {
        Entry entry;
        Entry entry1;
        Entry aentry[];
        int i;
        int j;
        if (obj1 == null)
        {
            throw new NullPointerException();
        }
        i = hash(obj);
        aentry = table;
        j = i & aentry.length - 1;
        entry1 = aentry[j];
        entry = entry1;
_L5:
        if (entry != null && (entry.hash != i || !eq(obj, entry.key))) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        if (aentry != table)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        if (entry != null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        if (entry1 != aentry[j])
        {
            break MISSING_BLOCK_LABEL_197;
        }
        obj = new Entry(i, obj, obj1, entry1);
        aentry[j] = ((Entry) (obj));
        i = count + 1;
        count = i;
        if (i < threshold)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        rehash();
_L3:
        this;
        JVM INSTR monitorexit ;
        return null;
_L2:
        entry = entry.next;
        continue; /* Loop/switch isn't completed */
        recordModification(obj);
          goto _L3
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        Object obj2 = entry.value;
        if (entry1 != aentry[j] || obj2 == null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        entry.value = obj1;
        this;
        JVM INSTR monitorexit ;
        return obj2;
        obj = sput(obj, obj1, i);
        this;
        JVM INSTR monitorexit ;
        return obj;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void putAll(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        int i = map.size();
        if (i != 0) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        while (i >= threshold) 
        {
            rehash();
        }
        break MISSING_BLOCK_LABEL_36;
        map;
        throw map;
        map = map.entrySet().iterator();
        while (map.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            put(entry.getKey(), entry.getValue());
        }
          goto _L1
    }

    protected final void recordModification(Object obj)
    {
        synchronized (barrierLock)
        {
            lastWrite = obj;
        }
        return;
        obj;
        barrierlock;
        JVM INSTR monitorexit ;
        throw obj;
    }

    protected void rehash()
    {
        Entry aentry[] = table;
        int j1 = aentry.length;
        if (j1 >= 0x40000000)
        {
            threshold = 0x7fffffff;
            return;
        }
        int i = j1 << 1;
        int k1 = i - 1;
        threshold = (int)((float)i * loadFactor);
        Entry aentry1[] = new Entry[i];
        i = 0;
        while (i < j1) 
        {
            Entry entry1 = aentry[i];
            if (entry1 != null)
            {
                int j = entry1.hash & k1;
                Entry entry = entry1.next;
                if (entry == null)
                {
                    aentry1[j] = entry1;
                } else
                {
                    Entry entry2 = entry1;
                    while (entry != null) 
                    {
                        int i1 = entry.hash & k1;
                        int l = j;
                        if (i1 != j)
                        {
                            l = i1;
                            entry2 = entry;
                        }
                        entry = entry.next;
                        j = l;
                    }
                    aentry1[j] = entry2;
                    while (entry1 != entry2) 
                    {
                        int k = entry1.hash & k1;
                        aentry1[k] = new Entry(entry1.hash, entry1.key, entry1.value, aentry1[k]);
                        entry1 = entry1.next;
                    }
                }
            }
            i++;
        }
        table = aentry1;
        recordModification(aentry1);
    }

    public Object remove(Object obj)
    {
        Entry entry;
        Entry entry1;
        Entry aentry[];
        int i;
        int j;
        i = hash(obj);
        aentry = table;
        j = i & aentry.length - 1;
        entry1 = aentry[j];
        entry = entry1;
_L2:
        if (entry != null && (entry.hash != i || !eq(obj, entry.key)))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        this;
        JVM INSTR monitorenter ;
        if (aentry != table)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        if (entry != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (entry1 != aentry[j])
        {
            break MISSING_BLOCK_LABEL_192;
        }
        this;
        JVM INSTR monitorexit ;
        return null;
        entry = entry.next;
        if (true) goto _L2; else goto _L1
_L1:
        Object obj1 = entry.value;
        if (entry1 != aentry[j] || obj1 == null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        Entry entry2;
        entry.value = null;
        count = count - 1;
        entry2 = entry.next;
        obj = entry1;
        entry1 = entry2;
_L4:
        if (obj == entry)
        {
            break; /* Loop/switch isn't completed */
        }
        entry1 = new Entry(((Entry) (obj)).hash, ((Entry) (obj)).key, ((Entry) (obj)).value, entry1);
        obj = ((Entry) (obj)).next;
        if (true) goto _L4; else goto _L3
_L3:
        aentry[j] = entry1;
        recordModification(entry1);
        this;
        JVM INSTR monitorexit ;
        return obj1;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj = sremove(obj, i);
        this;
        JVM INSTR monitorexit ;
        return obj;
    }

    public int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i = count;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    protected Object sput(Object obj, Object obj1, int i)
    {
        Entry aentry[] = table;
        int j = i & aentry.length - 1;
        Entry entry1 = aentry[j];
        Entry entry = entry1;
        do
        {
            if (entry == null)
            {
                obj = new Entry(i, obj, obj1, entry1);
                aentry[j] = ((Entry) (obj));
                i = count + 1;
                count = i;
                if (i >= threshold)
                {
                    rehash();
                } else
                {
                    recordModification(obj);
                }
                return null;
            }
            if (entry.hash == i && eq(obj, entry.key))
            {
                obj = entry.value;
                entry.value = obj1;
                return obj;
            }
            entry = entry.next;
        } while (true);
    }

    protected Object sremove(Object obj, int i)
    {
        Entry aentry[] = table;
        int j = i & aentry.length - 1;
        Entry entry1 = aentry[j];
        for (Entry entry = entry1; entry != null; entry = entry.next)
        {
            if (entry.hash == i && eq(obj, entry.key))
            {
                Object obj1 = entry.value;
                entry.value = null;
                count = count - 1;
                Entry entry2 = entry.next;
                obj = entry1;
                entry1 = entry2;
                for (; obj != entry; obj = ((Entry) (obj)).next)
                {
                    entry1 = new Entry(((Entry) (obj)).hash, ((Entry) (obj)).key, ((Entry) (obj)).value, entry1);
                }

                aentry[j] = entry1;
                recordModification(entry1);
                return obj1;
            }
        }

        return null;
    }

    public Collection values()
    {
        Collection collection = values;
        if (collection != null)
        {
            return collection;
        } else
        {
            Values values1 = new Values();
            values = values1;
            return values1;
        }
    }

    static 
    {
        DEFAULT_INITIAL_CAPACITY = 32;
    }
}
