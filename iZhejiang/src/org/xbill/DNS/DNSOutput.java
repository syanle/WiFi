// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


public class DNSOutput
{

    private byte array[];
    private int pos;
    private int saved_pos;

    public DNSOutput()
    {
        this(32);
    }

    public DNSOutput(int i)
    {
        array = new byte[i];
        pos = 0;
        saved_pos = -1;
    }

    private void check(long l, int i)
    {
        if (l < 0L || l > 1L << i)
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(l))).append(" out of range for ").append(i).append(" bit value").toString());
        } else
        {
            return;
        }
    }

    private void need(int i)
    {
        if (array.length - pos >= i)
        {
            return;
        }
        int k = array.length * 2;
        int j = k;
        if (k < pos + i)
        {
            j = pos + i;
        }
        byte abyte0[] = new byte[j];
        System.arraycopy(array, 0, abyte0, 0, pos);
        array = abyte0;
    }

    public int current()
    {
        return pos;
    }

    public void jump(int i)
    {
        if (i > pos)
        {
            throw new IllegalArgumentException("cannot jump past end of data");
        } else
        {
            pos = i;
            return;
        }
    }

    public void restore()
    {
        if (saved_pos < 0)
        {
            throw new IllegalStateException("no previous state");
        } else
        {
            pos = saved_pos;
            saved_pos = -1;
            return;
        }
    }

    public void save()
    {
        saved_pos = pos;
    }

    public byte[] toByteArray()
    {
        byte abyte0[] = new byte[pos];
        System.arraycopy(array, 0, abyte0, 0, pos);
        return abyte0;
    }

    public void writeByteArray(byte abyte0[])
    {
        writeByteArray(abyte0, 0, abyte0.length);
    }

    public void writeByteArray(byte abyte0[], int i, int j)
    {
        need(j);
        System.arraycopy(abyte0, i, array, pos, j);
        pos = pos + j;
    }

    public void writeCountedString(byte abyte0[])
    {
        if (abyte0.length > 255)
        {
            throw new IllegalArgumentException("Invalid counted string");
        } else
        {
            need(abyte0.length + 1);
            byte abyte1[] = array;
            int i = pos;
            pos = i + 1;
            abyte1[i] = (byte)(abyte0.length & 0xff);
            writeByteArray(abyte0, 0, abyte0.length);
            return;
        }
    }

    public void writeU16(int i)
    {
        check(i, 16);
        need(2);
        byte abyte0[] = array;
        int j = pos;
        pos = j + 1;
        abyte0[j] = (byte)(i >>> 8 & 0xff);
        abyte0 = array;
        j = pos;
        pos = j + 1;
        abyte0[j] = (byte)(i & 0xff);
    }

    public void writeU32(long l)
    {
        check(l, 32);
        need(4);
        byte abyte0[] = array;
        int i = pos;
        pos = i + 1;
        abyte0[i] = (byte)(int)(l >>> 24 & 255L);
        abyte0 = array;
        i = pos;
        pos = i + 1;
        abyte0[i] = (byte)(int)(l >>> 16 & 255L);
        abyte0 = array;
        i = pos;
        pos = i + 1;
        abyte0[i] = (byte)(int)(l >>> 8 & 255L);
        abyte0 = array;
        i = pos;
        pos = i + 1;
        abyte0[i] = (byte)(int)(l & 255L);
    }

    public void writeU8(int i)
    {
        check(i, 8);
        need(1);
        byte abyte0[] = array;
        int j = pos;
        pos = j + 1;
        abyte0[j] = (byte)(i & 0xff);
    }
}
