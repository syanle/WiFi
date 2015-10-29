// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.util.Iterator;

// Referenced classes of package org.apache.harmony.javax.security.auth:
//            Subject

private class iterator
    implements Iterator
{

    protected Iterator iterator;
    final iterator this$1;

    public boolean hasNext()
    {
        return iterator.hasNext();
    }

    public Object next()
    {
        return iterator.next();
    }

    public void remove()
    {
        Subject.access$0(iterator(this._cls1.this));
        Subject.access$1(this._mth1(this._cls1.this));
        iterator.remove();
    }

    protected (Iterator iterator1)
    {
        this$1 = this._cls1.this;
        super();
        iterator = iterator1;
    }
}
