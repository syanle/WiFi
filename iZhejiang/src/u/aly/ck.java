// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

// Referenced classes of package u.aly:
//            dt, di, cn, dg, 
//            db, co, dj, ch

public class ck
{

    private final dg a;
    private final dt b;

    public ck()
    {
        this(((di) (new da.a())));
    }

    public ck(di di1)
    {
        b = new dt();
        a = di1.a(b);
    }

    private transient Object a(byte byte0, byte abyte0[], co co1, co aco[])
        throws cn
    {
        abyte0 = j(abyte0, co1, aco);
        if (abyte0 == null) goto _L2; else goto _L1
_L1:
        byte0;
        JVM INSTR lookupswitch 8: default 88
    //                   2: 104
    //                   3: 141
    //                   4: 178
    //                   6: 215
    //                   8: 253
    //                   10: 289
    //                   11: 327
    //                   100: 360;
           goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L2:
        b.e();
        a.B();
        return null;
_L3:
        if (((db) (abyte0)).b != 2) goto _L2; else goto _L11
_L11:
        boolean flag = a.t();
        b.e();
        a.B();
        return Boolean.valueOf(flag);
_L4:
        if (((db) (abyte0)).b != 3) goto _L2; else goto _L12
_L12:
        byte byte1 = a.u();
        b.e();
        a.B();
        return Byte.valueOf(byte1);
_L5:
        if (((db) (abyte0)).b != 4) goto _L2; else goto _L13
_L13:
        double d1 = a.y();
        b.e();
        a.B();
        return Double.valueOf(d1);
_L6:
        if (((db) (abyte0)).b != 6) goto _L2; else goto _L14
_L14:
        short word0 = a.v();
        b.e();
        a.B();
        return Short.valueOf(word0);
_L7:
        if (((db) (abyte0)).b != 8) goto _L2; else goto _L15
_L15:
        byte0 = a.w();
        b.e();
        a.B();
        return Integer.valueOf(byte0);
_L8:
        if (((db) (abyte0)).b != 10) goto _L2; else goto _L16
_L16:
        long l = a.x();
        b.e();
        a.B();
        return Long.valueOf(l);
_L9:
        if (((db) (abyte0)).b != 11) goto _L2; else goto _L17
_L17:
        abyte0 = a.z();
        b.e();
        a.B();
        return abyte0;
_L10:
        if (((db) (abyte0)).b != 11) goto _L2; else goto _L18
_L18:
        abyte0 = a.A();
        b.e();
        a.B();
        return abyte0;
        abyte0;
        throw new cn(abyte0);
        abyte0;
        b.e();
        a.B();
        throw abyte0;
    }

    private transient db j(byte abyte0[], co co1, co aco[])
        throws cn
    {
        boolean flag = false;
        b.a(abyte0);
        co aco1[] = new co[aco.length + 1];
        aco1[0] = co1;
        for (int k = 0; k < aco.length; k++)
        {
            aco1[k + 1] = aco[k];
        }

        a.j();
        abyte0 = null;
        int l = ((flag) ? 1 : 0);
        do
        {
            if (l >= aco1.length)
            {
                break;
            }
            co1 = a.l();
            if (((db) (co1)).b == 0 || ((db) (co1)).c > aco1[l].a())
            {
                return null;
            }
            if (((db) (co1)).c != aco1[l].a())
            {
                dj.a(a, ((db) (co1)).b);
                a.m();
                abyte0 = co1;
            } else
            {
                int i1 = l + 1;
                abyte0 = co1;
                l = i1;
                if (i1 < aco1.length)
                {
                    a.j();
                    abyte0 = co1;
                    l = i1;
                }
            }
        } while (true);
        return abyte0;
    }

    public transient Boolean a(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (Boolean)a((byte)2, abyte0, co1, aco);
    }

    public void a(ch ch1, String s)
        throws cn
    {
        a(ch1, s.getBytes());
    }

    public void a(ch ch1, String s, String s1)
        throws cn
    {
        a(ch1, s.getBytes(s1));
        a.B();
        return;
        ch1;
        throw new cn((new StringBuilder()).append("JVM DOES NOT SUPPORT ENCODING: ").append(s1).toString());
        ch1;
        a.B();
        throw ch1;
    }

    public void a(ch ch1, byte abyte0[])
        throws cn
    {
        b.a(abyte0);
        ch1.a(a);
        b.e();
        a.B();
        return;
        ch1;
        b.e();
        a.B();
        throw ch1;
    }

    public transient void a(ch ch1, byte abyte0[], co co1, co aco[])
        throws cn
    {
        if (j(abyte0, co1, aco) != null)
        {
            ch1.a(a);
        }
        b.e();
        a.B();
        return;
        ch1;
        throw new cn(ch1);
        ch1;
        b.e();
        a.B();
        throw ch1;
    }

    public transient Byte b(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (Byte)a((byte)3, abyte0, co1, aco);
    }

    public transient Double c(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (Double)a((byte)4, abyte0, co1, aco);
    }

    public transient Short d(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (Short)a((byte)6, abyte0, co1, aco);
    }

    public transient Integer e(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (Integer)a((byte)8, abyte0, co1, aco);
    }

    public transient Long f(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (Long)a((byte)10, abyte0, co1, aco);
    }

    public transient String g(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (String)a((byte)11, abyte0, co1, aco);
    }

    public transient ByteBuffer h(byte abyte0[], co co1, co aco[])
        throws cn
    {
        return (ByteBuffer)a((byte)100, abyte0, co1, aco);
    }

    public transient Short i(byte abyte0[], co co1, co aco[])
        throws cn
    {
        short word0;
        if (j(abyte0, co1, aco) == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        a.j();
        word0 = a.l().c;
        b.e();
        a.B();
        return Short.valueOf(word0);
        b.e();
        a.B();
        return null;
        abyte0;
        throw new cn(abyte0);
        abyte0;
        b.e();
        a.B();
        throw abyte0;
    }
}
