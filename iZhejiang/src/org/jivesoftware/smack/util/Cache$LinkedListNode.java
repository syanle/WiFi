// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;


// Referenced classes of package org.jivesoftware.smack.util:
//            Cache

private static class previous
{

    public object next;
    public Object object;
    public object previous;
    public long timestamp;

    public void remove()
    {
        previous.next = next;
        next.previous = previous;
    }

    public String toString()
    {
        return object.toString();
    }

    public (Object obj,  ,  1)
    {
        object = obj;
        next = ;
        previous = 1;
    }
}
