// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;


// Referenced classes of package org.jivesoftware.smack.util:
//            Cache

private static class ode.next
{

    private ode head;

    public ode addFirst(Object obj)
    {
        obj = new ode(obj, head.next, head);
        ((ode) (obj)).previous.next = ((ode) (obj));
        ((ode) (obj)).next.previous = ((ode) (obj));
        return ((ode) (obj));
    }

    public ode addFirst(ode ode)
    {
        ode.next = head.next;
        ode.previous = head;
        ode.previous.next = ode;
        ode.next.previous = ode;
        return ode;
    }

    public ode addLast(Object obj)
    {
        obj = new ode(obj, head, head.previous);
        ((ode) (obj)).previous.next = ((ode) (obj));
        ((ode) (obj)).next.previous = ((ode) (obj));
        return ((ode) (obj));
    }

    public void clear()
    {
        ode ode = getLast();
        do
        {
            if (ode == null)
            {
                ode = head;
                ode ode1 = head;
                ode ode2 = head;
                ode1.previous = ode2;
                ode.next = ode2;
                return;
            }
            ode.remove();
            ode = getLast();
        } while (true);
    }

    public ode getFirst()
    {
        ode ode1 = head.next;
        ode ode = ode1;
        if (ode1 == head)
        {
            ode = null;
        }
        return ode;
    }

    public ode getLast()
    {
        ode ode1 = head.previous;
        ode ode = ode1;
        if (ode1 == head)
        {
            ode = null;
        }
        return ode;
    }

    public String toString()
    {
        ode ode = head.next;
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            if (ode == head)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(ode.toString()).append(", ");
            ode = ode.next;
        } while (true);
    }

    public ode()
    {
        head = new ode("head", null, null);
        ode ode = head;
        ode ode1 = head;
        ode ode2 = head;
        ode1.previous = ode2;
        ode.next = ode2;
    }
}
