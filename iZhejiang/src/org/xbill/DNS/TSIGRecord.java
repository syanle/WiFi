// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.util.Date;
import org.xbill.DNS.utils.base64;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Name, DNSInput, 
//            Options, Rcode, DNSOutput, Compression

public class TSIGRecord extends Record
{

    private static final long serialVersionUID = 0xfec471da956f71a6L;
    private Name alg;
    private int error;
    private int fudge;
    private int originalID;
    private byte other[];
    private byte signature[];
    private Date timeSigned;

    TSIGRecord()
    {
    }

    public TSIGRecord(Name name, int i, long l, Name name1, Date date, int j, 
            byte abyte0[], int k, int i1, byte abyte1[])
    {
        super(name, 250, i, l);
        alg = checkName("alg", name1);
        timeSigned = date;
        fudge = checkU16("fudge", j);
        signature = abyte0;
        originalID = checkU16("originalID", k);
        error = checkU16("error", i1);
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

    public int getFudge()
    {
        return fudge;
    }

    Record getObject()
    {
        return new TSIGRecord();
    }

    public int getOriginalID()
    {
        return originalID;
    }

    public byte[] getOther()
    {
        return other;
    }

    public byte[] getSignature()
    {
        return signature;
    }

    public Date getTimeSigned()
    {
        return timeSigned;
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        throw tokenizer.exception("no text format defined for TSIG");
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        alg = new Name(dnsinput);
        timeSigned = new Date(1000L * (((long)dnsinput.readU16() << 32) + dnsinput.readU32()));
        fudge = dnsinput.readU16();
        signature = dnsinput.readByteArray(dnsinput.readU16());
        originalID = dnsinput.readU16();
        error = dnsinput.readU16();
        int i = dnsinput.readU16();
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
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(alg);
        stringbuffer.append(" ");
        if (Options.check("multiline"))
        {
            stringbuffer.append("(\n\t");
        }
        stringbuffer.append(timeSigned.getTime() / 1000L);
        stringbuffer.append(" ");
        stringbuffer.append(fudge);
        stringbuffer.append(" ");
        stringbuffer.append(signature.length);
        if (Options.check("multiline"))
        {
            stringbuffer.append("\n");
            stringbuffer.append(base64.formatString(signature, 64, "\t", false));
        } else
        {
            stringbuffer.append(" ");
            stringbuffer.append(base64.toString(signature));
        }
        stringbuffer.append(" ");
        stringbuffer.append(Rcode.TSIGstring(error));
        stringbuffer.append(" ");
        if (other == null)
        {
            stringbuffer.append(0);
        } else
        {
            stringbuffer.append(other.length);
            if (Options.check("multiline"))
            {
                stringbuffer.append("\n\n\n\t");
            } else
            {
                stringbuffer.append(" ");
            }
            if (error == 18)
            {
                if (other.length != 6)
                {
                    stringbuffer.append("<invalid BADTIME other data>");
                } else
                {
                    long l = other[0] & 0xff;
                    long l1 = other[1] & 0xff;
                    long l2 = (other[2] & 0xff) << 24;
                    long l3 = (other[3] & 0xff) << 16;
                    long l4 = (other[4] & 0xff) << 8;
                    long l5 = other[5] & 0xff;
                    stringbuffer.append("<server time: ");
                    stringbuffer.append(new Date(((l << 40) + (l1 << 32) + l2 + l3 + l4 + l5) * 1000L));
                    stringbuffer.append(">");
                }
            } else
            {
                stringbuffer.append("<");
                stringbuffer.append(base64.toString(other));
                stringbuffer.append(">");
            }
        }
        if (Options.check("multiline"))
        {
            stringbuffer.append(" )");
        }
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        alg.toWire(dnsoutput, null, flag);
        long l = timeSigned.getTime() / 1000L;
        dnsoutput.writeU16((int)(l >> 32));
        dnsoutput.writeU32(l & 0xffffffffL);
        dnsoutput.writeU16(fudge);
        dnsoutput.writeU16(signature.length);
        dnsoutput.writeByteArray(signature);
        dnsoutput.writeU16(originalID);
        dnsoutput.writeU16(error);
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
