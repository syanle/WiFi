// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util.collections;


// Referenced classes of package org.jivesoftware.smack.util.collections:
//            AbstractMapEntry, KeyValue

public final class DefaultMapEntry extends AbstractMapEntry
{

    public DefaultMapEntry(Object obj, Object obj1)
    {
        super(obj, obj1);
    }

    public DefaultMapEntry(java.util.Map.Entry entry)
    {
        super(entry.getKey(), entry.getValue());
    }

    public DefaultMapEntry(KeyValue keyvalue)
    {
        super(keyvalue.getKey(), keyvalue.getValue());
    }
}
