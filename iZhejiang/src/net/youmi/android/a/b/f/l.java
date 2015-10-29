// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;

// Referenced classes of package net.youmi.android.a.b.f:
//            k, g, m

public class l
{

    private static String d = "localhost";
    private static int e = 0;
    private InetSocketAddress a;
    private InetSocketAddress b;
    private long c;

    public l()
    {
        this(null);
    }

    public l(String s)
    {
        String s1;
        c = 10000L;
        s1 = s;
        if (s == null)
        {
            s = k.b().a();
            s1 = s;
            if (s == null)
            {
                s1 = d;
            }
        }
        if (!s1.equals("0"))
        {
            break MISSING_BLOCK_LABEL_62;
        }
        s = InetAddress.getLocalHost();
_L2:
        a = new InetSocketAddress(s, 53);
        return;
        s = InetAddress.getByName(s1);
        if (true) goto _L2; else goto _L1
_L1:
        s;
        s = k.b().a();
        if (!s.equals("0"))
        {
            break MISSING_BLOCK_LABEL_106;
        }
        s = InetAddress.getLocalHost();
_L3:
        a = new InetSocketAddress(s, 53);
        return;
        try
        {
            s = InetAddress.getByName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
          goto _L3
    }

    private g a(byte abyte0[])
    {
        return new g(abyte0);
    }

    private int b(g g1)
    {
        return 512;
    }

    public g a(g g1)
    {
        Object obj;
        System.err.println((new StringBuilder()).append("Sending to ").append(a.getAddress().getHostAddress()).append(":").append(a.getPort()).toString());
        byte abyte0[] = g1.b();
        int i = b(g1);
        long l1 = System.currentTimeMillis();
        long l2 = c;
        try
        {
            obj = m.a(b, a, abyte0, i, l2 + l1);
            if (obj.length < 12)
            {
                throw new IOException("invalid DNS header - too short");
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((IOException) (obj)).printStackTrace();
            return g1;
        }
        obj = a(((byte []) (obj)));
        return ((g) (obj));
    }

}
