// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cl

public final class bk extends Enum
    implements cl
{

    public static final bk a;
    public static final bk b;
    public static final bk c;
    public static final bk d;
    private static final bk f[];
    private final int e;

    private bk(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    public static bk a(int i)
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

    public static bk valueOf(String s)
    {
        return (bk)Enum.valueOf(u/aly/bk, s);
    }

    public static bk[] values()
    {
        return (bk[])f.clone();
    }

    public int a()
    {
        return e;
    }

    static 
    {
        a = new bk("ANDROID", 0, 0);
        b = new bk("IOS", 1, 1);
        c = new bk("WINDOWS_PHONE", 2, 2);
        d = new bk("WINDOWS_RT", 3, 3);
        f = (new bk[] {
            a, b, c, d
        });
    }
}
