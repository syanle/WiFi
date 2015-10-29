// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.spi;

import java.io.PrintStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import org.xbill.DNS.AAAARecord;
import org.xbill.DNS.ARecord;
import org.xbill.DNS.ExtendedResolver;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.Name;
import org.xbill.DNS.PTRRecord;
import org.xbill.DNS.ReverseMap;
import org.xbill.DNS.TextParseException;

public class DNSJavaNameService
    implements InvocationHandler
{

    private static final String domainProperty = "sun.net.spi.nameservice.domain";
    private static final String nsProperty = "sun.net.spi.nameservice.nameservers";
    private static final String v6Property = "java.net.preferIPv6Addresses";
    private boolean preferV6;

    protected DNSJavaNameService()
    {
        String s;
        String s1;
        Object obj;
        preferV6 = false;
        obj = System.getProperty("sun.net.spi.nameservice.nameservers");
        s1 = System.getProperty("sun.net.spi.nameservice.domain");
        s = System.getProperty("java.net.preferIPv6Addresses");
        if (obj == null) goto _L2; else goto _L1
_L1:
        String as[];
        int i;
        obj = new StringTokenizer(((String) (obj)), ",");
        as = new String[((StringTokenizer) (obj)).countTokens()];
        i = 0;
_L6:
        if (((StringTokenizer) (obj)).hasMoreTokens()) goto _L4; else goto _L3
_L3:
        try
        {
            Lookup.setDefaultResolver(new ExtendedResolver(as));
        }
        catch (UnknownHostException unknownhostexception)
        {
            System.err.println("DNSJavaNameService: invalid sun.net.spi.nameservice.nameservers");
        }
_L2:
        if (s1 != null)
        {
            try
            {
                Lookup.setDefaultSearchPath(new String[] {
                    s1
                });
            }
            catch (TextParseException textparseexception)
            {
                System.err.println("DNSJavaNameService: invalid sun.net.spi.nameservice.domain");
            }
        }
        if (s != null && s.equalsIgnoreCase("true"))
        {
            preferV6 = true;
        }
        return;
_L4:
        as[i] = ((StringTokenizer) (obj)).nextToken();
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String getHostByAddr(byte abyte0[])
        throws UnknownHostException
    {
        abyte0 = (new Lookup(ReverseMap.fromAddress(InetAddress.getByAddress(abyte0)), 12)).run();
        if (abyte0 == null)
        {
            throw new UnknownHostException();
        } else
        {
            return ((PTRRecord)abyte0[0]).getTarget().toString();
        }
    }

    public Object invoke(Object obj, Method method, Object aobj[])
        throws Throwable
    {
        if (method.getName().equals("getHostByAddr"))
        {
            return getHostByAddr((byte[])aobj[0]);
        }
        if (!method.getName().equals("lookupAllHostAddr")) goto _L2; else goto _L1
_L1:
        obj = lookupAllHostAddr((String)aobj[0]);
        method = method.getReturnType();
        if (method.equals([Ljava/net/InetAddress;)) goto _L4; else goto _L3
_L3:
        if (!method.equals([[B)) goto _L2; else goto _L5
_L5:
        int j;
        j = obj.length;
        method = new byte[j][];
        int i = 0;
          goto _L6
_L8:
        try
        {
            method[i] = obj[i].getAddress();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            System.err.println("DNSJavaNameService: Unexpected error.");
            ((Throwable) (obj)).printStackTrace();
            throw obj;
        }
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        throw new IllegalArgumentException("Unknown function name or arguments.");
_L4:
        return obj;
_L6:
        if (i < j) goto _L8; else goto _L7
_L7:
        return method;
    }

    public InetAddress[] lookupAllHostAddr(String s)
        throws UnknownHostException
    {
        org.xbill.DNS.Record arecord[];
        org.xbill.DNS.Record arecord1[];
        Name name;
        try
        {
            name = new Name(s);
        }
        catch (TextParseException textparseexception)
        {
            throw new UnknownHostException(s);
        }
        arecord1 = null;
        if (preferV6)
        {
            arecord1 = (new Lookup(name, 28)).run();
        }
        arecord = arecord1;
        if (arecord1 == null)
        {
            arecord = (new Lookup(name, 1)).run();
        }
        arecord1 = arecord;
        if (arecord == null)
        {
            arecord1 = arecord;
            if (!preferV6)
            {
                arecord1 = (new Lookup(name, 28)).run();
            }
        }
        if (arecord1 == null)
        {
            throw new UnknownHostException(s);
        }
        s = new InetAddress[arecord1.length];
        int i = 0;
        do
        {
            if (i >= arecord1.length)
            {
                return s;
            }
            org.xbill.DNS.Record record = arecord1[i];
            if (arecord1[i] instanceof ARecord)
            {
                s[i] = ((ARecord)arecord1[i]).getAddress();
            } else
            {
                s[i] = ((AAAARecord)arecord1[i]).getAddress();
            }
            i++;
        } while (true);
    }
}
