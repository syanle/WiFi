// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            di, cz, du, dg

public static class c
    implements di
{

    protected boolean a;
    protected boolean b;
    protected int c;

    public dg a(du du)
    {
        du = new cz(du, a, b);
        if (c != 0)
        {
            du.c(c);
        }
        return du;
    }

    public bject()
    {
        this(false, true);
    }

    public <init>(boolean flag, boolean flag1)
    {
        this(flag, flag1, 0);
    }

    public <init>(boolean flag, boolean flag1, int i)
    {
        a = false;
        b = true;
        a = flag;
        b = flag1;
        c = i;
    }
}
