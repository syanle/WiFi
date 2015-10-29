// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.TreeSet;

// Referenced classes of package org.xbill.DNS:
//            WireParseException, DNSInput, Mnemonic, Tokenizer, 
//            Type, DNSOutput

final class TypeBitmap
    implements Serializable
{

    private static final long serialVersionUID = 0xfe42a7260d8740b5L;
    private TreeSet types;

    private TypeBitmap()
    {
        types = new TreeSet();
    }

    public TypeBitmap(DNSInput dnsinput)
        throws WireParseException
    {
        this();
        do
        {
            if (dnsinput.remaining() <= 0)
            {
                return;
            }
            if (dnsinput.remaining() < 2)
            {
                throw new WireParseException("invalid bitmap descriptor");
            }
            int k = dnsinput.readU8();
            if (k < -1)
            {
                throw new WireParseException("invalid ordering");
            }
            int l = dnsinput.readU8();
            if (l > dnsinput.remaining())
            {
                throw new WireParseException("invalid bitmap");
            }
            int i = 0;
            while (i < l) 
            {
                int i1 = dnsinput.readU8();
                if (i1 != 0)
                {
                    int j = 0;
                    while (j < 8) 
                    {
                        if ((1 << 7 - j & i1) != 0)
                        {
                            types.add(Mnemonic.toInteger(k * 256 + i * 8 + j));
                        }
                        j++;
                    }
                }
                i++;
            }
        } while (true);
    }

    public TypeBitmap(Tokenizer tokenizer)
        throws IOException
    {
        this();
        do
        {
            Tokenizer.Token token = tokenizer.get();
            if (!token.isString())
            {
                tokenizer.unget();
                return;
            }
            int i = Type.value(token.value);
            if (i < 0)
            {
                throw tokenizer.exception((new StringBuilder("Invalid type: ")).append(token.value).toString());
            }
            types.add(Mnemonic.toInteger(i));
        } while (true);
    }

    public TypeBitmap(int ai[])
    {
        this();
        int i = 0;
        do
        {
            if (i >= ai.length)
            {
                return;
            }
            Type.check(ai[i]);
            types.add(new Integer(ai[i]));
            i++;
        } while (true);
    }

    private static void mapToWire(DNSOutput dnsoutput, TreeSet treeset, int i)
    {
        int ai[];
        int j;
        j = (((Integer)treeset.last()).intValue() & 0xff) / 8 + 1;
        ai = new int[j];
        dnsoutput.writeU8(i);
        dnsoutput.writeU8(j);
        treeset = treeset.iterator();
_L3:
        if (treeset.hasNext()) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= j)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_104;
_L2:
        i = ((Integer)treeset.next()).intValue();
        int k = (i & 0xff) / 8;
        ai[k] = ai[k] | 1 << 7 - i % 8;
          goto _L3
        dnsoutput.writeU8(ai[i]);
        i++;
          goto _L4
    }

    public boolean contains(int i)
    {
        return types.contains(Mnemonic.toInteger(i));
    }

    public boolean empty()
    {
        return types.isEmpty();
    }

    public int[] toArray()
    {
        int ai[] = new int[types.size()];
        int i = 0;
        Iterator iterator = types.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return ai;
            }
            ai[i] = ((Integer)iterator.next()).intValue();
            i++;
        } while (true);
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Iterator iterator = types.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return stringbuffer.substring(0, stringbuffer.length() - 1);
            }
            stringbuffer.append(Type.string(((Integer)iterator.next()).intValue()));
            stringbuffer.append(' ');
        } while (true);
    }

    public void toWire(DNSOutput dnsoutput)
    {
        if (types.size() == 0)
        {
            return;
        }
        int i = -1;
        TreeSet treeset = new TreeSet();
        Iterator iterator = types.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                mapToWire(dnsoutput, treeset, i);
                return;
            }
            int l = ((Integer)iterator.next()).intValue();
            int k = l >> 8;
            int j = i;
            if (k != i)
            {
                if (treeset.size() > 0)
                {
                    mapToWire(dnsoutput, treeset, i);
                    treeset.clear();
                }
                j = k;
            }
            treeset.add(new Integer(l));
            i = j;
        } while (true);
    }
}
