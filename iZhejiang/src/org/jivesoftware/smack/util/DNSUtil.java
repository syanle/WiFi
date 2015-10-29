// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.util;

import java.util.Map;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.Name;
import org.xbill.DNS.SRVRecord;
import org.xbill.DNS.TextParseException;

// Referenced classes of package org.jivesoftware.smack.util:
//            Cache

public class DNSUtil
{
    public static class HostAddress
    {

        private String host;
        private int port;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (!(obj instanceof HostAddress))
                {
                    return false;
                }
                obj = (HostAddress)obj;
                if (!host.equals(((HostAddress) (obj)).host))
                {
                    return false;
                }
                if (port != ((HostAddress) (obj)).port)
                {
                    return false;
                }
            }
            return true;
        }

        public String getHost()
        {
            return host;
        }

        public int getPort()
        {
            return port;
        }

        public String toString()
        {
            return (new StringBuilder(String.valueOf(host))).append(":").append(port).toString();
        }

        private HostAddress(String s, int i)
        {
            host = s;
            port = i;
        }

        HostAddress(String s, int i, HostAddress hostaddress)
        {
            this(s, i);
        }
    }


    private static Map ccache = new Cache(100, 0x927c0L);
    private static Map scache = new Cache(100, 0x927c0L);

    public DNSUtil()
    {
    }

    private static HostAddress resolveSRV(String s)
    {
        String s3;
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int l1;
        int i2;
        SRVRecord srvrecord = null;
        Object obj = null;
        s3 = null;
        i = -1;
        j1 = 0x7fffffff;
        l1 = 0;
        String s1 = s3;
        byte byte0 = i;
        String s2 = srvrecord;
        byte byte1 = i;
        org.xbill.DNS.Record arecord[];
        int k1;
        try
        {
            arecord = (new Lookup(s, 33)).run();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = s2;
            i = byte1;
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = s1;
            i = byte0;
            break; /* Loop/switch isn't completed */
        }
        if (arecord == null)
        {
            return null;
        }
        s1 = s3;
        byte0 = i;
        s2 = srvrecord;
        byte1 = i;
        i2 = arecord.length;
        i1 = 0;
        s = obj;
          goto _L1
_L3:
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        srvrecord = (SRVRecord)arecord[i1];
        s3 = s;
        j = i;
        k = j1;
        l = l1;
        if (srvrecord == null)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        s3 = s;
        j = i;
        k = j1;
        l = l1;
        if (srvrecord.getTarget() == null)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        k1 = (int)((double)(srvrecord.getWeight() * srvrecord.getWeight()) * Math.random());
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        if (srvrecord.getPriority() >= j1)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        k = srvrecord.getPriority();
        l = k1;
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        s3 = srvrecord.getTarget().toString();
        s1 = s3;
        byte0 = i;
        s2 = s3;
        byte1 = i;
        j = srvrecord.getPort();
        break MISSING_BLOCK_LABEL_465;
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        s3 = s;
        j = i;
        k = j1;
        l = l1;
        if (srvrecord.getPriority() != j1)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        s3 = s;
        j = i;
        k = j1;
        l = l1;
        if (k1 <= l1)
        {
            break MISSING_BLOCK_LABEL_465;
        }
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        k = srvrecord.getPriority();
        l = k1;
        s1 = s;
        byte0 = i;
        s2 = s;
        byte1 = i;
        s3 = srvrecord.getTarget().toString();
        s1 = s3;
        byte0 = i;
        s2 = s3;
        byte1 = i;
        j = srvrecord.getPort();
        break MISSING_BLOCK_LABEL_465;
_L5:
        s1 = s;
        if (s.endsWith("."))
        {
            s1 = s.substring(0, s.length() - 1);
        }
        return new HostAddress(s1, i, null);
_L1:
        if (i1 < i2) goto _L3; else goto _L2
_L2:
        if (s != null) goto _L5; else goto _L4
_L4:
        return null;
        i1++;
        s = s3;
        i = j;
        j1 = k;
        l1 = l;
          goto _L1
    }

    public static HostAddress resolveXMPPDomain(String s)
    {
        obj = ccache;
        obj;
        JVM INSTR monitorenter ;
        HostAddress hostaddress;
        if (!ccache.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        hostaddress = (HostAddress)ccache.get(s);
        if (hostaddress == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        obj;
        JVM INSTR monitorexit ;
        return hostaddress;
        obj;
        JVM INSTR monitorexit ;
        Object obj1 = resolveSRV((new StringBuilder("_xmpp-client._tcp.")).append(s).toString());
        obj = obj1;
        if (obj1 == null)
        {
            obj = resolveSRV((new StringBuilder("_jabber._tcp.")).append(s).toString());
        }
        obj1 = obj;
        if (obj == null)
        {
            obj1 = new HostAddress(s, 5222, null);
        }
        synchronized (ccache)
        {
            ccache.put(s, obj1);
        }
        return ((HostAddress) (obj1));
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }

    public static HostAddress resolveXMPPServerDomain(String s)
    {
        obj = scache;
        obj;
        JVM INSTR monitorenter ;
        HostAddress hostaddress;
        if (!scache.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        hostaddress = (HostAddress)scache.get(s);
        if (hostaddress == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        obj;
        JVM INSTR monitorexit ;
        return hostaddress;
        obj;
        JVM INSTR monitorexit ;
        Object obj1 = resolveSRV((new StringBuilder("_xmpp-server._tcp.")).append(s).toString());
        obj = obj1;
        if (obj1 == null)
        {
            obj = resolveSRV((new StringBuilder("_jabber._tcp.")).append(s).toString());
        }
        obj1 = obj;
        if (obj == null)
        {
            obj1 = new HostAddress(s, 5269, null);
        }
        synchronized (scache)
        {
            scache.put(s, obj1);
        }
        return ((HostAddress) (obj1));
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }

}
