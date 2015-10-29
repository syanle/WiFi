// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.util;

import junit.framework.TestCase;

// Referenced classes of package org.bouncycastle.util:
//            IPAddress

public class IPTest extends TestCase
{

    private static final String invalidIP4v[] = {
        "0.0.0.0.1", "256.255.255.255", "1", "A.B.C", "1:.4.6.5"
    };
    private static final String invalidIP6v[] = {
        "0.0.0.0:1", "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFFF"
    };
    private static final String validIP4v[] = {
        "0.0.0.0", "255.255.255.255", "192.168.0.0"
    };
    private static final String validIP6v[] = {
        "0:0:0:0:0:0:0:0", "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF", "0:1:2:3:FFFF:5:FFFF:1"
    };

    public IPTest()
    {
    }

    private void testIP(String as[], String as1[])
    {
        boolean flag = false;
        int i = 0;
        int j;
        do
        {
            j = ((flag) ? 1 : 0);
            if (i >= as.length)
            {
                break;
            }
            if (!IPAddress.isValid(as[i]))
            {
                fail((new StringBuilder()).append("Valid input string not accepted: ").append(as[i]).append(".").toString());
            }
            i++;
        } while (true);
        for (; j < as1.length; j++)
        {
            if (IPAddress.isValid(as1[j]))
            {
                fail((new StringBuilder()).append("Invalid input string accepted: ").append(as1[j]).append(".").toString());
            }
        }

    }

    public String getName()
    {
        return "IPTest";
    }

    public void testIPv4()
    {
        testIP(validIP4v, invalidIP4v);
    }

    public void testIPv6()
    {
        testIP(validIP6v, invalidIP6v);
    }

}
