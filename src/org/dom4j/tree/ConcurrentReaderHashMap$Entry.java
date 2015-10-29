// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.dom4j.tree;


// Referenced classes of package org.dom4j.tree:
//            ConcurrentReaderHashMap

protected static class value
    implements java.util.ntry
{

    protected final int hash;
    protected final Object key;
    protected final value next;
    protected volatile Object value;

    public boolean equals(Object obj)
    {
        if (obj instanceof java.util.ntry)
        {
            if (key.equals(((java.util.ntry.key) (obj = (java.util.ntry.key)obj)).key()) && value.equals(((java.util.ntry.value) (obj)).value()))
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

    (int i, Object obj, Object obj1,  )
    {
        hash = i;
        key = obj;
        next = ;
        value = obj1;
    }
}
