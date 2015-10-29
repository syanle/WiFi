// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractHashedMap, MapIterator, DefaultMapEntry

public abstract class AbstractReferenceMap extends AbstractHashedMap
{
    protected static class ReferenceEntry extends AbstractHashedMap.HashEntry
    {

        protected final AbstractReferenceMap parent;
        protected Reference refKey;
        protected Reference refValue;

        public boolean equals(Object obj)
        {
            if (obj != this)
            {
                if (!(obj instanceof java.util.Map.Entry))
                {
                    return false;
                }
                Object obj1 = (java.util.Map.Entry)obj;
                obj = ((java.util.Map.Entry) (obj1)).getKey();
                obj1 = ((java.util.Map.Entry) (obj1)).getValue();
                if (obj == null || obj1 == null)
                {
                    return false;
                }
                if (!parent.isEqualKey(obj, getKey()) || !parent.isEqualValue(obj1, getValue()))
                {
                    return false;
                }
            }
            return true;
        }

        public Object getKey()
        {
            if (parent.keyType > 0)
            {
                return refKey.get();
            } else
            {
                return super.getKey();
            }
        }

        public Object getValue()
        {
            if (parent.valueType > 0)
            {
                return refValue.get();
            } else
            {
                return super.getValue();
            }
        }

        public int hashCode()
        {
            return parent.hashEntry(getKey(), getValue());
        }

        protected ReferenceEntry next()
        {
            return (ReferenceEntry)next;
        }

        boolean purge(Reference reference)
        {
            boolean flag;
            boolean flag1;
            if (parent.keyType > 0 && refKey == reference)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag && (parent.valueType <= 0 || refValue != reference))
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            if (flag1)
            {
                if (parent.keyType > 0)
                {
                    refKey.clear();
                }
                if (parent.valueType > 0)
                {
                    refValue.clear();
                } else
                if (parent.purgeValues)
                {
                    setValue(null);
                    return flag1;
                }
            }
            return flag1;
        }

        public Object setValue(Object obj)
        {
            Object obj1 = getValue();
            if (parent.valueType > 0)
            {
                refValue.clear();
                refValue = toReference(parent.valueType, obj, hashCode);
                return obj1;
            } else
            {
                super.setValue(obj);
                return obj1;
            }
        }

        protected Reference toReference(int i, Object obj, int j)
        {
            switch (i)
            {
            default:
                throw new Error("Attempt to create hard reference in ReferenceMap!");

            case 1: // '\001'
                return new SoftRef(j, obj, parent.queue);

            case 2: // '\002'
                return new WeakRef(j, obj, parent.queue);
            }
        }

        public ReferenceEntry(AbstractReferenceMap abstractreferencemap, ReferenceEntry referenceentry, int i, Object obj, Object obj1)
        {
            super(referenceentry, i, null, null);
            parent = abstractreferencemap;
            if (abstractreferencemap.keyType != 0)
            {
                refKey = toReference(abstractreferencemap.keyType, obj, i);
            } else
            {
                setKey(obj);
            }
            if (abstractreferencemap.valueType != 0)
            {
                refValue = toReference(abstractreferencemap.valueType, obj1, i);
                return;
            } else
            {
                setValue(obj1);
                return;
            }
        }
    }

    static class ReferenceEntrySet extends AbstractHashedMap.EntrySet
    {

        public Object[] toArray()
        {
            return toArray(new Object[0]);
        }

        public Object[] toArray(Object aobj[])
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    return arraylist.toArray(aobj);
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                arraylist.add(new DefaultMapEntry(entry.getKey(), entry.getValue()));
            } while (true);
        }

        protected ReferenceEntrySet(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }

    static class ReferenceEntrySetIterator extends ReferenceIteratorBase
        implements Iterator
    {

        public volatile Object next()
        {
            return next();
        }

        public ReferenceEntry next()
        {
            return superNext();
        }

        public ReferenceEntrySetIterator(AbstractReferenceMap abstractreferencemap)
        {
            super(abstractreferencemap);
        }
    }

    static class ReferenceIteratorBase
    {

        Object currentKey;
        Object currentValue;
        ReferenceEntry entry;
        int expectedModCount;
        int index;
        Object nextKey;
        Object nextValue;
        final AbstractReferenceMap parent;
        ReferenceEntry previous;

        private void checkMod()
        {
            if (parent.modCount != expectedModCount)
            {
                throw new ConcurrentModificationException();
            } else
            {
                return;
            }
        }

        private boolean nextNull()
        {
            return nextKey == null || nextValue == null;
        }

        protected ReferenceEntry currentEntry()
        {
            checkMod();
            return previous;
        }

        public boolean hasNext()
        {
            checkMod();
            do
            {
                do
                {
                    if (!nextNull())
                    {
                        return true;
                    }
                    ReferenceEntry referenceentry = entry;
                    int i = index;
                    do
                    {
                        if (referenceentry != null || i <= 0)
                        {
                            entry = referenceentry;
                            index = i;
                            if (referenceentry == null)
                            {
                                currentKey = null;
                                currentValue = null;
                                return false;
                            }
                            break;
                        }
                        i--;
                        referenceentry = (ReferenceEntry)parent.data[i];
                    } while (true);
                    nextKey = referenceentry.getKey();
                    nextValue = referenceentry.getValue();
                } while (!nextNull());
                entry = entry.next();
            } while (true);
        }

        protected ReferenceEntry nextEntry()
        {
            checkMod();
            if (nextNull() && !hasNext())
            {
                throw new NoSuchElementException();
            } else
            {
                previous = entry;
                entry = entry.next();
                currentKey = nextKey;
                currentValue = nextValue;
                nextKey = null;
                nextValue = null;
                return previous;
            }
        }

        public void remove()
        {
            checkMod();
            if (previous == null)
            {
                throw new IllegalStateException();
            } else
            {
                parent.remove(currentKey);
                previous = null;
                currentKey = null;
                currentValue = null;
                expectedModCount = parent.modCount;
                return;
            }
        }

        public ReferenceEntry superNext()
        {
            return nextEntry();
        }

        public ReferenceIteratorBase(AbstractReferenceMap abstractreferencemap)
        {
            parent = abstractreferencemap;
            int i;
            if (abstractreferencemap.size() != 0)
            {
                i = abstractreferencemap.data.length;
            } else
            {
                i = 0;
            }
            index = i;
            expectedModCount = abstractreferencemap.modCount;
        }
    }

    static class ReferenceKeySet extends AbstractHashedMap.KeySet
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

        protected ReferenceKeySet(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }

    static class ReferenceKeySetIterator extends ReferenceIteratorBase
        implements Iterator
    {

        public Object next()
        {
            return nextEntry().getKey();
        }

        ReferenceKeySetIterator(AbstractReferenceMap abstractreferencemap)
        {
            super(abstractreferencemap);
        }
    }

    static class ReferenceMapIterator extends ReferenceIteratorBase
        implements MapIterator
    {

        public Object getKey()
        {
            ReferenceEntry referenceentry = currentEntry();
            if (referenceentry == null)
            {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            } else
            {
                return referenceentry.getKey();
            }
        }

        public Object getValue()
        {
            ReferenceEntry referenceentry = currentEntry();
            if (referenceentry == null)
            {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            } else
            {
                return referenceentry.getValue();
            }
        }

        public Object next()
        {
            return nextEntry().getKey();
        }

        public Object setValue(Object obj)
        {
            ReferenceEntry referenceentry = currentEntry();
            if (referenceentry == null)
            {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            } else
            {
                return referenceentry.setValue(obj);
            }
        }

        protected ReferenceMapIterator(AbstractReferenceMap abstractreferencemap)
        {
            super(abstractreferencemap);
        }
    }

    static class ReferenceValues extends AbstractHashedMap.Values
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

        protected ReferenceValues(AbstractHashedMap abstracthashedmap)
        {
            super(abstracthashedmap);
        }
    }

    static class ReferenceValuesIterator extends ReferenceIteratorBase
        implements Iterator
    {

        public Object next()
        {
            return nextEntry().getValue();
        }

        ReferenceValuesIterator(AbstractReferenceMap abstractreferencemap)
        {
            super(abstractreferencemap);
        }
    }

    static class SoftRef extends SoftReference
    {

        private int hash;

        public int hashCode()
        {
            return hash;
        }

        public SoftRef(int i, Object obj, ReferenceQueue referencequeue)
        {
            super(obj, referencequeue);
            hash = i;
        }
    }

    static class WeakRef extends WeakReference
    {

        private int hash;

        public int hashCode()
        {
            return hash;
        }

        public WeakRef(int i, Object obj, ReferenceQueue referencequeue)
        {
            super(obj, referencequeue);
            hash = i;
        }
    }


    public static final int HARD = 0;
    public static final int SOFT = 1;
    public static final int WEAK = 2;
    protected int keyType;
    protected boolean purgeValues;
    private transient ReferenceQueue queue;
    protected int valueType;

    protected AbstractReferenceMap()
    {
    }

    protected AbstractReferenceMap(int i, int j, int k, float f, boolean flag)
    {
        super(k, f);
        verify("keyType", i);
        verify("valueType", j);
        keyType = i;
        valueType = j;
        purgeValues = flag;
    }

    private static void verify(String s, int i)
    {
        if (i < 0 || i > 2)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(s))).append(" must be HARD, SOFT, WEAK.").toString());
        } else
        {
            return;
        }
    }

    public void clear()
    {
        super.clear();
        while (queue.poll() != null) ;
    }

    public boolean containsKey(Object obj)
    {
        purgeBeforeRead();
        for (obj = getEntry(obj); obj == null || ((java.util.Map.Entry) (obj)).getValue() == null;)
        {
            return false;
        }

        return true;
    }

    public boolean containsValue(Object obj)
    {
        purgeBeforeRead();
        if (obj == null)
        {
            return false;
        } else
        {
            return super.containsValue(obj);
        }
    }

    public AbstractHashedMap.HashEntry createEntry(AbstractHashedMap.HashEntry hashentry, int i, Object obj, Object obj1)
    {
        return new ReferenceEntry(this, (ReferenceEntry)hashentry, i, obj, obj1);
    }

    protected Iterator createEntrySetIterator()
    {
        return new ReferenceEntrySetIterator(this);
    }

    protected Iterator createKeySetIterator()
    {
        return new ReferenceKeySetIterator(this);
    }

    protected Iterator createValuesIterator()
    {
        return new ReferenceValuesIterator(this);
    }

    protected void doReadObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        keyType = objectinputstream.readInt();
        valueType = objectinputstream.readInt();
        purgeValues = objectinputstream.readBoolean();
        loadFactor = objectinputstream.readFloat();
        int i = objectinputstream.readInt();
        init();
        data = new AbstractHashedMap.HashEntry[i];
        do
        {
            Object obj = objectinputstream.readObject();
            if (obj == null)
            {
                threshold = calculateThreshold(data.length, loadFactor);
                return;
            }
            put(obj, objectinputstream.readObject());
        } while (true);
    }

    protected void doWriteObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeInt(keyType);
        objectoutputstream.writeInt(valueType);
        objectoutputstream.writeBoolean(purgeValues);
        objectoutputstream.writeFloat(loadFactor);
        objectoutputstream.writeInt(data.length);
        MapIterator mapiterator = mapIterator();
        do
        {
            if (!mapiterator.hasNext())
            {
                objectoutputstream.writeObject(null);
                return;
            }
            objectoutputstream.writeObject(mapiterator.next());
            objectoutputstream.writeObject(mapiterator.getValue());
        } while (true);
    }

    public Set entrySet()
    {
        if (entrySet == null)
        {
            entrySet = new ReferenceEntrySet(this);
        }
        return entrySet;
    }

    public Object get(Object obj)
    {
        purgeBeforeRead();
        obj = getEntry(obj);
        if (obj == null)
        {
            return null;
        } else
        {
            return ((java.util.Map.Entry) (obj)).getValue();
        }
    }

    protected AbstractHashedMap.HashEntry getEntry(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return super.getEntry(obj);
        }
    }

    protected int hashEntry(Object obj, Object obj1)
    {
        int j = 0;
        int i;
        if (obj == null)
        {
            i = 0;
        } else
        {
            i = obj.hashCode();
        }
        if (obj1 != null)
        {
            j = obj1.hashCode();
        }
        return j ^ i;
    }

    protected void init()
    {
        queue = new ReferenceQueue();
    }

    public boolean isEmpty()
    {
        purgeBeforeRead();
        return super.isEmpty();
    }

    protected boolean isEqualKey(Object obj, Object obj1)
    {
        return obj == obj1 || obj.equals(obj1);
    }

    public Set keySet()
    {
        if (keySet == null)
        {
            keySet = new ReferenceKeySet(this);
        }
        return keySet;
    }

    public MapIterator mapIterator()
    {
        return new ReferenceMapIterator(this);
    }

    protected void purge()
    {
        Reference reference = queue.poll();
        do
        {
            if (reference == null)
            {
                return;
            }
            purge(reference);
            reference = queue.poll();
        } while (true);
    }

    protected void purge(Reference reference)
    {
        int i = hashIndex(reference.hashCode(), data.length);
        AbstractHashedMap.HashEntry hashentry1 = null;
        AbstractHashedMap.HashEntry hashentry = data[i];
        do
        {
            if (hashentry == null)
            {
                return;
            }
            if (((ReferenceEntry)hashentry).purge(reference))
            {
                if (hashentry1 == null)
                {
                    data[i] = hashentry.next;
                } else
                {
                    hashentry1.next = hashentry.next;
                }
                size = size - 1;
                return;
            }
            hashentry1 = hashentry;
            hashentry = hashentry.next;
        } while (true);
    }

    protected void purgeBeforeRead()
    {
        purge();
    }

    protected void purgeBeforeWrite()
    {
        purge();
    }

    public Object put(Object obj, Object obj1)
    {
        if (obj == null)
        {
            throw new NullPointerException("null keys not allowed");
        }
        if (obj1 == null)
        {
            throw new NullPointerException("null values not allowed");
        } else
        {
            purgeBeforeWrite();
            return super.put(obj, obj1);
        }
    }

    public Object remove(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            purgeBeforeWrite();
            return super.remove(obj);
        }
    }

    public int size()
    {
        purgeBeforeRead();
        return super.size();
    }

    public Collection values()
    {
        if (values == null)
        {
            values = new ReferenceValues(this);
        }
        return values;
    }

}
