// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.io.OutputStream;

// Referenced classes of package net.youmi.android.a.b.d:
//            e

class d extends OutputStream
{

    private OutputStream a;
    private int b;
    private int c;
    private int d;
    private int e;

    public d(OutputStream outputstream, int i)
    {
        a = null;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        a = outputstream;
        e = i;
    }

    protected void a()
    {
        if (c > 0)
        {
            if (e > 0 && d == e)
            {
                a.write("\r\n".getBytes());
                d = 0;
            }
            char c3 = e.a.charAt((b << 8) >>> 26);
            char c4 = e.a.charAt((b << 14) >>> 26);
            char c1;
            char c2;
            if (c < 2)
            {
                c1 = e.b;
            } else
            {
                c1 = e.a.charAt((b << 20) >>> 26);
            }
            if (c < 3)
            {
                c2 = e.b;
            } else
            {
                c2 = e.a.charAt((b << 26) >>> 26);
            }
            a.write(c3);
            a.write(c4);
            a.write(c1);
            a.write(c2);
            d = d + 4;
            c = 0;
            b = 0;
        }
    }

    public void close()
    {
        a();
        a.close();
    }

    public void write(int i)
    {
        b = (i & 0xff) << 16 - c * 8 | b;
        c = c + 1;
        if (c == 3)
        {
            a();
        }
    }
}
