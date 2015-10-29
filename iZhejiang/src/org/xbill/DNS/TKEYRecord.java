// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.Date;
import org.xbill.DNS.utils.base64;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Name, DNSInput, 
//            Options, FormattedTime, Rcode, DNSOutput, 
//            Compression

public class TKEYRecord extends Record
{

    public static final int DELETE = 5;
    public static final int DIFFIEHELLMAN = 2;
    public static final int GSSAPI = 3;
    public static final int RESOLVERASSIGNED = 4;
    public static final int SERVERASSIGNED = 1;
    private static final long serialVersionUID = 0x7a84fbe2ffd5b7ccL;
    private Name alg;
    private int error;
    private byte key[];
    private int mode;
    private byte other[];
    private Date timeExpire;
    private Date timeInception;

    TKEYRecord()
    {
    }

    public TKEYRecord(Name name, int i, long l, Name name1, Date date, Date date1, 
            int j, int k, byte abyte0[], byte abyte1[])
    {
        super(name, 249, i, l);
        alg = checkName("alg", name1);
        timeInception = date;
        timeExpire = date1;
        mode = checkU16("mode", j);
        error = checkU16("error", k);
        key = abyte0;
        other = abyte1;
    }

    public Name getAlgorithm()
    {
        return alg;
    }

    public int getError()
    {
        return error;
    }

    public byte[] getKey()
    {
        return key;
    }

    public int getMode()
    {
        return mode;
    }

    Record getObject()
    {
        return new TKEYRecord();
    }

    public byte[] getOther()
    {
        return other;
    }

    public Date getTimeExpire()
    {
        return timeExpire;
    }

    public Date getTimeInception()
    {
        return timeInception;
    }

    protected String modeString()
    {
        switch (mode)
        {
        default:
            return Integer.toString(mode);

        case 1: // '\001'
            return "SERVERASSIGNED";

        case 2: // '\002'
            return "DIFFIEHELLMAN";

        case 3: // '\003'
            return "GSSAPI";

        case 4: // '\004'
            return "RESOLVERASSIGNED";

        case 5: // '\005'
            return "DELETE";
        }
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        throw tokenizer.exception("no text format defined for TKEY");
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        alg = new Name(dnsinput);
        timeInception = new Date(dnsinput.readU32() * 1000L);
        timeExpire = new Date(dnsinput.readU32() * 1000L);
        mode = dnsinput.readU16();
        error = dnsinput.readU16();
        int i = dnsinput.readU16();
        if (i > 0)
        {
            key = dnsinput.readByteArray(i);
        } else
        {
            key = null;
        }
        i = dnsinput.readU16();
        if (i > 0)
        {
            other = dnsinput.readByteArray(i);
            return;
        } else
        {
            other = null;
            return;
        }
    }

    String rrToString()
    {
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer();
        stringbuffer.append(alg);
        stringbuffer.append(" ");
        if (Options.check("multiline"))
        {
            stringbuffer.append("(\n\t");
        }
        stringbuffer.append(FormattedTime.format(timeInception));
        stringbuffer.append(" ");
        stringbuffer.append(FormattedTime.format(timeExpire));
        stringbuffer.append(" ");
        stringbuffer.append(modeString());
        stringbuffer.append(" ");
        stringbuffer.append(Rcode.TSIGstring(error));
        if (!Options.check("multiline")) goto _L2; else goto _L1
_L1:
        stringbuffer.append("\n");
        if (key != null)
        {
            stringbuffer.append(base64.formatString(key, 64, "\t", false));
            stringbuffer.append("\n");
        }
        if (other != null)
        {
            stringbuffer.append(base64.formatString(other, 64, "\t", false));
        }
        stringbuffer.append(" )");
_L4:
        return stringbuffer.toString();
_L2:
        stringbuffer.append(" ");
        if (key != null)
        {
            stringbuffer.append(base64.toString(key));
            stringbuffer.append(" ");
        }
        if (other != null)
        {
            stringbuffer.append(base64.toString(other));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        alg.toWire(dnsoutput, null, flag);
        dnsoutput.writeU32(timeInception.getTime() / 1000L);
        dnsoutput.writeU32(timeExpire.getTime() / 1000L);
        dnsoutput.writeU16(mode);
        dnsoutput.writeU16(error);
        if (key != null)
        {
            dnsoutput.writeU16(key.length);
            dnsoutput.writeByteArray(key);
        } else
        {
            dnsoutput.writeU16(0);
        }
        if (other != null)
        {
            dnsoutput.writeU16(other.length);
            dnsoutput.writeByteArray(other);
            return;
        } else
        {
            dnsoutput.writeU16(0);
            return;
        }
    }
}
