// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            co, as

public static final class h extends Enum
    implements co
{

    public static final terator.next a;
    public static final t b;
    public static final t c;
    public static final t d;
    public static final t e;
    private static final Map f;
    private static final ap i[];
    private final short g;
    private final String h;

    public static num a(int j)
    {
        switch (j)
        {
        default:
            return null;

        case 1: // '\001'
            return a;

        case 2: // '\002'
            return b;

        case 3: // '\003'
            return c;

        case 4: // '\004'
            return d;

        case 5: // '\005'
            return e;
        }
    }

    public static tring a(String s)
    {
        return (bject)f.get(s);
    }

    public static bject b(int j)
    {
        tring tring = a(j);
        if (tring == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Field ").append(j).append(" doesn't exist!").toString());
        } else
        {
            return tring;
        }
    }

    public static tring valueOf(String s)
    {
        return (tring)Enum.valueOf(u/aly/as$e, s);
    }

    public static tring[] values()
    {
        return (tring[])i.clone();
    }

    public short a()
    {
        return g;
    }

    public String b()
    {
        return h;
    }

    static 
    {
        a = new <init>("TS", 0, (short)1, "ts");
        b = new <init>("NAME", 1, (short)2, "name");
        c = new <init>("CKV", 2, (short)3, "ckv");
        d = new <init>("DURATION", 3, (short)4, "duration");
        e = new <init>("ACC", 4, (short)5, "acc");
        i = (new i[] {
            a, b, c, d, e
        });
        f = new HashMap();
        terator terator;
        for (Iterator iterator = EnumSet.allOf(u/aly/as$e).iterator(); iterator.hasNext(); f.put(terator.b(), terator))
        {
            terator = (bject)iterator.next();
        }

    }

    private tring(String s, int j, short word0, String s1)
    {
        super(s, j);
        g = word0;
        h = s1;
    }
}
