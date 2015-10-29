// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;

import java.util.Iterator;

public interface MapIterator
    extends Iterator
{

    public abstract Object getKey();

    public abstract Object getValue();

    public abstract boolean hasNext();

    public abstract Object next();

    public abstract void remove();

    public abstract Object setValue(Object obj);
}
