// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;


public class ce
{

    public ce()
    {
    }

    public static final byte a(byte byte0, int i, boolean flag)
    {
        return (byte)a(byte0, i, flag);
    }

    public static final int a(int i, int j, boolean flag)
    {
        if (flag)
        {
            return 1 << j | i;
        } else
        {
            return b(i, j);
        }
    }

    public static final int a(byte abyte0[])
    {
        return a(abyte0, 0);
    }

    public static final int a(byte abyte0[], int i)
    {
        return (abyte0[i] & 0xff) << 24 | (abyte0[i + 1] & 0xff) << 16 | (abyte0[i + 2] & 0xff) << 8 | abyte0[i + 3] & 0xff;
    }

    public static final long a(long l, int i, boolean flag)
    {
        if (flag)
        {
            return 1L << i | l;
        } else
        {
            return b(l, i);
        }
    }

    public static final short a(short word0, int i, boolean flag)
    {
        return (short)a(word0, i, flag);
    }

    public static final void a(int i, byte abyte0[])
    {
        a(i, abyte0, 0);
    }

    public static final void a(int i, byte abyte0[], int j)
    {
        abyte0[j] = (byte)(i >> 24 & 0xff);
        abyte0[j + 1] = (byte)(i >> 16 & 0xff);
        abyte0[j + 2] = (byte)(i >> 8 & 0xff);
        abyte0[j + 3] = (byte)(i & 0xff);
    }

    public static final boolean a(byte byte0, int i)
    {
        return a(byte0, i);
    }

    public static final boolean a(int i, int j)
    {
        return (1 << j & i) != 0;
    }

    public static final boolean a(long l, int i)
    {
        return (1L << i & l) != 0L;
    }

    public static final boolean a(short word0, int i)
    {
        return a(word0, i);
    }

    public static final byte b(byte byte0, int i)
    {
        return (byte)b(byte0, i);
    }

    public static final int b(int i, int j)
    {
        return ~(1 << j) & i;
    }

    public static final long b(long l, int i)
    {
        return ~(1L << i) & l;
    }

    public static final short b(short word0, int i)
    {
        return (short)b(word0, i);
    }
}
