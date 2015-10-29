// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import java.util.BitSet;

// Referenced classes of package u.aly:
//            da, dr, cn, du, 
//            di, dg

public final class dm extends da
{
    public static class a
        implements di
    {

        public dg a(du du)
        {
            return new dm(du);
        }

        public a()
        {
        }
    }


    public dm(du du)
    {
        super(du);
    }

    public static BitSet a(byte abyte0[])
    {
        BitSet bitset = new BitSet();
        for (int i = 0; i < abyte0.length * 8; i++)
        {
            if ((abyte0[abyte0.length - i / 8 - 1] & 1 << i % 8) > 0)
            {
                bitset.set(i);
            }
        }

        return bitset;
    }

    public static byte[] b(BitSet bitset, int i)
    {
        byte abyte0[] = new byte[(int)Math.ceil((double)i / 8D)];
        for (i = 0; i < bitset.length(); i++)
        {
            if (bitset.get(i))
            {
                int j = abyte0.length - i / 8 - 1;
                abyte0[j] = (byte)(abyte0[j] | 1 << i % 8);
            }
        }

        return abyte0;
    }

    public Class D()
    {
        return u/aly/dr;
    }

    public void a(BitSet bitset, int i)
        throws cn
    {
        bitset = b(bitset, i);
        int j = bitset.length;
        for (i = 0; i < j; i++)
        {
            a(bitset[i]);
        }

    }

    public BitSet b(int i)
        throws cn
    {
        int j = (int)Math.ceil((double)i / 8D);
        byte abyte0[] = new byte[j];
        for (i = 0; i < j; i++)
        {
            abyte0[i] = u();
        }

        return a(abyte0);
    }
}
