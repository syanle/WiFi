// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class ab
    implements List
{

    protected LinkedList a;

    public ab()
    {
        a = new LinkedList();
    }

    public void add(int i, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        a.add(i, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        throw obj;
    }

    public boolean add(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.add(obj);
        this;
        JVM INSTR monitorexit ;
        return flag;
        obj;
        throw obj;
    }

    public boolean addAll(int i, Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.addAll(i, collection);
        this;
        JVM INSTR monitorexit ;
        return flag;
        collection;
        throw collection;
    }

    public boolean addAll(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.addAll(collection);
        this;
        JVM INSTR monitorexit ;
        return flag;
        collection;
        throw collection;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        a.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean contains(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.contains(obj);
        this;
        JVM INSTR monitorexit ;
        return flag;
        obj;
        throw obj;
    }

    public boolean containsAll(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.containsAll(collection);
        this;
        JVM INSTR monitorexit ;
        return flag;
        collection;
        throw collection;
    }

    public Object get(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = null;
        Object obj1 = a.get(i);
        obj = obj1;
_L2:
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public int indexOf(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.indexOf(obj);
        this;
        JVM INSTR monitorexit ;
        return i;
        obj;
        throw obj;
    }

    public boolean isEmpty()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.isEmpty();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public Iterator iterator()
    {
        this;
        JVM INSTR monitorenter ;
        ListIterator listiterator = a.listIterator();
        this;
        JVM INSTR monitorexit ;
        return listiterator;
        Exception exception;
        exception;
        throw exception;
    }

    public int lastIndexOf(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.lastIndexOf(obj);
        this;
        JVM INSTR monitorexit ;
        return i;
        obj;
        throw obj;
    }

    public ListIterator listIterator()
    {
        this;
        JVM INSTR monitorenter ;
        ListIterator listiterator = a.listIterator();
        this;
        JVM INSTR monitorexit ;
        return listiterator;
        Exception exception;
        exception;
        throw exception;
    }

    public ListIterator listIterator(int i)
    {
        this;
        JVM INSTR monitorenter ;
        ListIterator listiterator = a.listIterator(i);
        this;
        JVM INSTR monitorexit ;
        return listiterator;
        Exception exception;
        exception;
        throw exception;
    }

    public Object remove(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = a.remove(i);
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean remove(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.remove(obj);
        this;
        JVM INSTR monitorexit ;
        return flag;
        obj;
        throw obj;
    }

    public boolean removeAll(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.removeAll(collection);
        this;
        JVM INSTR monitorexit ;
        return flag;
        collection;
        throw collection;
    }

    public boolean retainAll(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a.retainAll(collection);
        this;
        JVM INSTR monitorexit ;
        return flag;
        collection;
        throw collection;
    }

    public Object set(int i, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        obj = a.set(i, obj);
        this;
        JVM INSTR monitorexit ;
        return obj;
        obj;
        throw obj;
    }

    public int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i = a.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public List subList(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        List list = a.subList(i, j);
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    public Object[] toArray()
    {
        this;
        JVM INSTR monitorenter ;
        Object aobj[] = a.toArray();
        this;
        JVM INSTR monitorexit ;
        return aobj;
        Exception exception;
        exception;
        throw exception;
    }

    public Object[] toArray(Object aobj[])
    {
        this;
        JVM INSTR monitorenter ;
        aobj = a.toArray(aobj);
        this;
        JVM INSTR monitorexit ;
        return aobj;
        aobj;
        throw aobj;
    }
}
