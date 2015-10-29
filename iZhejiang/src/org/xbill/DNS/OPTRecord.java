// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.xbill.DNS.utils.base16;

// Referenced classes of package org.xbill.DNS:
//            Record, Name, Tokenizer, DNSInput, 
//            DNSOutput, Compression

public class OPTRecord extends Record
{
    public static class Option
    {

        public final int code;
        public final byte data[];

        public String toString()
        {
            return (new StringBuilder("{")).append(code).append(" <").append(base16.toString(data)).append(">}").toString();
        }

        public Option(int i, byte abyte0[])
        {
            code = OPTRecord.checkU8("option code", i);
            data = abyte0;
        }
    }


    private static final long serialVersionUID = 0xa93379797bfc0a7eL;
    private List options;

    OPTRecord()
    {
    }

    public OPTRecord(int i, int j, int k)
    {
        this(i, j, k, 0, null);
    }

    public OPTRecord(int i, int j, int k, int l)
    {
        this(i, j, k, l, null);
    }

    public OPTRecord(int i, int j, int k, int l, List list)
    {
        super(Name.root, 41, i, 0L);
        checkU16("payloadSize", i);
        checkU8("xrcode", j);
        checkU8("version", k);
        checkU16("flags", l);
        ttl = ((long)j << 24) + ((long)k << 16) + (long)l;
        if (list != null)
        {
            options = new ArrayList(list);
        }
    }

    public int getExtendedRcode()
    {
        return (int)(ttl >>> 24);
    }

    public int getFlags()
    {
        return (int)(ttl & 65535L);
    }

    Record getObject()
    {
        return new OPTRecord();
    }

    public List getOptions()
    {
        if (options == null)
        {
            return Collections.EMPTY_LIST;
        } else
        {
            return Collections.unmodifiableList(options);
        }
    }

    public List getOptions(int i)
    {
        if (options != null) goto _L2; else goto _L1
_L1:
        List list = Collections.EMPTY_LIST;
_L4:
        return list;
_L2:
        ArrayList arraylist = null;
        Iterator iterator = options.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    break label0;
                }
                list = arraylist;
                if (arraylist == null)
                {
                    return Collections.EMPTY_LIST;
                }
            }
            if (true)
            {
                continue;
            }
            Option option = (Option)iterator.next();
            if (option.code == i)
            {
                ArrayList arraylist1 = arraylist;
                if (arraylist == null)
                {
                    arraylist1 = new ArrayList();
                }
                arraylist1.add(option.data);
                arraylist = arraylist1;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getPayloadSize()
    {
        return dclass;
    }

    public int getVersion()
    {
        return (int)(ttl >>> 16 & 255L);
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        throw tokenizer.exception("no text format defined for OPT");
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        if (dnsinput.remaining() > 0)
        {
            options = new ArrayList();
        }
        do
        {
            if (dnsinput.remaining() <= 0)
            {
                return;
            }
            int i = dnsinput.readU16();
            byte abyte0[] = dnsinput.readByteArray(dnsinput.readU16());
            options.add(new Option(i, abyte0));
        } while (true);
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (options != null)
        {
            stringbuffer.append(options);
            stringbuffer.append(" ");
        }
        stringbuffer.append(" ; payload ");
        stringbuffer.append(getPayloadSize());
        stringbuffer.append(", xrcode ");
        stringbuffer.append(getExtendedRcode());
        stringbuffer.append(", version ");
        stringbuffer.append(getVersion());
        stringbuffer.append(", flags ");
        stringbuffer.append(getFlags());
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        if (options != null)
        {
            compression = options.iterator();
            while (compression.hasNext()) 
            {
                Option option = (Option)compression.next();
                dnsoutput.writeU16(option.code);
                dnsoutput.writeU16(option.data.length);
                dnsoutput.writeByteArray(option.data);
            }
        }
    }
}
