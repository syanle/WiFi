// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.xbill.DNS.utils.base16;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, DNSInput, DNSOutput, 
//            Name, Compression

public class NSAPRecord extends Record
{

    private static final long serialVersionUID = 0xf19b178b0d6c851fL;
    private byte address[];

    NSAPRecord()
    {
    }

    public NSAPRecord(Name name, int i, long l, String s)
    {
        super(name, 22, i, l);
        address = checkAndConvertAddress(s);
        if (address == null)
        {
            throw new IllegalArgumentException((new StringBuilder("invalid NSAP address ")).append(s).toString());
        } else
        {
            return;
        }
    }

    private static final byte[] checkAndConvertAddress(String s)
    {
        if (s.substring(0, 2).equalsIgnoreCase("0x")) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        ByteArrayOutputStream bytearrayoutputstream;
        int i;
        boolean flag;
        int j;
        bytearrayoutputstream = new ByteArrayOutputStream();
        flag = false;
        i = 0;
        j = 2;
_L6:
label0:
        {
            if (j < s.length())
            {
                break label0;
            }
            if (!flag)
            {
                return bytearrayoutputstream.toByteArray();
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        char c = s.charAt(j);
        if (c != '.') goto _L5; else goto _L4
_L4:
        j++;
          goto _L6
_L5:
        int k = Character.digit(c, 16);
        if (k == -1) goto _L1; else goto _L7
_L7:
        if (flag)
        {
            i += k;
            bytearrayoutputstream.write(i);
            flag = false;
        } else
        {
            i = k << 4;
            flag = true;
        }
          goto _L4
    }

    public String getAddress()
    {
        return byteArrayToString(address, false);
    }

    Record getObject()
    {
        return new NSAPRecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        name = tokenizer.getString();
        address = checkAndConvertAddress(name);
        if (address == null)
        {
            throw tokenizer.exception((new StringBuilder("invalid NSAP address ")).append(name).toString());
        } else
        {
            return;
        }
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        address = dnsinput.readByteArray();
    }

    String rrToString()
    {
        return (new StringBuilder("0x")).append(base16.toString(address)).toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeByteArray(address);
    }
}
