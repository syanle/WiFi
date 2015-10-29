// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.io.IOException;

public class e
{

    private byte a[];
    private int b;
    private int c;
    private int d;
    private int e;

    public e(byte abyte0[])
    {
        a = abyte0;
        b = 0;
        c = a.length;
        d = -1;
        e = -1;
    }

    private void c(int i)
    {
        if (i > b())
        {
            throw new IOException("end of input");
        } else
        {
            return;
        }
    }

    public int a()
    {
        return b;
    }

    public void a(int i)
    {
        if (i >= a.length)
        {
            throw new IllegalArgumentException("cannot jump past end of input");
        } else
        {
            b = i;
            c = a.length;
            return;
        }
    }

    public void a(byte abyte0[], int i, int j)
    {
        c(j);
        System.arraycopy(a, b, abyte0, i, j);
        b = b + j;
    }

    public int b()
    {
        return c - b;
    }

    public byte[] b(int i)
    {
        c(i);
        byte abyte0[] = new byte[i];
        System.arraycopy(a, b, abyte0, 0, i);
        b = b + i;
        return abyte0;
    }

    public void c()
    {
        d = b;
        e = c;
    }

    public void d()
    {
        if (d < 0)
        {
            throw new IllegalStateException("no previous state");
        } else
        {
            b = d;
            c = e;
            d = -1;
            e = -1;
            return;
        }
    }

    public int e()
    {
        c(1);
        byte abyte0[] = a;
        int i = b;
        b = i + 1;
        return abyte0[i] & 0xff;
    }

    public int f()
    {
        c(2);
        byte abyte0[] = a;
        int i = b;
        b = i + 1;
        i = abyte0[i];
        abyte0 = a;
        int j = b;
        b = j + 1;
        return ((i & 0xff) << 8) + (abyte0[j] & 0xff);
    }

    public long g()
    {
        c(4);
        byte abyte0[] = a;
        int i = b;
        b = i + 1;
        i = abyte0[i];
        abyte0 = a;
        int j = b;
        b = j + 1;
        j = abyte0[j];
        abyte0 = a;
        int k = b;
        b = k + 1;
        k = abyte0[k];
        abyte0 = a;
        int l = b;
        b = l + 1;
        l = abyte0[l];
        long l1 = i & 0xff;
        return (long)((j & 0xff) << 16) + (l1 << 24) + (long)((k & 0xff) << 8) + (long)(l & 0xff);
    }
}
