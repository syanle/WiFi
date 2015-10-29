// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.BitSet;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Type, Name, 
//            DNSInput, DNSOutput, Compression

public class NXTRecord extends Record
{

    private static final long serialVersionUID = 0x8529511e98cdc840L;
    private BitSet bitmap;
    private Name next;

    NXTRecord()
    {
    }

    public NXTRecord(Name name, int i, long l, Name name1, BitSet bitset)
    {
        super(name, 30, i, l);
        next = checkName("next", name1);
        bitmap = bitset;
    }

    public BitSet getBitmap()
    {
        return bitmap;
    }

    public Name getNext()
    {
        return next;
    }

    Record getObject()
    {
        return new NXTRecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        next = tokenizer.getName(name);
        bitmap = new BitSet();
        do
        {
            name = tokenizer.get();
            if (!name.isString())
            {
                tokenizer.unget();
                return;
            }
            int i = Type.value(((Tokenizer.Token) (name)).value, true);
            if (i <= 0 || i > 128)
            {
                throw tokenizer.exception((new StringBuilder("Invalid type: ")).append(((Tokenizer.Token) (name)).value).toString());
            }
            bitmap.set(i);
        } while (true);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        int i;
        int k;
        next = new Name(dnsinput);
        bitmap = new BitSet();
        k = dnsinput.remaining();
        i = 0;
_L2:
        if (i >= k)
        {
            return;
        }
        int l = dnsinput.readU8();
        int j = 0;
        do
        {
label0:
            {
                if (j < 8)
                {
                    break label0;
                }
                i++;
            }
            if (true)
            {
                continue;
            }
            if ((1 << 7 - j & l) != 0)
            {
                bitmap.set(i * 8 + j);
            }
            j++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(next);
        int i = bitmap.length();
        short word0 = 0;
        do
        {
            if (word0 >= i)
            {
                return stringbuffer.toString();
            }
            if (bitmap.get(word0))
            {
                stringbuffer.append(" ");
                stringbuffer.append(Type.string(word0));
            }
            word0++;
        } while (true);
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        next.toWire(dnsoutput, null, flag);
        int l = bitmap.length();
        int j = 0;
        int i = 0;
        do
        {
label0:
            {
                if (j >= l)
                {
                    return;
                }
                int k;
                if (bitmap.get(j))
                {
                    k = 1 << 7 - j % 8;
                } else
                {
                    k = 0;
                }
                k = i | k;
                if (j % 8 != 7)
                {
                    i = k;
                    if (j != l - 1)
                    {
                        break label0;
                    }
                }
                dnsoutput.writeU8(k);
                i = 0;
            }
            j++;
        } while (true);
    }
}
