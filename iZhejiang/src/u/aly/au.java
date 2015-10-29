// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cl

public final class au extends Enum
    implements cl
{

    public static final au a;
    public static final au b;
    private static final au d[];
    private final int c;

    private au(String s, int i, int j)
    {
        super(s, i);
        c = j;
    }

    public static au a(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return a;

        case 2: // '\002'
            return b;
        }
    }

    public static au valueOf(String s)
    {
        return (au)Enum.valueOf(u/aly/au, s);
    }

    public static au[] values()
    {
        return (au[])d.clone();
    }

    public int a()
    {
        return c;
    }

    static 
    {
        a = new au("LEGIT", 0, 1);
        b = new au("ALIEN", 1, 2);
        d = (new au[] {
            a, b
        });
    }
}
