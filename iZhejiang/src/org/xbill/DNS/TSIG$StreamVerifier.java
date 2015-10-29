// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.PrintStream;
import java.util.Date;
import org.xbill.DNS.utils.HMAC;

// Referenced classes of package org.xbill.DNS:
//            TSIG, Message, TSIGRecord, DNSOutput, 
//            Header, Name, Options

public static class lastTSIG
{

    private TSIG key;
    private TSIGRecord lastTSIG;
    private int lastsigned;
    private int nresponses;
    private HMAC verifier;

    public int verify(Message message, byte abyte0[])
    {
        TSIGRecord tsigrecord = message.getTSIG();
        nresponses = nresponses + 1;
        if (nresponses == 1)
        {
            int i = key.verify(message, abyte0, lastTSIG);
            if (i == 0)
            {
                message = tsigrecord.getSignature();
                abyte0 = new DNSOutput();
                abyte0.writeU16(message.length);
                verifier.update(abyte0.toByteArray());
                verifier.update(message);
            }
            lastTSIG = tsigrecord;
            return i;
        }
        if (tsigrecord != null)
        {
            message.getHeader().decCount(3);
        }
        byte abyte1[] = message.getHeader().toWire();
        if (tsigrecord != null)
        {
            message.getHeader().incCount(3);
        }
        verifier.update(abyte1);
        int j;
        if (tsigrecord == null)
        {
            j = abyte0.length - abyte1.length;
        } else
        {
            j = message.tsigstart - abyte1.length;
        }
        verifier.update(abyte0, abyte1.length, j);
        if (tsigrecord != null)
        {
            lastsigned = nresponses;
            lastTSIG = tsigrecord;
            if (!tsigrecord.getName().equals(TSIG.access$2(key)) || !tsigrecord.getAlgorithm().equals(TSIG.access$3(key)))
            {
                if (Options.check("verbose"))
                {
                    System.err.println("BADKEY failure");
                }
                message.tsigState = 4;
                return 17;
            }
        } else
        {
            boolean flag;
            if (nresponses - lastsigned >= 100)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                message.tsigState = 4;
                return 1;
            } else
            {
                message.tsigState = 2;
                return 0;
            }
        }
        message = new DNSOutput();
        long l = tsigrecord.getTimeSigned().getTime() / 1000L;
        message.writeU16((int)(l >> 32));
        message.writeU32(l & 0xffffffffL);
        message.writeU16(tsigrecord.getFudge());
        verifier.update(message.toByteArray());
        if (!verifier.verify(tsigrecord.getSignature()))
        {
            if (Options.check("verbose"))
            {
                System.err.println("BADSIG failure");
            }
            return 16;
        } else
        {
            verifier.clear();
            message = new DNSOutput();
            message.writeU16(tsigrecord.getSignature().length);
            verifier.update(message.toByteArray());
            verifier.update(tsigrecord.getSignature());
            return 0;
        }
    }

    public (TSIG tsig, TSIGRecord tsigrecord)
    {
        key = tsig;
        verifier = new HMAC(TSIG.access$0(key), TSIG.access$1(key));
        nresponses = 0;
        lastTSIG = tsigrecord;
    }
}
