// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package u.aly:
//            ci

private static class <init>
    implements Comparator
{

    public int compare(Object obj, Object obj1)
    {
        if (obj == null && obj1 == null)
        {
            return 0;
        }
        if (obj == null)
        {
            return -1;
        }
        if (obj1 == null)
        {
            return 1;
        }
        if (obj instanceof List)
        {
            return ci.a((List)obj, (List)obj1);
        }
        if (obj instanceof Set)
        {
            return ci.a((Set)obj, (Set)obj1);
        }
        if (obj instanceof Map)
        {
            return ci.a((Map)obj, (Map)obj1);
        }
        if (obj instanceof byte[])
        {
            return ci.a((byte[])(byte[])obj, (byte[])(byte[])obj1);
        } else
        {
            return ci.a((Comparable)obj, (Comparable)obj1);
        }
    }

    private bject()
    {
    }

    bject(bject bject)
    {
        this();
    }
}
