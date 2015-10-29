// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            IterableMap, EmptyIterator, MapIterator, EmptyMapIterator, 
//            KeyValue

public class AbstractHashedMap extends AbstractMap
    implements IterableMap
{
    protected static class EntrySet extends AbstractSet
    {

        protected final AbstractHashedMap parent;

        public void clear()
        {
            parent.clear();
        }

        public boolean contains(java.util.Map.Entry entry)
        {
            HashEntry hashentry = parent.getEntry(entry.getKey());
            return hashentry != null && hashentry.equals(entry);
        }

        public Iterator iterator()
        {
            return parent.createEntrySetIterator();
        }

        public boolean remove(Object obj)
        {
            while (!(obj instanceof java.util.Map.Entry) || !contains(obj)) 
            {
                return false;
            }
            obj = ((java.util.Map.Entry)obj).getKey();
            parent.remove(obj);
            return true;
        }

        public int size()
        {
            return parent.size();
        }

        protected EntrySet(AbstractHashedMap abstracthashedmap)
        {
            parent = abstracthashedmap;
        }
    }

    protected static class EntrySetIterator extends HashIterator
        implements Iterator
    {

        public volatile Object next()
        {
            return next();
        }

        public HashEntry next()
        {
            return super.nextEntry();
        }

        protected EntrySetIterator(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }

    protected static class HashEntry
        implements java.util.Map.Entry, KeyValue
    {

        protected int hashCode;
        private Object key;
        protected HashEntry next;
        private Object value;

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            return true;
_L2:
label0:
            {
                if (!(obj instanceof java.util.Map.Entry))
                {
                    return false;
                }
                obj = (java.util.Map.Entry)obj;
                if (getKey() != null ? getKey().equals(((java.util.Map.Entry) (obj)).getKey()) : ((java.util.Map.Entry) (obj)).getKey() == null)
                {
                    break label0;
                } else
                {
                    break; /* Loop/switch isn't completed */
                }
            }
            if (getValue() != null) goto _L4; else goto _L3
_L3:
            if (((java.util.Map.Entry) (obj)).getValue() == null) goto _L1; else goto _L5
_L5:
            return false;
_L4:
            if (getValue().equals(((java.util.Map.Entry) (obj)).getValue()))
            {
                return true;
            }
            if (true) goto _L5; else goto _L6
_L6:
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
            int j = 0;
            int i;
            if (getKey() == null)
            {
                i = 0;
            } else
            {
                i = getKey().hashCode();
            }
            if (getValue() != null)
            {
                j = getValue().hashCode();
            }
            return i ^ j;
        }

        public void setKey(Object obj)
        {
            key = obj;
        }

        public Object setValue(Object obj)
        {
            Object obj1 = value;
            value = obj;
            return obj1;
        }

        public String toString()
        {
            return (new StringBuilder()).append(getKey()).append('=').append(getValue()).toString();
        }





        protected HashEntry(HashEntry hashentry, int i, Object obj, Object obj1)
        {
            next = hashentry;
            hashCode = i;
            key = obj;
            value = obj1;
        }
    }

    protected static abstract class HashIterator
    {

        protected int expectedModCount;
        protected int hashIndex;
        protected HashEntry last;
        protected HashEntry next;
        protected final AbstractHashedMap parent;

        protected HashEntry currentEntry()
        {
            return last;
        }

        public boolean hasNext()
        {
            return next != null;
        }

        protected HashEntry nextEntry()
        {
            if (parent.modCount != expectedModCount)
            {
                throw new ConcurrentModificationException();
            }
            HashEntry hashentry1 = next;
            if (hashentry1 == null)
            {
                throw new NoSuchElementException("No next() entry in the iteration");
            }
            HashEntry ahashentry[] = parent.data;
            int i = hashIndex;
            HashEntry hashentry = hashentry1.next;
            do
            {
                if (hashentry != null || i <= 0)
                {
                    next = hashentry;
                    hashIndex = i;
                    last = hashentry1;
                    return hashentry1;
                }
                i--;
                hashentry = ahashentry[i];
            } while (true);
        }

        public void remove()
        {
            if (last == null)
            {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            if (parent.modCount != expectedModCount)
            {
                throw new ConcurrentModificationException();
            } else
            {
                parent.remove(last.getKey());
                last = null;
                expectedModCount = parent.modCount;
                return;
            }
        }

        public String toString()
        {
            if (last != null)
            {
                return (new StringBuilder("Iterator[")).append(last.getKey()).append("=").append(last.getValue()).append("]").toString();
            } else
            {
                return "Iterator[]";
            }
        }

        protected HashIterator(AbstractHashedMap abstracthashedmap)
        {
            parent = abstracthashedmap;
            HashEntry ahashentry[] = abstracthashedmap.data;
            int i = ahashentry.length;
            HashEntry hashentry = null;
            do
            {
                if (i <= 0 || hashentry != null)
                {
                    next = hashentry;
                    hashIndex = i;
                    expectedModCount = abstracthashedmap.modCount;
                    return;
                }
                i--;
                hashentry = ahashentry[i];
            } while (true);
        }
    }

    protected static class HashMapIterator extends HashIterator
        implements MapIterator
    {

        public Object getKey()
        {
            HashEntry hashentry = currentEntry();
            if (hashentry == null)
            {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            } else
            {
                return hashentry.getKey();
            }
        }

        public Object getValue()
        {
            HashEntry hashentry = currentEntry();
            if (hashentry == null)
            {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            } else
            {
                return hashentry.getValue();
            }
        }

        public Object next()
        {
            return super.nextEntry().getKey();
        }

        public Object setValue(Object obj)
        {
            HashEntry hashentry = currentEntry();
            if (hashentry == null)
            {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            } else
            {
                return hashentry.setValue(obj);
            }
        }

        protected HashMapIterator(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }

    protected static class KeySet extends AbstractSet
    {

        protected final AbstractHashedMap parent;

        public void clear()
        {
            parent.clear();
        }

        public boolean contains(Object obj)
        {
            return parent.containsKey(obj);
        }

        public Iterator iterator()
        {
            return parent.createKeySetIterator();
        }

        public boolean remove(Object obj)
        {
            boolean flag = parent.containsKey(obj);
            parent.remove(obj);
            return flag;
        }

        public int size()
        {
            return parent.size();
        }

        protected KeySet(AbstractHashedMap abstracthashedmap)
        {
            parent = abstracthashedmap;
        }
    }

    protected static class KeySetIterator extends HashIterator
        implements Iterator
    {

        public Object next()
        {
            return super.nextEntry().getKey();
        }

        protected KeySetIterator(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }

    protected static class Values extends AbstractCollection
    {

        protected final AbstractHashedMap parent;

        public void clear()
        {
            parent.clear();
        }

        public boolean contains(Object obj)
        {
            return parent.containsValue(obj);
        }

        public Iterator iterator()
        {
            return parent.createValuesIterator();
        }

        public int size()
        {
            return parent.size();
        }

        protected Values(AbstractHashedMap abstracthashedmap)
        {
            parent = abstracthashedmap;
        }
    }

    protected static class ValuesIterator extends HashIterator
        implements Iterator
    {

        public Object next()
        {
            return super.nextEntry().getValue();
        }

        protected ValuesIterator(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }


    protected static final int DEFAULT_CAPACITY = 16;
    protected static final float DEFAULT_LOAD_FACTOR = 0.75F;
    protected static final int DEFAULT_THRESHOLD = 12;
    protected static final String GETKEY_INVALID = "getKey() can only be called after next() and before remove()";
    protected static final String GETVALUE_INVALID = "getValue() can only be called after next() and before remove()";
    protected static final int MAXIMUM_CAPACITY = 0x40000000;
    protected static final String NO_NEXT_ENTRY = "No next() entry in the iteration";
    protected static final String NO_PREVIOUS_ENTRY = "No previous() entry in the iteration";
    protected static final Object NULL = new Object();
    protected static final String REMOVE_INVALID = "remove() can only be called once after next()";
    protected static final String SETVALUE_INVALID = "setValue() can only be called after next() and before remove()";
    protected transient HashEntry data[];
    protected transient EntrySet entrySet;
    protected transient KeySet keySet;
    protected transient float loadFactor;
    protected transient int modCount;
    protected transient int size;
    protected transient int threshold;
    protected transient Values values;

    protected AbstractHashedMap()
    {
    }

    protected AbstractHashedMap(int i)
    {
        this(i, 0.75F);
    }

    protected AbstractHashedMap(int i, float f)
    {
        if (i < 1)
        {
            throw new IllegalArgumentException("Initial capacity must be greater than 0");
        }
        if (f <= 0.0F || Float.isNaN(f))
        {
            throw new IllegalArgumentException("Load factor must be greater than 0");
        } else
        {
            loadFactor = f;
            threshold = calculateThreshold(i, f);
            data = new HashEntry[calculateNewCapacity(i)];
            init();
            return;
        }
    }

    protected AbstractHashedMap(int i, float f, int j)
    {
        loadFactor = f;
        data = new HashEntry[i];
        threshold = j;
        init();
    }

    protected AbstractHashedMap(Map map)
    {
        this(Math.max(map.size() * 2, 16), 0.75F);
        putAll(map);
    }

    protected void addEntry(HashEntry hashentry, int i)
    {
        data[i] = hashentry;
    }

    protected void addMapping(int i, int j, Object obj, Object obj1)
    {
        modCount = modCount + 1;
        addEntry(createEntry(data[i], j, obj, obj1), i);
        size = size + 1;
        checkCapacity();
    }

    protected int calculateNewCapacity(int i)
    {
        int j = 1;
        if (i > 0x40000000)
        {
            i = 0x40000000;
        } else
        {
            for (; j < i; j <<= 1) { }
            i = j;
            if (j > 0x40000000)
            {
                return 0x40000000;
            }
        }
        return i;
    }

    protected int calculateThreshold(int i, float f)
    {
        return (int)((float)i * f);
    }

    protected void checkCapacity()
    {
        if (size >= threshold)
        {
            int i = data.length * 2;
            if (i <= 0x40000000)
            {
                ensureCapacity(i);
            }
        }
    }

    public void clear()
    {
        modCount = modCount + 1;
        HashEntry ahashentry[] = data;
        int i = ahashentry.length - 1;
        do
        {
            if (i < 0)
            {
                size = 0;
                return;
            }
            ahashentry[i] = null;
            i--;
        } while (true);
    }

    protected Object clone()
    {
        AbstractHashedMap abstracthashedmap;
        try
        {
            abstracthashedmap = (AbstractHashedMap)super.clone();
            abstracthashedmap.data = new HashEntry[data.length];
            abstracthashedmap.entrySet = null;
            abstracthashedmap.keySet = null;
            abstracthashedmap.values = null;
            abstracthashedmap.modCount = 0;
            abstracthashedmap.size = 0;
            abstracthashedmap.init();
            abstracthashedmap.putAll(this);
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        return abstracthashedmap;
    }

    public boolean containsKey(Object obj)
    {
        Object obj1;
        int i;
        if (obj == null)
        {
            obj1 = NULL;
        } else
        {
            obj1 = obj;
        }
        i = hash(obj1);
        obj1 = data[hashIndex(i, data.length)];
        do
        {
            if (obj1 == null)
            {
                return false;
            }
            if (((HashEntry) (obj1)).hashCode == i && isEqualKey(obj, ((HashEntry) (obj1)).getKey()))
            {
                return true;
            }
            obj1 = ((HashEntry) (obj1)).next;
        } while (true);
    }

    public boolean containsValue(Object obj)
    {
        boolean flag1 = true;
        if (obj != null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = 0;
        j = data.length;
_L5:
        if (i < j) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L7:
        return flag;
_L4:
        obj = data[i];
_L8:
label0:
        {
            if (obj != null)
            {
                break label0;
            }
            i++;
        }
          goto _L5
        flag = flag1;
        if (((HashEntry) (obj)).getValue() == null) goto _L7; else goto _L6
_L6:
        obj = ((HashEntry) (obj)).next;
          goto _L8
_L2:
        i = 0;
        j = data.length;
_L10:
        if (i >= j) goto _L3; else goto _L9
_L9:
        HashEntry hashentry = data[i];
_L12:
label1:
        {
            if (hashentry != null)
            {
                break label1;
            }
            i++;
        }
          goto _L10
          goto _L3
        flag = flag1;
        if (isEqualValue(obj, hashentry.getValue())) goto _L7; else goto _L11
_L11:
        hashentry = hashentry.next;
          goto _L12
    }

    protected HashEntry createEntry(HashEntry hashentry, int i, Object obj, Object obj1)
    {
        return new HashEntry(hashentry, i, obj, obj1);
    }

    protected Iterator createEntrySetIterator()
    {
        if (size() == 0)
        {
            return EmptyIterator.INSTANCE;
        } else
        {
            return new EntrySetIterator(this);
        }
    }

    protected Iterator createKeySetIterator()
    {
        if (size() == 0)
        {
            return EmptyIterator.INSTANCE;
        } else
        {
            return new KeySetIterator(this);
        }
    }

    protected Iterator createValuesIterator()
    {
        if (size() == 0)
        {
            return EmptyIterator.INSTANCE;
        } else
        {
            return new ValuesIterator(this);
        }
    }

    protected void destroyEntry(HashEntry hashentry)
    {
        hashentry.next = null;
        hashentry.key = null;
        hashentry.value = null;
    }

    protected void doReadObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        loadFactor = objectinputstream.readFloat();
        int i = objectinputstream.readInt();
        int j = objectinputstream.readInt();
        init();
        data = new HashEntry[i];
        i = 0;
        do
        {
            if (i >= j)
            {
                threshold = calculateThreshold(data.length, loadFactor);
                return;
            }
            put(objectinputstream.readObject(), objectinputstream.readObject());
            i++;
        } while (true);
    }

    protected void doWriteObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeFloat(loadFactor);
        objectoutputstream.writeInt(data.length);
        objectoutputstream.writeInt(size);
        MapIterator mapiterator = mapIterator();
        do
        {
            if (!mapiterator.hasNext())
            {
                return;
            }
            objectoutputstream.writeObject(mapiterator.next());
            objectoutputstream.writeObject(mapiterator.getValue());
        } while (true);
    }

    protected void ensureCapacity(int i)
    {
        int j = data.length;
        if (i <= j)
        {
            return;
        }
        if (size == 0)
        {
            threshold = calculateThreshold(i, loadFactor);
            data = new HashEntry[i];
            return;
        }
        HashEntry ahashentry[] = data;
        HashEntry ahashentry1[] = new HashEntry[i];
        modCount = modCount + 1;
        j--;
        do
        {
            if (j < 0)
            {
                threshold = calculateThreshold(i, loadFactor);
                data = ahashentry1;
                return;
            }
            HashEntry hashentry = ahashentry[j];
            if (hashentry != null)
            {
                ahashentry[j] = null;
                HashEntry hashentry1;
                do
                {
                    hashentry1 = hashentry.next;
                    int k = hashIndex(hashentry.hashCode, i);
                    hashentry.next = ahashentry1[k];
                    ahashentry1[k] = hashentry;
                    hashentry = hashentry1;
                } while (hashentry1 != null);
            }
            j--;
        } while (true);
    }

    protected int entryHashCode(HashEntry hashentry)
    {
        return hashentry.hashCode;
    }

    protected Object entryKey(HashEntry hashentry)
    {
        return hashentry.key;
    }

    protected HashEntry entryNext(HashEntry hashentry)
    {
        return hashentry.next;
    }

    public Set entrySet()
    {
        if (entrySet == null)
        {
            entrySet = new EntrySet(this);
        }
        return entrySet;
    }

    protected Object entryValue(HashEntry hashentry)
    {
        return hashentry.value;
    }

    public boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        MapIterator mapiterator;
        if (!(obj instanceof Map))
        {
            return false;
        }
        obj = (Map)obj;
        if (((Map) (obj)).size() != size())
        {
            return false;
        }
        mapiterator = mapIterator();
_L4:
        Object obj1;
        Object obj2;
        if (!mapiterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = mapiterator.next();
        obj2 = mapiterator.getValue();
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        if (((Map) (obj)).get(obj1) != null || !((Map) (obj)).containsKey(obj1))
        {
            break MISSING_BLOCK_LABEL_120;
        }
        continue; /* Loop/switch isn't completed */
        boolean flag;
        try
        {
            flag = obj2.equals(((Map) (obj)).get(obj1));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return false;
        }
        if (!flag)
        {
            return false;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        return false;
    }

    public Object get(Object obj)
    {
        Object obj1;
        int i;
        if (obj == null)
        {
            obj1 = NULL;
        } else
        {
            obj1 = obj;
        }
        i = hash(obj1);
        obj1 = data[hashIndex(i, data.length)];
        do
        {
            if (obj1 == null)
            {
                return null;
            }
            if (((HashEntry) (obj1)).hashCode == i && isEqualKey(obj, ((HashEntry) (obj1)).key))
            {
                return ((HashEntry) (obj1)).getValue();
            }
            obj1 = ((HashEntry) (obj1)).next;
        } while (true);
    }

    protected HashEntry getEntry(Object obj)
    {
        Object obj1;
        Object obj2;
        int i;
        if (obj == null)
        {
            obj1 = NULL;
        } else
        {
            obj1 = obj;
        }
        i = hash(obj1);
        obj1 = data[hashIndex(i, data.length)];
_L6:
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        obj2 = null;
_L4:
        return ((HashEntry) (obj2));
_L2:
        if (((HashEntry) (obj1)).hashCode != i)
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = obj1;
        if (isEqualKey(obj, ((HashEntry) (obj1)).getKey())) goto _L4; else goto _L3
_L3:
        obj1 = ((HashEntry) (obj1)).next;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected int hash(Object obj)
    {
        int i = obj.hashCode();
        i += ~(i << 9);
        i ^= i >>> 14;
        i += i << 4;
        return i ^ i >>> 10;
    }

    public int hashCode()
    {
        int i = 0;
        Iterator iterator = createEntrySetIterator();
        do
        {
            if (!iterator.hasNext())
            {
                return i;
            }
            i += iterator.next().hashCode();
        } while (true);
    }

    protected int hashIndex(int i, int j)
    {
        return j - 1 & i;
    }

    protected void init()
    {
    }

    public boolean isEmpty()
    {
        return size == 0;
    }

    protected boolean isEqualKey(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    protected boolean isEqualValue(Object obj, Object obj1)
    {
        return obj == obj1 || obj.equals(obj1);
    }

    public Set keySet()
    {
        if (keySet == null)
        {
            keySet = new KeySet(this);
        }
        return keySet;
    }

    public MapIterator mapIterator()
    {
        if (size == 0)
        {
            return EmptyMapIterator.INSTANCE;
        } else
        {
            return new HashMapIterator(this);
        }
    }

    public Object put(Object obj, Object obj1)
    {
        Object obj2;
        int i;
        int j;
        if (obj == null)
        {
            obj2 = NULL;
        } else
        {
            obj2 = obj;
        }
        i = hash(obj2);
        j = hashIndex(i, data.length);
        obj2 = data[j];
        do
        {
            if (obj2 == null)
            {
                addMapping(j, i, obj, obj1);
                return null;
            }
            if (((HashEntry) (obj2)).hashCode == i && isEqualKey(obj, ((HashEntry) (obj2)).getKey()))
            {
                obj = ((HashEntry) (obj2)).getValue();
                updateEntry(((HashEntry) (obj2)), obj1);
                return obj;
            }
            obj2 = ((HashEntry) (obj2)).next;
        } while (true);
    }

    public void putAll(Map map)
    {
        int i = map.size();
        if (i != 0)
        {
            ensureCapacity(calculateNewCapacity((int)((float)(size + i) / loadFactor + 1.0F)));
            map = map.entrySet().iterator();
            while (map.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public Object remove(Object obj)
    {
        Object obj1;
        Object obj2;
        int i;
        int j;
        if (obj == null)
        {
            obj1 = NULL;
        } else
        {
            obj1 = obj;
        }
        i = hash(obj1);
        j = hashIndex(i, data.length);
        obj1 = data[j];
        obj2 = null;
        do
        {
            if (obj1 == null)
            {
                return null;
            }
            if (((HashEntry) (obj1)).hashCode == i && isEqualKey(obj, ((HashEntry) (obj1)).getKey()))
            {
                obj = ((HashEntry) (obj1)).getValue();
                removeMapping(((HashEntry) (obj1)), j, ((HashEntry) (obj2)));
                return obj;
            }
            obj2 = obj1;
            obj1 = ((HashEntry) (obj1)).next;
        } while (true);
    }

    protected void removeEntry(HashEntry hashentry, int i, HashEntry hashentry1)
    {
        if (hashentry1 == null)
        {
            data[i] = hashentry.next;
            return;
        } else
        {
            hashentry1.next = hashentry.next;
            return;
        }
    }

    protected void removeMapping(HashEntry hashentry, int i, HashEntry hashentry1)
    {
        modCount = modCount + 1;
        removeEntry(hashentry, i, hashentry1);
        size = size - 1;
        destroyEntry(hashentry);
    }

    protected void reuseEntry(HashEntry hashentry, int i, int j, Object obj, Object obj1)
    {
        hashentry.next = data[i];
        hashentry.hashCode = j;
        hashentry.key = obj;
        hashentry.value = obj1;
    }

    public int size()
    {
        return size;
    }

    public String toString()
    {
        if (size() == 0)
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(size() * 32);
        stringbuilder.append('{');
        MapIterator mapiterator = mapIterator();
        boolean flag = mapiterator.hasNext();
        do
        {
            boolean flag1;
            do
            {
                if (!flag)
                {
                    stringbuilder.append('}');
                    return stringbuilder.toString();
                }
                Object obj2 = mapiterator.next();
                Object obj1 = mapiterator.getValue();
                Object obj = obj2;
                if (obj2 == this)
                {
                    obj = "(this Map)";
                }
                obj2 = stringbuilder.append(obj).append('=');
                obj = obj1;
                if (obj1 == this)
                {
                    obj = "(this Map)";
                }
                ((StringBuilder) (obj2)).append(obj);
                flag1 = mapiterator.hasNext();
                flag = flag1;
            } while (!flag1);
            stringbuilder.append(',').append(' ');
            flag = flag1;
        } while (true);
    }

    protected void updateEntry(HashEntry hashentry, Object obj)
    {
        hashentry.setValue(obj);
    }

    public Collection values()
    {
        if (values == null)
        {
            values = new Values(this);
        }
        return values;
    }

}
