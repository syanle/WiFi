// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;


public class f
{

    private byte a[];
    private int b;
    private int c;

    public f()
    {
        this(32);
    }

    public f(int i)
    {
        a = new byte[i];
        b = 0;
        c = -1;
    }

    private void a(long l, int i)
    {
        if (l < 0L || l > 1L << i)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(l).append(" out of range for ").append(i).append(" bit value").toString());
        } else
        {
            return;
        }
    }

    private void c(int i)
    {
        if (a.length - b >= i)
        {
            return;
        }
        int k = a.length * 2;
        int j = k;
        if (k < b + i)
        {
            j = b + i;
        }
        byte abyte0[] = new byte[j];
        System.arraycopy(a, 0, abyte0, 0, b);
        a = abyte0;
    }

    public int a()
    {
        return b;
    }

    public void a(int i)
    {
        a(i, 8);
        c(1);
        byte abyte0[] = a;
        int j = b;
        b = j + 1;
        abyte0[j] = (byte)(i & 0xff);
    }

    public void a(byte abyte0[], int i, int j)
    {
        c(j);
        System.arraycopy(abyte0, i, a, b, j);
        b = b + j;
    }

    public void b(int i)
    {
        a(i, 16);
        c(2);
        byte abyte0[] = a;
        int j = b;
        b = j + 1;
        abyte0[j] = (byte)(i >>> 8 & 0xff);
        abyte0 = a;
        j = b;
        b = j + 1;
        abyte0[j] = (byte)(i & 0xff);
    }

    public byte[] b()
    {
        byte abyte0[] = new byte[b];
        System.arraycopy(a, 0, abyte0, 0, b);
        return abyte0;
    }
}
