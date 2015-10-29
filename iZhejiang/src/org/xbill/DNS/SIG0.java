// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.security.PrivateKey;
import java.util.Date;

// Referenced classes of package org.xbill.DNS:
//            Options, DNSSEC, Message, Record, 
//            SIGRecord, KEYRecord

public class SIG0
{

    private static final short VALIDITY = 300;

    private SIG0()
    {
    }

    public static void signMessage(Message message, KEYRecord keyrecord, PrivateKey privatekey, SIGRecord sigrecord)
        throws DNSSEC.DNSSECException
    {
        int j = Options.intValue("sig0validity");
        int i = j;
        if (j < 0)
        {
            i = 300;
        }
        long l = System.currentTimeMillis();
        message.addRecord(DNSSEC.signMessage(message, sigrecord, keyrecord, privatekey, new Date(l), new Date((long)(i * 1000) + l)), 3);
    }

    public static void verifyMessage(Message message, byte abyte0[], KEYRecord keyrecord, SIGRecord sigrecord)
        throws DNSSEC.DNSSECException
    {
        SIGRecord sigrecord1;
        Record arecord[];
        int i;
        sigrecord1 = null;
        arecord = message.getSectionArray(3);
        i = 0;
_L3:
        if (i < arecord.length) goto _L2; else goto _L1
_L1:
        DNSSEC.verifyMessage(message, abyte0, sigrecord1, sigrecord, keyrecord);
        return;
_L5:
        i++;
          goto _L3
_L2:
        if (arecord[i].getType() != 24 || ((SIGRecord)arecord[i]).getTypeCovered() != 0) goto _L5; else goto _L4
_L4:
        sigrecord1 = (SIGRecord)arecord[i];
          goto _L1
    }
}
