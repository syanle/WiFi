// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package u.aly:
//            co, bn

public static final class n extends Enum
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
    public static final t k;
    private static final Map l;
    private static final ap o[];
    private final short m;
    private final String n;

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

        case 11: // '\013'
            return k;
        }
    }

    public static tring a(String s)
    {
        return (bject)l.get(s);
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
        return (tring)Enum.valueOf(u/aly/bn$e, s);
    }

    public static tring[] values()
    {
        return (tring[])o.clone();
    }

    public short a()
    {
        return m;
    }

    public String b()
    {
        return n;
    }

    static 
    {
        a = new <init>("CLIENT_STATS", 0, (short)1, "client_stats");
        b = new <init>("APP_INFO", 1, (short)2, "app_info");
        c = new <init>("DEVICE_INFO", 2, (short)3, "device_info");
        d = new <init>("MISC_INFO", 3, (short)4, "misc_info");
        e = new <init>("ACTIVATE_MSG", 4, (short)5, "activate_msg");
        f = new <init>("INSTANT_MSGS", 5, (short)6, "instant_msgs");
        g = new <init>("SESSIONS", 6, (short)7, "sessions");
        h = new <init>("IMPRINT", 7, (short)8, "imprint");
        i = new <init>("ID_TRACKING", 8, (short)9, "id_tracking");
        j = new <init>("ACTIVE_USER", 9, (short)10, "active_user");
        k = new <init>("CONTROL_POLICY", 10, (short)11, "control_policy");
        o = (new o[] {
            a, b, c, d, e, f, g, h, i, j, 
            k
        });
        l = new HashMap();
        terator terator;
        for (Iterator iterator = EnumSet.allOf(u/aly/bn$e).iterator(); iterator.hasNext(); l.put(terator.b(), terator))
        {
            terator = (bject)iterator.next();
        }

    }

    private tring(String s, int i1, short word0, String s1)
    {
        super(s, i1);
        m = word0;
        n = s1;
    }
}
