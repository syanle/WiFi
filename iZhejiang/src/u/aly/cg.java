// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cn, dl, db, dg, 
//            dj

public class cg extends cn
{

    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    private static final dl j = new dl("TApplicationException");
    private static final db k = new db("message", (byte)11, (short)1);
    private static final db l = new db("type", (byte)8, (short)2);
    private static final long m = 1L;
    protected int i;

    public cg()
    {
        i = 0;
    }

    public cg(int i1)
    {
        i = 0;
        i = i1;
    }

    public cg(int i1, String s)
    {
        super(s);
        i = 0;
        i = i1;
    }

    public cg(String s)
    {
        super(s);
        i = 0;
    }

    public static cg a(dg dg1)
        throws cn
    {
        String s;
        int i1;
        dg1.j();
        s = null;
        i1 = 0;
_L2:
        db db1;
        db1 = dg1.l();
        if (db1.b == 0)
        {
            dg1.k();
            return new cg(i1, s);
        }
        switch (db1.c)
        {
        default:
            dj.a(dg1, db1.b);
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_103;
        }
_L3:
        dg1.m();
        if (true) goto _L2; else goto _L1
_L1:
        if (db1.b == 11)
        {
            s = dg1.z();
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L3
        if (db1.b == 8)
        {
            i1 = dg1.w();
        } else
        {
            dj.a(dg1, db1.b);
        }
          goto _L3
    }

    public int a()
    {
        return i;
    }

    public void b(dg dg1)
        throws cn
    {
        dg1.a(j);
        if (getMessage() != null)
        {
            dg1.a(k);
            dg1.a(getMessage());
            dg1.c();
        }
        dg1.a(l);
        dg1.a(i);
        dg1.c();
        dg1.d();
        dg1.b();
    }

}
