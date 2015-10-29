// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;

import java.util.AbstractCollection;
import java.util.Iterator;

// Referenced classes of package org.dom4j.tree:
//            ConcurrentReaderHashMap

private class <init> extends AbstractCollection
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
        return new erator(ConcurrentReaderHashMap.this);
    }

    public int size()
    {
        return ConcurrentReaderHashMap.this.size();
    }

    private erator()
    {
        this$0 = ConcurrentReaderHashMap.this;
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
