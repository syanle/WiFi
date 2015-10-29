// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;


// Referenced classes of package org.jivesoftware.smack.util:
//            Cache

private static class object
{

    public de ageListNode;
    public de lastAccessedListNode;
    public Object object;
    public int readCount;

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof object))
        {
            return false;
        } else
        {
            obj = (object)obj;
            return object.equals(((object) (obj)).object);
        }
    }

    public int hashCode()
    {
        return object.hashCode();
    }

    public de(Object obj)
    {
        readCount = 0;
        object = obj;
    }
}
