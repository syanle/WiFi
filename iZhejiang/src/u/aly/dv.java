// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cn

public class dv extends cn
{

    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    private static final long g = 1L;
    protected int f;

    public dv()
    {
        f = 0;
    }

    public dv(int i)
    {
        f = 0;
        f = i;
    }

    public dv(int i, String s)
    {
        super(s);
        f = 0;
        f = i;
    }

    public dv(int i, String s, Throwable throwable)
    {
        super(s, throwable);
        f = 0;
        f = i;
    }

    public dv(int i, Throwable throwable)
    {
        super(throwable);
        f = 0;
        f = i;
    }

    public dv(String s)
    {
        super(s);
        f = 0;
    }

    public dv(String s, Throwable throwable)
    {
        super(s, throwable);
        f = 0;
    }

    public dv(Throwable throwable)
    {
        super(throwable);
        f = 0;
    }

    public int a()
    {
        return f;
    }
}
