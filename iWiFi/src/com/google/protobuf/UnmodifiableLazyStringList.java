// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.RandomAccess;

// Referenced classes of package com.google.protobuf:
//            LazyStringList, ByteString

public class UnmodifiableLazyStringList extends AbstractList
    implements LazyStringList, RandomAccess
{

    private final LazyStringList list;

    public UnmodifiableLazyStringList(LazyStringList lazystringlist)
    {
        list = lazystringlist;
    }

    public void add(ByteString bytestring)
    {
        throw new UnsupportedOperationException();
    }

    public volatile Object get(int i)
    {
        return get(i);
    }

    public String get(int i)
    {
        return (String)list.get(i);
    }

    public ByteString getByteString(int i)
    {
        return list.getByteString(i);
    }

    public Iterator iterator()
    {
        return new Iterator() {

            Iterator a;
            final UnmodifiableLazyStringList b;

            public String a()
            {
                return (String)a.next();
            }

            public boolean hasNext()
            {
                return a.hasNext();
            }

            public volatile Object next()
            {
                return a();
            }

            public void remove()
            {
                throw new UnsupportedOperationException();
            }

            
            {
                b = UnmodifiableLazyStringList.this;
                super();
                a = b.list.iterator();
            }
        };
    }

    public ListIterator listIterator(int i)
    {
        return new ListIterator(i) {

            ListIterator a;
            final int b;
            final UnmodifiableLazyStringList c;

            public String a()
            {
                return (String)a.next();
            }

            public void a(String s)
            {
                throw new UnsupportedOperationException();
            }

            public volatile void add(Object obj)
            {
                b((String)obj);
            }

            public String b()
            {
                return (String)a.previous();
            }

            public void b(String s)
            {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext()
            {
                return a.hasNext();
            }

            public boolean hasPrevious()
            {
                return a.hasPrevious();
            }

            public volatile Object next()
            {
                return a();
            }

            public int nextIndex()
            {
                return a.nextIndex();
            }

            public volatile Object previous()
            {
                return b();
            }

            public int previousIndex()
            {
                return a.previousIndex();
            }

            public void remove()
            {
                throw new UnsupportedOperationException();
            }

            public volatile void set(Object obj)
            {
                a((String)obj);
            }

            
            {
                c = UnmodifiableLazyStringList.this;
                b = i;
                super();
                a = c.list.listIterator(b);
            }
        };
    }

    public int size()
    {
        return list.size();
    }

}
