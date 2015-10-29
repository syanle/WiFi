// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;


public final class k
{

    private static final int a(int i, int j, int l, int i1, int j1, int ai[])
    {
        return (l >>> 5 ^ j << 2) + (j >>> 3 ^ l << 4) ^ (i ^ j) + (ai[i1 & 3 ^ j1] ^ l);
    }

    public static final byte[] a(byte abyte0[], byte abyte1[])
    {
        if (abyte0.length == 0)
        {
            return abyte0;
        } else
        {
            return a(a(a(abyte0, true), a(abyte1, false)), false);
        }
    }

    private static final byte[] a(int ai[], boolean flag)
    {
        int j = ai.length << 2;
        int i;
        if (flag)
        {
            int i1 = ai[ai.length - 1];
            i = i1;
            if (i1 > j)
            {
                return null;
            }
        } else
        {
            i = j;
        }
        byte abyte0[] = new byte[i];
        for (int l = 0; l < i; l++)
        {
            abyte0[l] = (byte)(ai[l >>> 2] >>> ((l & 3) << 3) & 0xff);
        }

        return abyte0;
    }

    private static final int[] a(byte abyte0[], boolean flag)
    {
        int ai[];
        int i;
        int j;
        if ((abyte0.length & 3) == 0)
        {
            i = abyte0.length >>> 2;
        } else
        {
            i = (abyte0.length >>> 2) + 1;
        }
        if (flag)
        {
            ai = new int[i + 1];
            ai[i] = abyte0.length;
        } else
        {
            ai = new int[i];
        }
        j = abyte0.length;
        for (i = 0; i < j; i++)
        {
            int l = i >>> 2;
            ai[l] = ai[l] | (abyte0[i] & 0xff) << ((i & 3) << 3);
        }

        return ai;
    }

    private static final int[] a(int ai[], int ai1[])
    {
        int j1 = ai.length - 1;
        if (j1 >= 1)
        {
            if (ai1.length < 4)
            {
                int ai2[] = new int[4];
                System.arraycopy(ai1, 0, ai2, 0, ai1.length);
                ai1 = ai2;
            }
            int i = ai[j1];
            int j = ai[0];
            j = 52 / (j1 + 1) + 6;
            int l = 0;
            while (j > 0) 
            {
                int i1 = 0x9e3779b9 + l;
                int k1 = i1 >>> 2 & 3;
                for (l = 0; l < j1; l++)
                {
                    int l1 = ai[l + 1];
                    i = ai[l] + a(i1, l1, i, l, k1, ai1);
                    ai[l] = i;
                }

                int i2 = ai[0];
                i = ai[j1] + a(i1, i2, i, l, k1, ai1);
                ai[j1] = i;
                l = i1;
                j--;
            }
        }
        return ai;
    }
}
