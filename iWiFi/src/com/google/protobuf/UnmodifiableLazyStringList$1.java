// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.ListIterator;

// Referenced classes of package com.google.protobuf:
//            UnmodifiableLazyStringList, LazyStringList

class b
    implements ListIterator
{

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

    (UnmodifiableLazyStringList unmodifiablelazystringlist, int i)
    {
        c = unmodifiablelazystringlist;
        b = i;
        super();
        a = UnmodifiableLazyStringList.access$000(c).listIterator(b);
    }
}
