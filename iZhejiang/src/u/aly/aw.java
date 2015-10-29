// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cl

public final class aw extends Enum
    implements cl
{

    public static final aw a;
    public static final aw b;
    public static final aw c;
    private static final aw e[];
    private final int d;

    private aw(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static aw a(int i)
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
        }
    }

    public static aw valueOf(String s)
    {
        return (aw)Enum.valueOf(u/aly/aw, s);
    }

    public static aw[] values()
    {
        return (aw[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new aw("MALE", 0, 0);
        b = new aw("FEMALE", 1, 1);
        c = new aw("UNKNOWN", 2, 2);
        e = (new aw[] {
            a, b, c
        });
    }
}
