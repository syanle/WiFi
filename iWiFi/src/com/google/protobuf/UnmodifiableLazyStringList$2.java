// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.Iterator;

// Referenced classes of package com.google.protobuf:
//            UnmodifiableLazyStringList, LazyStringList

class b
    implements Iterator
{

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

    (UnmodifiableLazyStringList unmodifiablelazystringlist)
    {
        b = unmodifiablelazystringlist;
        super();
        a = UnmodifiableLazyStringList.access$000(b).iterator();
    }
}
