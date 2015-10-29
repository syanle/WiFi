// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, TypeBitmap, Type, Tokenizer, 
//            Name, DNSInput, DNSOutput, Compression

public class NSECRecord extends Record
{

    private static final long serialVersionUID = 0xb852000c882d3757L;
    private Name next;
    private TypeBitmap types;

    NSECRecord()
    {
    }

    public NSECRecord(Name name, int i, long l, Name name1, int ai[])
    {
        super(name, 47, i, l);
        next = checkName("next", name1);
        i = 0;
        do
        {
            if (i >= ai.length)
            {
                types = new TypeBitmap(ai);
                return;
            }
            Type.check(ai[i]);
            i++;
        } while (true);
    }

    public Name getNext()
    {
        return next;
    }

    Record getObject()
    {
        return new NSECRecord();
    }

    public int[] getTypes()
    {
        return types.toArray();
    }

    public boolean hasType(int i)
    {
        return types.contains(i);
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        next = tokenizer.getName(name);
        types = new TypeBitmap(tokenizer);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        next = new Name(dnsinput);
        types = new TypeBitmap(dnsinput);
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(next);
        if (!types.empty())
        {
            stringbuffer.append(' ');
            stringbuffer.append(types.toString());
        }
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        next.toWire(dnsoutput, null, false);
        types.toWire(dnsoutput);
    }
}
