// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.net.InetAddress;
import java.net.UnknownHostException;

// Referenced classes of package org.xbill.DNS:
//            Name, Address, TextParseException

public final class ReverseMap
{

    private static Name inaddr4 = Name.fromConstantString("in-addr.arpa.");
    private static Name inaddr6 = Name.fromConstantString("ip6.arpa.");

    private ReverseMap()
    {
    }

    public static Name fromAddress(String s)
        throws UnknownHostException
    {
        byte abyte1[] = Address.toByteArray(s, 1);
        byte abyte0[] = abyte1;
        if (abyte1 == null)
        {
            abyte0 = Address.toByteArray(s, 2);
        }
        if (abyte0 == null)
        {
            throw new UnknownHostException("Invalid IP address");
        } else
        {
            return fromAddress(abyte0);
        }
    }

    public static Name fromAddress(String s, int i)
        throws UnknownHostException
    {
        s = Address.toByteArray(s, i);
        if (s == null)
        {
            throw new UnknownHostException("Invalid IP address");
        } else
        {
            return fromAddress(((byte []) (s)));
        }
    }

    public static Name fromAddress(InetAddress inetaddress)
    {
        return fromAddress(inetaddress.getAddress());
    }

    public static Name fromAddress(byte abyte0[])
    {
        StringBuffer stringbuffer;
        if (abyte0.length != 4 && abyte0.length != 16)
        {
            throw new IllegalArgumentException("array must contain 4 or 16 elements");
        }
        stringbuffer = new StringBuffer();
        if (abyte0.length != 4) goto _L2; else goto _L1
_L1:
        int i = abyte0.length - 1;
_L11:
        if (i >= 0) goto _L4; else goto _L3
_L3:
        if (abyte0.length != 4) goto _L6; else goto _L5
_L5:
        abyte0 = Name.fromString(stringbuffer.toString(), inaddr4);
        return abyte0;
_L4:
        stringbuffer.append(abyte0[i] & 0xff);
        if (i > 0)
        {
            stringbuffer.append(".");
        }
        i--;
        continue; /* Loop/switch isn't completed */
_L2:
        int ai[];
        ai = new int[2];
        i = abyte0.length - 1;
_L8:
        if (i < 0) goto _L3; else goto _L7
_L7:
        int j;
        ai[0] = (abyte0[i] & 0xff) >> 4;
        ai[1] = abyte0[i] & 0xff & 0xf;
        j = ai.length - 1;
_L9:
label0:
        {
            if (j >= 0)
            {
                break label0;
            }
            i--;
        }
          goto _L8
          goto _L3
        stringbuffer.append(Integer.toHexString(ai[j]));
        if (i > 0 || j > 0)
        {
            stringbuffer.append(".");
        }
        j--;
          goto _L9
_L6:
        abyte0 = Name.fromString(stringbuffer.toString(), inaddr6);
        return abyte0;
        abyte0;
        throw new IllegalStateException("name cannot be invalid");
        if (true) goto _L11; else goto _L10
_L10:
    }

    public static Name fromAddress(int ai[])
    {
        byte abyte0[] = new byte[ai.length];
        int i = 0;
        do
        {
            if (i >= ai.length)
            {
                return fromAddress(abyte0);
            }
            if (ai[i] < 0 || ai[i] > 255)
            {
                throw new IllegalArgumentException("array must contain values between 0 and 255");
            }
            abyte0[i] = (byte)ai[i];
            i++;
        } while (true);
    }

}
