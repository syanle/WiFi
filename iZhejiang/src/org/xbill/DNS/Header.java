// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.Random;

// Referenced classes of package org.xbill.DNS:
//            DNSInput, Flags, Opcode, Rcode, 
//            Section, DNSOutput

public class Header
    implements Cloneable
{

    public static final int LENGTH = 12;
    private static Random random = new Random();
    private int counts[];
    private int flags;
    private int id;

    public Header()
    {
        init();
    }

    public Header(int i)
    {
        init();
        setID(i);
    }

    Header(DNSInput dnsinput)
        throws IOException
    {
        this(dnsinput.readU16());
        flags = dnsinput.readU16();
        int i = 0;
        do
        {
            if (i >= counts.length)
            {
                return;
            }
            counts[i] = dnsinput.readU16();
            i++;
        } while (true);
    }

    public Header(byte abyte0[])
        throws IOException
    {
        this(new DNSInput(abyte0));
    }

    private static void checkFlag(int i)
    {
        if (!validFlag(i))
        {
            throw new IllegalArgumentException((new StringBuilder("invalid flag bit ")).append(i).toString());
        } else
        {
            return;
        }
    }

    private void init()
    {
        counts = new int[4];
        flags = 0;
        id = -1;
    }

    private static boolean validFlag(int i)
    {
        return i >= 0 && i <= 15 && Flags.isFlag(i);
    }

    public Object clone()
    {
        Header header = new Header();
        header.id = id;
        header.flags = flags;
        System.arraycopy(counts, 0, header.counts, 0, counts.length);
        return header;
    }

    void decCount(int i)
    {
        if (counts[i] == 0)
        {
            throw new IllegalStateException("DNS section count cannot be decremented");
        } else
        {
            int ai[] = counts;
            ai[i] = ai[i] - 1;
            return;
        }
    }

    public int getCount(int i)
    {
        return counts[i];
    }

    public boolean getFlag(int i)
    {
        checkFlag(i);
        return (flags & 1 << 15 - i) != 0;
    }

    boolean[] getFlags()
    {
        boolean aflag[] = new boolean[16];
        int i = 0;
        do
        {
            if (i >= aflag.length)
            {
                return aflag;
            }
            if (validFlag(i))
            {
                aflag[i] = getFlag(i);
            }
            i++;
        } while (true);
    }

    public int getID()
    {
        if (id >= 0)
        {
            return id;
        }
        this;
        JVM INSTR monitorenter ;
        int i;
        if (id < 0)
        {
            id = random.nextInt(65535);
        }
        i = id;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int getOpcode()
    {
        return flags >> 11 & 0xf;
    }

    public int getRcode()
    {
        return flags & 0xf;
    }

    void incCount(int i)
    {
        if (counts[i] == 65535)
        {
            throw new IllegalStateException("DNS section count cannot be incremented");
        } else
        {
            int ai[] = counts;
            ai[i] = ai[i] + 1;
            return;
        }
    }

    public String printFlags()
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= 16)
            {
                return stringbuffer.toString();
            }
            if (validFlag(i) && getFlag(i))
            {
                stringbuffer.append(Flags.string(i));
                stringbuffer.append(" ");
            }
            i++;
        } while (true);
    }

    void setCount(int i, int j)
    {
        if (j < 0 || j > 65535)
        {
            throw new IllegalArgumentException((new StringBuilder("DNS section count ")).append(j).append(" is out of range").toString());
        } else
        {
            counts[i] = j;
            return;
        }
    }

    public void setFlag(int i)
    {
        checkFlag(i);
        flags = flags | 1 << 15 - i;
    }

    public void setID(int i)
    {
        if (i < 0 || i > 65535)
        {
            throw new IllegalArgumentException((new StringBuilder("DNS message ID ")).append(i).append(" is out of range").toString());
        } else
        {
            id = i;
            return;
        }
    }

    public void setOpcode(int i)
    {
        if (i < 0 || i > 15)
        {
            throw new IllegalArgumentException((new StringBuilder("DNS Opcode ")).append(i).append("is out of range").toString());
        } else
        {
            flags = flags & 0x87ff;
            flags = flags | i << 11;
            return;
        }
    }

    public void setRcode(int i)
    {
        if (i < 0 || i > 15)
        {
            throw new IllegalArgumentException((new StringBuilder("DNS Rcode ")).append(i).append(" is out of range").toString());
        } else
        {
            flags = flags & 0xfffffff0;
            flags = flags | i;
            return;
        }
    }

    public String toString()
    {
        return toStringWithRcode(getRcode());
    }

    String toStringWithRcode(int i)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(";; ->>HEADER<<- ");
        stringbuffer.append((new StringBuilder("opcode: ")).append(Opcode.string(getOpcode())).toString());
        stringbuffer.append((new StringBuilder(", status: ")).append(Rcode.string(i)).toString());
        stringbuffer.append((new StringBuilder(", id: ")).append(getID()).toString());
        stringbuffer.append("\n");
        stringbuffer.append((new StringBuilder(";; flags: ")).append(printFlags()).toString());
        stringbuffer.append("; ");
        i = 0;
        do
        {
            if (i >= 4)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append((new StringBuilder(String.valueOf(Section.string(i)))).append(": ").append(getCount(i)).append(" ").toString());
            i++;
        } while (true);
    }

    void toWire(DNSOutput dnsoutput)
    {
        dnsoutput.writeU16(getID());
        dnsoutput.writeU16(flags);
        int i = 0;
        do
        {
            if (i >= counts.length)
            {
                return;
            }
            dnsoutput.writeU16(counts[i]);
            i++;
        } while (true);
    }

    public byte[] toWire()
    {
        DNSOutput dnsoutput = new DNSOutput();
        toWire(dnsoutput);
        return dnsoutput.toByteArray();
    }

    public void unsetFlag(int i)
    {
        checkFlag(i);
        flags = flags & ~(1 << 15 - i);
    }

}
