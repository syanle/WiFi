// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            WireParseException

public class DNSInput
{

    private byte array[];
    private int end;
    private int pos;
    private int saved_end;
    private int saved_pos;

    public DNSInput(byte abyte0[])
    {
        array = abyte0;
        pos = 0;
        end = array.length;
        saved_pos = -1;
        saved_end = -1;
    }

    private void require(int i)
        throws WireParseException
    {
        if (i > remaining())
        {
            throw new WireParseException("end of input");
        } else
        {
            return;
        }
    }

    public void clearActive()
    {
        end = array.length;
    }

    public int current()
    {
        return pos;
    }

    public void jump(int i)
    {
        if (i >= array.length)
        {
            throw new IllegalArgumentException("cannot jump past end of input");
        } else
        {
            pos = i;
            end = array.length;
            return;
        }
    }

    public void readByteArray(byte abyte0[], int i, int j)
        throws WireParseException
    {
        require(j);
        System.arraycopy(array, pos, abyte0, i, j);
        pos = pos + j;
    }

    public byte[] readByteArray()
    {
        int i = remaining();
        byte abyte0[] = new byte[i];
        System.arraycopy(array, pos, abyte0, 0, i);
        pos = pos + i;
        return abyte0;
    }

    public byte[] readByteArray(int i)
        throws WireParseException
    {
        require(i);
        byte abyte0[] = new byte[i];
        System.arraycopy(array, pos, abyte0, 0, i);
        pos = pos + i;
        return abyte0;
    }

    public byte[] readCountedString()
        throws WireParseException
    {
        require(1);
        byte abyte0[] = array;
        int i = pos;
        pos = i + 1;
        return readByteArray(abyte0[i] & 0xff);
    }

    public int readU16()
        throws WireParseException
    {
        require(2);
        byte abyte0[] = array;
        int i = pos;
        pos = i + 1;
        i = abyte0[i];
        abyte0 = array;
        int j = pos;
        pos = j + 1;
        return ((i & 0xff) << 8) + (abyte0[j] & 0xff);
    }

    public long readU32()
        throws WireParseException
    {
        require(4);
        byte abyte0[] = array;
        int i = pos;
        pos = i + 1;
        i = abyte0[i];
        abyte0 = array;
        int j = pos;
        pos = j + 1;
        j = abyte0[j];
        abyte0 = array;
        int k = pos;
        pos = k + 1;
        k = abyte0[k];
        abyte0 = array;
        int l = pos;
        pos = l + 1;
        l = abyte0[l];
        return ((long)(i & 0xff) << 24) + (long)((j & 0xff) << 16) + (long)((k & 0xff) << 8) + (long)(l & 0xff);
    }

    public int readU8()
        throws WireParseException
    {
        require(1);
        byte abyte0[] = array;
        int i = pos;
        pos = i + 1;
        return abyte0[i] & 0xff;
    }

    public int remaining()
    {
        return end - pos;
    }

    public void restore()
    {
        if (saved_pos < 0)
        {
            throw new IllegalStateException("no previous state");
        } else
        {
            pos = saved_pos;
            end = saved_end;
            saved_pos = -1;
            saved_end = -1;
            return;
        }
    }

    public void save()
    {
        saved_pos = pos;
        saved_end = end;
    }

    public void setActive(int i)
    {
        if (i > array.length - pos)
        {
            throw new IllegalArgumentException("cannot set active region past end of input");
        } else
        {
            end = pos + i;
            return;
        }
    }
}
