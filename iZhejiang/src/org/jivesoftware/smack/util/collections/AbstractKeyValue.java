// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;


// Referenced classes of package org.jivesoftware.smack.util.collections:
//            KeyValue

public abstract class AbstractKeyValue
    implements KeyValue
{

    protected Object key;
    protected Object value;

    protected AbstractKeyValue(Object obj, Object obj1)
    {
        key = obj;
        value = obj1;
    }

    public Object getKey()
    {
        return key;
    }

    public Object getValue()
    {
        return value;
    }

    public String toString()
    {
        return (new StringBuilder()).append(getKey()).append('=').append(getValue()).toString();
    }
}
