// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


// Referenced classes of package u.aly:
//            cn, dg, db, dd, 
//            dk, dc, di

public class dj
{

    private static int a = 0x7fffffff;

    public dj()
    {
    }

    public static di a(byte abyte0[], di di)
    {
        Object obj;
        if (abyte0[0] > 16)
        {
            obj = new da.a();
        } else
        {
            obj = di;
            if (abyte0.length > 1)
            {
                obj = di;
                if ((abyte0[1] & 0x80) != 0)
                {
                    return new da.a();
                }
            }
        }
        return ((di) (obj));
    }

    public static void a(int i)
    {
        a = i;
    }

    public static void a(dg dg1, byte byte0)
        throws cn
    {
        a(dg1, byte0, a);
    }

    public static void a(dg dg1, byte byte0, int i)
        throws cn
    {
        boolean flag1 = false;
        boolean flag2 = false;
        boolean flag = false;
        if (i <= 0)
        {
            throw new cn("Maximum skip depth exceeded");
        }
        dc dc1;
        switch (byte0)
        {
        case 5: // '\005'
        case 7: // '\007'
        case 9: // '\t'
        default:
            return;

        case 2: // '\002'
            dg1.t();
            return;

        case 3: // '\003'
            dg1.u();
            return;

        case 6: // '\006'
            dg1.v();
            return;

        case 8: // '\b'
            dg1.w();
            return;

        case 10: // '\n'
            dg1.x();
            return;

        case 4: // '\004'
            dg1.y();
            return;

        case 11: // '\013'
            dg1.A();
            return;

        case 12: // '\f'
            dg1.j();
            do
            {
                db db1 = dg1.l();
                if (db1.b == 0)
                {
                    dg1.k();
                    return;
                }
                a(dg1, db1.b, i - 1);
                dg1.m();
            } while (true);

        case 13: // '\r'
            dd dd1 = dg1.n();
            for (byte0 = flag; byte0 < dd1.c; byte0++)
            {
                a(dg1, dd1.a, i - 1);
                a(dg1, dd1.b, i - 1);
            }

            dg1.o();
            return;

        case 14: // '\016'
            dk dk1 = dg1.r();
            for (byte0 = flag1; byte0 < dk1.b; byte0++)
            {
                a(dg1, dk1.a, i - 1);
            }

            dg1.s();
            return;

        case 15: // '\017'
            dc1 = dg1.p();
            byte0 = flag2;
            break;
        }
        for (; byte0 < dc1.b; byte0++)
        {
            a(dg1, dc1.a, i - 1);
        }

        dg1.q();
    }

}
