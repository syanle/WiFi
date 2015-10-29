// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            Record, TextParseException, Tokenizer, DNSInput, 
//            DNSOutput, Name, Compression

abstract class TXTBase extends Record
{

    private static final long serialVersionUID = 0xc40e041454043d75L;
    protected List strings;

    protected TXTBase()
    {
    }

    protected TXTBase(Name name, int i, int j, long l)
    {
        super(name, i, j, l);
    }

    protected TXTBase(Name name, int i, int j, long l, String s)
    {
        this(name, i, j, l, Collections.singletonList(s));
    }

    protected TXTBase(Name name, int i, int j, long l, List list)
    {
        super(name, i, j, l);
        if (list == null)
        {
            throw new IllegalArgumentException("strings must not be null");
        }
        strings = new ArrayList(list.size());
        name = list.iterator();
_L1:
        try
        {
            if (!name.hasNext())
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Name name)
        {
            throw new IllegalArgumentException(name.getMessage());
        }
        list = (String)name.next();
        strings.add(byteArrayFromString(list));
          goto _L1
    }

    public List getStrings()
    {
        ArrayList arraylist = new ArrayList(strings.size());
        int i = 0;
        do
        {
            if (i >= strings.size())
            {
                return arraylist;
            }
            arraylist.add(byteArrayToString((byte[])strings.get(i), false));
            i++;
        } while (true);
    }

    public List getStringsAsByteArrays()
    {
        return strings;
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        strings = new ArrayList(2);
        do
        {
            name = tokenizer.get();
            if (!name.isString())
            {
                tokenizer.unget();
                return;
            }
            try
            {
                strings.add(byteArrayFromString(((Tokenizer.Token) (name)).value));
            }
            // Misplaced declaration of an exception variable
            catch (Name name)
            {
                throw tokenizer.exception(name.getMessage());
            }
        } while (true);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        strings = new ArrayList(2);
        do
        {
            if (dnsinput.remaining() <= 0)
            {
                return;
            }
            byte abyte0[] = dnsinput.readCountedString();
            strings.add(abyte0);
        } while (true);
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        Iterator iterator = strings.iterator();
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    return stringbuffer.toString();
                }
                stringbuffer.append(byteArrayToString((byte[])iterator.next(), true));
            } while (!iterator.hasNext());
            stringbuffer.append(" ");
        } while (true);
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        compression = strings.iterator();
        do
        {
            if (!compression.hasNext())
            {
                return;
            }
            dnsoutput.writeCountedString((byte[])compression.next());
        } while (true);
    }
}
