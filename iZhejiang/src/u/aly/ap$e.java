// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            co, ap

public static final class f extends Enum
    implements co
{

    public static final terator.next a;
    public static final t b;
    public static final t c;
    private static final Map d;
    private static final ap g[];
    private final short e;
    private final String f;

    public static num a(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return a;

        case 2: // '\002'
            return b;

        case 3: // '\003'
            return c;
        }
    }

    public static tring a(String s)
    {
        return (bject)d.get(s);
    }

    public static bject b(int i)
    {
        tring tring = a(i);
        if (tring == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Field ").append(i).append(" doesn't exist!").toString());
        } else
        {
            return tring;
        }
    }

    public static tring valueOf(String s)
    {
        return (tring)Enum.valueOf(u/aly/ap$e, s);
    }

    public static tring[] values()
    {
        return (tring[])g.clone();
    }

    public short a()
    {
        return e;
    }

    public String b()
    {
        return f;
    }

    static 
    {
        a = new <init>("SUCCESSFUL_REQUESTS", 0, (short)1, "successful_requests");
        b = new <init>("FAILED_REQUESTS", 1, (short)2, "failed_requests");
        c = new <init>("LAST_REQUEST_SPENT_MS", 2, (short)3, "last_request_spent_ms");
        g = (new g[] {
            a, b, c
        });
        d = new HashMap();
        terator terator;
        for (Iterator iterator = EnumSet.allOf(u/aly/ap$e).iterator(); iterator.hasNext(); d.put(terator.b(), terator))
        {
            terator = (bject)iterator.next();
        }

    }

    private tring(String s, int i, short word0, String s1)
    {
        super(s, i);
        e = word0;
        f = s1;
    }
}
