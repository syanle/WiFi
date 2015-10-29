// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.net.InetAddress;
import org.xbill.DNS.utils.base16;

// Referenced classes of package org.xbill.DNS:
//            APLRecord, Address

public static class <init>
{

    public final Object address;
    public final int family;
    public final boolean negative;
    public final int prefixLength;

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof <init>))
        {
            if (family == ((family) (obj = (family)obj)).family && negative == ((negative) (obj)).negative && prefixLength == ((prefixLength) (obj)).prefixLength && address.equals(((address) (obj)).address))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        int j = address.hashCode();
        int k = prefixLength;
        int i;
        if (negative)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return i + (k + j);
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (negative)
        {
            stringbuffer.append("!");
        }
        stringbuffer.append(family);
        stringbuffer.append(":");
        if (family == 1 || family == 2)
        {
            stringbuffer.append(((InetAddress)address).getHostAddress());
        } else
        {
            stringbuffer.append(base16.toString((byte[])address));
        }
        stringbuffer.append("/");
        stringbuffer.append(prefixLength);
        return stringbuffer.toString();
    }

    private on(int i, boolean flag, Object obj, int j)
    {
        family = i;
        negative = flag;
        address = obj;
        prefixLength = j;
        if (!APLRecord.access$0(i, j))
        {
            throw new IllegalArgumentException("invalid prefix length");
        } else
        {
            return;
        }
    }

    on(int i, boolean flag, Object obj, int j, on on)
    {
        this(i, flag, obj, j);
    }

    public <init>(boolean flag, InetAddress inetaddress, int i)
    {
        this(Address.familyOf(inetaddress), flag, inetaddress, i);
    }
}
