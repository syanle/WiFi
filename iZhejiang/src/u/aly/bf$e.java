// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            co, bf

public static final class m extends Enum
    implements co
{

    public static final terator.next a;
    public static final t b;
    public static final t c;
    public static final t d;
    public static final t e;
    public static final t f;
    public static final t g;
    public static final t h;
    public static final t i;
    public static final t j;
    private static final Map k;
    private static final ap n[];
    private final short l;
    private final String m;

    public static num a(int i1)
    {
        switch (i1)
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

        case 6: // '\006'
            return f;

        case 7: // '\007'
            return g;

        case 8: // '\b'
            return h;

        case 9: // '\t'
            return i;

        case 10: // '\n'
            return j;
        }
    }

    public static tring a(String s)
    {
        return (bject)k.get(s);
    }

    public static bject b(int i1)
    {
        tring tring = a(i1);
        if (tring == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Field ").append(i1).append(" doesn't exist!").toString());
        } else
        {
            return tring;
        }
    }

    public static tring valueOf(String s)
    {
        return (tring)Enum.valueOf(u/aly/bf$e, s);
    }

    public static tring[] values()
    {
        return (tring[])n.clone();
    }

    public short a()
    {
        return l;
    }

    public String b()
    {
        return m;
    }

    static 
    {
        a = new <init>("TIME_ZONE", 0, (short)1, "time_zone");
        b = new <init>("LANGUAGE", 1, (short)2, "language");
        c = new <init>("COUNTRY", 2, (short)3, "country");
        d = new <init>("LATITUDE", 3, (short)4, "latitude");
        e = new <init>("LONGITUDE", 4, (short)5, "longitude");
        f = new <init>("CARRIER", 5, (short)6, "carrier");
        g = new <init>("LATENCY", 6, (short)7, "latency");
        h = new <init>("DISPLAY_NAME", 7, (short)8, "display_name");
        i = new <init>("ACCESS_TYPE", 8, (short)9, "access_type");
        j = new <init>("ACCESS_SUBTYPE", 9, (short)10, "access_subtype");
        n = (new n[] {
            a, b, c, d, e, f, g, h, i, j
        });
        k = new HashMap();
        terator terator;
        for (Iterator iterator = EnumSet.allOf(u/aly/bf$e).iterator(); iterator.hasNext(); k.put(terator.b(), terator))
        {
            terator = (bject)iterator.next();
        }

    }

    private tring(String s, int i1, short word0, String s1)
    {
        super(s, i1);
        l = word0;
        m = s1;
    }
}
