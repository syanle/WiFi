// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cl

public final class al extends Enum
    implements cl
{

    public static final al a;
    public static final al b;
    public static final al c;
    public static final al d;
    private static final al f[];
    private final int e;

    private al(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    public static al a(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return b;

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;
        }
    }

    public static al valueOf(String s)
    {
        return (al)Enum.valueOf(u/aly/al, s);
    }

    public static al[] values()
    {
        return (al[])f.clone();
    }

    public int a()
    {
        return e;
    }

    static 
    {
        a = new al("ACCESS_TYPE_UNKNOWN", 0, 0);
        b = new al("ACCESS_TYPE_2G_3G", 1, 1);
        c = new al("ACCESS_TYPE_WIFI", 2, 2);
        d = new al("ACCESS_TYPE_ETHERNET", 3, 3);
        f = (new al[] {
            a, b, c, d
        });
    }
}
