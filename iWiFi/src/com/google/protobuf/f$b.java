// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            f

private class 
    implements Comparable, java.util.Entry
{

    final f a;
    private final Comparable b;
    private Object c;

    private boolean a(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    public int a( )
    {
        return a().compareTo(.a());
    }

    public Comparable a()
    {
        return b;
    }

    public volatile int compareTo(Object obj)
    {
        return a((a)obj);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof java.util.Entry))
            {
                return false;
            }
            obj = (java.util.Entry)obj;
            if (!a(b, ((java.util.Entry) (obj)).getKey()) || !a(c, ((java.util.Entry) (obj)).getValue()))
            {
                return false;
            }
        }
        return true;
    }

    public volatile Object getKey()
    {
        return a();
    }

    public Object getValue()
    {
        return c;
    }

    public int hashCode()
    {
        int j = 0;
        int i;
        if (b == null)
        {
            i = 0;
        } else
        {
            i = b.hashCode();
        }
        if (c != null)
        {
            j = c.hashCode();
        }
        return i ^ j;
    }

    public Object setValue(Object obj)
    {
        f.a(a);
        Object obj1 = c;
        c = obj;
        return obj1;
    }

    public String toString()
    {
        return (new StringBuilder()).append(b).append("=").append(c).toString();
    }

    (f f1, Comparable comparable, Object obj)
    {
        a = f1;
        super();
        b = comparable;
        c = obj;
    }

    c(f f1, java.util.Entry entry)
    {
        this(f1, (Comparable)entry.getKey(), entry.getValue());
    }
}
